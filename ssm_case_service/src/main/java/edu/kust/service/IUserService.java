package edu.kust.service;

import edu.kust.domain.Role;
import edu.kust.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService{
    List<UserInfo> findAll() throws Exception;

    void save(UserInfo userInfo);

    UserInfo findById(int userId);

    List<Role> findOtherRoles(Integer id);

    void addRoleToUser(Integer userId, Integer[] ids);

    UserInfo findByUsername(String username);
}
