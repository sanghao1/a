package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import config.Connect;
import model.UserStudent;


public class UserStudentservice {
	
	
	public static void AddStudent(UserStudent userstudent) {
		try {
			Connection conn = Connect.openConnect();
			PreparedStatement statement = conn.prepareStatement(
					"INSERT INTO student (`fullname`, `gender`, `brithday`, `dantoc`, `cccd`, `phone`, `here`, `thpt`, `graduation`, `nameclass12`, `nv1`, `he1`, `nv2`,`he2`, `nv3`,`he3` , `borth`) "
					+ "VALUES (?, ?, ? , ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			statement.setString(1, userstudent.getFullname());
			statement.setString(2, userstudent.getGender());
			statement.setString(3, userstudent.getBrithday());
			
			statement.setString(4, userstudent.getDantoc());
			statement.setString(5, userstudent.getCccd());
			statement.setString(6, userstudent.getPhone());
			
			statement.setString(7, userstudent.getHere());
			statement.setString(8, userstudent.getThpt());
			statement.setString(9, userstudent.getGraduation());
			
			statement.setString(10, userstudent.getNameclass12());
			statement.setString(11, userstudent.getNv1());
			statement.setString(12, userstudent.getHe1());

			statement.setString(13, userstudent.getNv2());
			statement.setString(14, userstudent.getHe2());

			statement.setString(15, userstudent.getNv3());
			statement.setString(16, userstudent.getHe3());

			statement.setString(17, userstudent.getBorth());
			
			statement.execute();
			
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	public static 	ArrayList<UserStudent> finalAllStudent() {
		ArrayList<UserStudent> productList = new ArrayList<UserStudent>();

		try {
			Connection conn = Connect.openConnect();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select `id`, `fullname`, `gender`, `brithday`, `dantoc`, `cccd`, `phone`, `here`, `thpt`, `graduation`, `nameclass12`, `nv1`, `he1`, `nv2`, `he2`,`nv3`, `he3`, `borth` from student");
			while (rs.next()) {
				UserStudent userStudent = new UserStudent();
				userStudent.setId(rs.getInt("id"));
				userStudent.setFullname(rs.getString("fullname"));
				userStudent.setGender(rs.getString("gender"));
				userStudent.setBrithday(rs.getString("brithday"));
				userStudent.setDantoc(rs.getString("dantoc"));
				userStudent.setCccd(rs.getString("cccd"));
				userStudent.setPhone(rs.getString("phone"));
				userStudent.setHere(rs.getString("here"));
				userStudent.setThpt(rs.getString("thpt"));
				userStudent.setGraduation(rs.getString("graduation"));
				userStudent.setNameclass12(rs.getString("nameclass12"));
				userStudent.setNv1(rs.getString("nv1"));
				userStudent.setHe1(rs.getString("he1"));

				userStudent.setNv2(rs.getString("nv2"));
				
				userStudent.setHe2(rs.getString("he2"));

				userStudent.setNv3(rs.getString("nv3"));
				userStudent.setHe3(rs.getString("he3"));

				userStudent.setBorth(rs.getString("borth"));
//				
				
				productList.add(userStudent);
			}
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
	return productList;

	}
	
	
	

public static void updatestudent(UserStudent userStudent) {
	
	
		
		
		try {
			Connection conn = Connect.openConnect();
			//System.out.println(product.getId());
			PreparedStatement statement = conn.prepareStatement("update student set fullname =? ,gender=? ,brithday=? ,dantoc=? ,cccd=? ,phone=? ,here=?,thpt=? ,graduation=? ,nameclass12=? ,nv1=? ,nv2=? ,nv3=? ,borth=?  where id =" + 1  );
			
			statement.setString(1,userStudent.getFullname());
			statement.setString(2,userStudent.getGender());
			
			statement.setString(3,userStudent.getBrithday());
			statement.setString(4,userStudent.getDantoc());
			
			
			statement.setString(5,userStudent.getCccd());
			statement.setString(6,userStudent.getPhone());
			
			statement.setString(7,userStudent.getHere());
			statement.setString(8,userStudent.getThpt());
			
			
			
			statement.setString(9,userStudent.getGraduation());
			statement.setString(10,userStudent.getNameclass12());
			statement.setString(11,userStudent.getNv1());
			statement.setString(12,userStudent.getNv2());
			
			statement.setString(13,userStudent.getNv3());
			statement.setString(14,userStudent.getBorth());
			
			statement.executeUpdate();
			
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}


public static UserStudent findById(int id) {
	UserStudent userStudent = new UserStudent();
	
	try {
		Connection conn = Connect.openConnect();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select `id`, `fullname`, `gender`, `brithday`, `dantoc`, `cccd`, `phone`, `here`, `thpt`, `graduation`, `nameclass12`, `nv1`, `nv2`, `nv3` , `borth` from student"
				+ " where id = " + id);
		if (rs.next()) {
			userStudent.setId(rs.getInt("id"));
			userStudent.setFullname(rs.getString("fullname"));
			userStudent.setGender(rs.getString("gender"));
			userStudent.setBrithday(rs.getString("brithday"));
			userStudent.setDantoc(rs.getString("dantoc"));
			userStudent.setCccd(rs.getString("cccd"));
			userStudent.setPhone(rs.getString("phone"));
			userStudent.setHere(rs.getString("here"));
			userStudent.setThpt(rs.getString("thpt"));
			userStudent.setGraduation(rs.getString("graduation"));
			userStudent.setNameclass12(rs.getString("nameclass12"));
			userStudent.setNv1(rs.getString("nv1"));
			userStudent.setNv2(rs.getString("nv2"));
			userStudent.setNv3(rs.getString("nv3"));
			userStudent.setBorth(rs.getString("borth"));
		}
		conn.close();
	} catch (Exception ex) {
		ex.printStackTrace();
	}
	
	return userStudent;

}

	

}
