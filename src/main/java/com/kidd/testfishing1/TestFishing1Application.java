package com.kidd.testfishing1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class TestFishing1Application {

	public static void main(String[] args) {
		SpringApplication.run(TestFishing1Application.class, args);
	}

}
