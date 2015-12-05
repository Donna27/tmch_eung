package com.mycompany.tmch.job;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

public class ScheduledJob extends QuartzJobBean{

	private JobEmail jobemail;
	
	@Override
	protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {
		jobemail.printMessage();
		
	}

	public void setJobemail(JobEmail jobemail) {
		this.jobemail = jobemail;
	}

}
