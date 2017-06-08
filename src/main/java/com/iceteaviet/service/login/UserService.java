package com.iceteaviet.service.login;

import com.iceteaviet.model.User;

/**
 * Created by Genius Doan on 6/7/2017.
 */
public interface UserService {

    User findByUserName(String username);

}
