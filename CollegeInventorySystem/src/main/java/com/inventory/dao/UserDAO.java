package com.inventory.dao;

import com.inventory.model.User;
import com.inventory.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class UserDAO {
    public User validateUser(String username, String password) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query<User> query = session.createQuery("FROM User WHERE username = :u AND password = :p", User.class);
            query.setParameter("u", username);
            query.setParameter("p", password);
            return query.uniqueResult();
        }
    }
}