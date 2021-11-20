package edu.kust.service.impl;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

/**
 * 用户类扩展，将id存入session
 * @author sillycat
 */
public class CustomerUserDetails extends User {
    private static final long serialVersionUID = -25559580612205393L;
    private Integer id;

    public CustomerUserDetails(Integer id,String username, String password,
                               boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired,
                               boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.id = id;
    }

    public Integer getId() {
        return this.id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
}
