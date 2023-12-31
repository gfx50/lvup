package com.gs.levelup.schedule.model.vo;

import java.sql.Date;

public class Schedule {
	private String scheduleId;
	private String employeeId;
	private String departmentId;
	private String teamId;
	private String rankId;
	private Date scheduleStartday;
	private Date scheduleEndday;
	private String scheduleType;
	private String scheduleAddress;
	private String scheduleTheme;
	private String scheduleContent;
	
	public Schedule() {}

	public Schedule(String scheduleId, String employeeId, String departmentId, String teamId, String rankId,
			Date scheduleStartday, Date scheduleEndday, String scheduleType, String scheduleAddress,
			String scheduleTheme, String scheduleContent) {
		super();
		this.scheduleId = scheduleId;
		this.employeeId = employeeId;
		this.departmentId = departmentId;
		this.teamId = teamId;
		this.rankId = rankId;
		this.scheduleStartday = scheduleStartday;
		this.scheduleEndday = scheduleEndday;
		this.scheduleType = scheduleType;
		this.scheduleAddress = scheduleAddress;
		this.scheduleTheme = scheduleTheme;
		this.scheduleContent = scheduleContent;
	}

	public String getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}

	public String getRankId() {
		return rankId;
	}

	public void setRankId(String rankId) {
		this.rankId = rankId;
	}

	public Date getScheduleStartday() {
		return scheduleStartday;
	}

	public void setScheduleStartday(Date scheduleStartday) {
		this.scheduleStartday = scheduleStartday;
	}

	public Date getScheduleEndday() {
		return scheduleEndday;
	}

	public void setScheduleEndday(Date scheduleEndday) {
		this.scheduleEndday = scheduleEndday;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public String getScheduleAddress() {
		return scheduleAddress;
	}

	public void setScheduleAddress(String scheduleAddress) {
		this.scheduleAddress = scheduleAddress;
	}

	public String getScheduleTheme() {
		return scheduleTheme;
	}

	public void setScheduleTheme(String scheduleTheme) {
		this.scheduleTheme = scheduleTheme;
	}

	public String getScheduleContent() {
		return scheduleContent;
	}

	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}

	@Override
	public String toString() {
		return "Schedule [scheduleId=" + scheduleId + ", employeeId=" + employeeId + ", departmentId=" + departmentId
				+ ", teamId=" + teamId + ", rankId=" + rankId + ", scheduleStartday=" + scheduleStartday
				+ ", scheduleEndday=" + scheduleEndday + ", scheduleType=" + scheduleType + ", scheduleAddress="
				+ scheduleAddress + ", scheduleTheme=" + scheduleTheme + ", scheduleContent=" + scheduleContent + "]";
	}
	
	
	
	
}
