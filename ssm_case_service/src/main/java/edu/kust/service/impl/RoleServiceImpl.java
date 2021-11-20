package edu.kust.service.impl;

import edu.kust.dao.IRoleDao;
import edu.kust.domain.Permission;
import edu.kust.domain.Role;
import edu.kust.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("roleService")
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private IRoleDao roleDao;

    @Override
    public List<Role> findAll() {
        return roleDao.findAll();
    }

    @Override
    public void save(Role role) {
        roleDao.save(role);
    }

    @Override
    public Role findById(Integer id) {
        return roleDao.findById(id);
    }

    @Override
    public List<Permission> findOtherPermissions(Integer id) {
        return roleDao.findOtherPermissions(id);
    }

    @Override
    public void addPermissionToRole(Integer roleId, Integer[] ids) {
        for (Integer id : ids) {
            roleDao.addPermissionToRole(roleId,id);
        }
    }
}
