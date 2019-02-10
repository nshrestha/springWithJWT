package com.smriti.service;

import com.smriti.entities.User;
import com.smriti.exceptionHandler.NoContentFoundException;
import com.smriti.repository.UserRepository;
import com.smriti.requestDTO.UserDTO;
import com.smriti.utility.MapperUtility;
import com.smriti.utility.UserQueryCreator;
import com.smriti.utility.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

@Service
@Transactional("transactionManager")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EntityManager entityManager;

    @Override
    public void saveUser(UserDTO userDTO) {
        User user = MapperUtility.map(userDTO, User.class);
        user.setPassword(BCrypt.hashpw(userDTO.getPassword(), BCrypt.gensalt()));
        userRepository.save(user);
    }

    @Override
    public List<UserDTO> fetchAllUsers() {
        Query query = entityManager.createNativeQuery
                (UserQueryCreator.createQueryToFetchAllUsers());
        List<Object[]> results = query.getResultList();

        if (results.size() < 0)
            throw new NoContentFoundException("No records found", "No records found");

        return UserUtils.convertToUserResponse(results);
    }
}
