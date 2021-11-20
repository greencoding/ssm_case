package edu.kust.service;

import edu.kust.domain.Permission;
import edu.kust.domain.Role;

import java.util.List;

public interface IRoleService {
    List<Role> findAll();

    void save(Role role);

    Role findById(Integer id);

    List<Permission> findOtherPermissions(Integer id);

    void addPermissionToRole(Integer roleId, Integer[] ids);
}
