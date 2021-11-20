package edu.kust.controller;

import edu.kust.domain.SysLog;
import edu.kust.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.security.Security;
import java.util.Date;

@Component
@Aspect
public class LogAop {

    @Autowired
    private ISysLogService sysLogService;

    @Autowired
    private HttpServletRequest request;

    private Date visitTime;

    private Class aClass;

    private Method method;


    //前置通知  //用JoinPoint连接点获取执行的开始时间 执行的类 执行的方法
    @Before("execution(* edu.kust.controller.*.*(..))")
    public void doBefore(JoinPoint joinPoint) throws NoSuchMethodException {

        visitTime = new Date();

        aClass = joinPoint.getTarget().getClass();//获取访问的类

        String methodName = joinPoint.getSignature().getName(); //获取方法的名称

        Object[] args = joinPoint.getArgs();

        if (args == null || args.length == 0) method = aClass.getMethod(methodName); //获取无参方法的对象
        else {
            Class[] classes = new Class[args.length];
            for (int i = 0; i < classes.length; i++) {
                classes[i] = args[i].getClass();
            }
            method = aClass.getMethod(methodName,classes); // 获取有参方法的对象
        }
    }


    //后置通知
    @After("execution(* edu.kust.controller.*.*(..)) && !execution(* edu.kust.controller.UserController.*(..))")
    public void doAfter(JoinPoint joinPoint){

        Long time = new Date().getTime() - visitTime.getTime();

        String url = ""; // 它的值应该是类上的@RequestMapping的value+方法上的@RequestMapping的value

        if (aClass != null && method != null && aClass != LogAop.class){
            RequestMapping classAnnotation = (RequestMapping) aClass.getAnnotation(RequestMapping.class);
            if (classAnnotation != null){
                String[] classValue = classAnnotation.value();

                //获取方法上的value值
                RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);

                if (methodAnnotation != null){
                    String[] methodValue = methodAnnotation.value();

                    url = classValue[0] + methodValue[0];

                    //获取访问的ip地址
                    String ip = request.getRemoteAddr();

                    //获取访问的操作者
                    SecurityContext context = SecurityContextHolder.getContext(); //从上下文获取当前登录的用户
                    User user = (User) context.getAuthentication().getPrincipal();
                    String username = user.getUsername();

                    //将日志信息封装到SysLog对象中
                    if (!aClass.getName().equalsIgnoreCase("edu.kust.controller.SysLogController")) {
                        SysLog sysLog = new SysLog();
                        sysLog.setIp(ip);
                        sysLog.setExecutionTime(time);
                        sysLog.setMethod("[类名] " + aClass.getName() + "[方法名] " + method.getName());
                        sysLog.setUrl(url);
                        sysLog.setVisitTime(visitTime);
                        sysLog.setUsername(username);
                        //插入数据库
                        // 调用Service，调用dao将sysLog insert数据库
                        sysLogService.save(sysLog);
                    }

                }
            }
        }

    }
}
