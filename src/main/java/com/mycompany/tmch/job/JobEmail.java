package com.mycompany.tmch.job;

import org.springframework.stereotype.Component;

@Component("JobEmail")
public class JobEmail {
	 public void printMessage() {
	        System.out.println("I am called by MethodInvokingJobDetailFactoryBean using SimpleTriggerFactoryBean");
	    }
}
