package com.example.jpa.Config;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import com.example.jpa.Entity.Category;  // Assuming Category is an entity class

public class Test {

    public static void main(String[] args) {

        EntityManager enma = JPAConfig.getEntityManager();
        // Check if the EntityManager is open
        if (!enma.isOpen()) {
            System.out.println("EntityManager is closed!");
            return;
        }

        EntityTransaction trans = enma.getTransaction();

        try {
            trans.begin();

            // Simulate a database operation (e.g., persisting a new Category entity)
            Category category = new Category();
            category.setCategoryname("Electronics");  // Assuming 'name' is a field in Category entity

            enma.persist(category);  // Perform the operation

            trans.commit();  // Commit the transaction after the operation
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();  // Rollback the transaction in case of an error
            throw e;
        } finally {
            enma.close();  // Ensure the EntityManager is closed
        }
    }
}
