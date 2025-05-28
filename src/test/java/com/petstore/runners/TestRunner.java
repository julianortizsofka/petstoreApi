package com.petstore.runners;


import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:com/petstore/features/user.feature").relativeTo(getClass());
    }


}