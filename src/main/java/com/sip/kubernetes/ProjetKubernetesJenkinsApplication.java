package com.sip.kubernetes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@CrossOrigin("*")
@SpringBootApplication
public class ProjetKubernetesJenkinsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjetKubernetesJenkinsApplication.class, args);
	}
@GetMapping(value="/kube")
public String getKube()
{
	return "Hello Kube";
}
}
