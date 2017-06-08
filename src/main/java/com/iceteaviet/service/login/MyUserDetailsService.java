package com.iceteaviet.service.login;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Genius Doan on 6/5/2017.
 */
public class MyUserDetailsService implements UserDetailsService {

    public static com.iceteaviet.model.User currentUser;

    private com.iceteaviet.service.login.UserService userDao;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        com.iceteaviet.model.User user = userDao.findByUserName(username);
        currentUser = user;
        List<GrantedAuthority> authorities = buildUserAuthority(user.getUserRole());


        System.out.println("user.getUserRole(): " + user.getUserRole().iterator().next().getRole());
        return buildUserForAuthentication(user, authorities);
    }

    // Converts com.mkyong.users.model.User user to
    // org.springframework.security.core.userdetails.User
    private User buildUserForAuthentication(com.iceteaviet.model.User user,
                                            List<GrantedAuthority> authorities) {
        return new User(user.getUsername(),
                user.getPassword(), user.isEnabled(),
                true, true, true, authorities);
    }

    private List<GrantedAuthority> buildUserAuthority(Set<com.iceteaviet.model.UserRole> userRoles) {

        Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

        // Build user's authorities
        for (com.iceteaviet.model.UserRole userRole : userRoles) {
            setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
        }

        List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

        return Result;
    }

    public com.iceteaviet.service.login.UserService getUserDao() {
        return userDao;
    }

    public void setUserDao(com.iceteaviet.service.login.UserService userDao) {
        this.userDao = userDao;
    }


}
