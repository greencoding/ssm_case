package edu.kust.dao;


import edu.kust.domain.Permission;
import edu.kust.domain.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IPermissionDao {

   @Select("select * from permission where id in (select permissionId from role_permission where roleId=#{roleId})")
   List<Permission> findPermissionByRoleId(Integer roleId);

   @Select("select * from permission")
   List<Permission> findAll();

   @Insert("insert into permission(permissionName,url) values (#{permissionName},#{url})")
   void save(Permission permission);

}
