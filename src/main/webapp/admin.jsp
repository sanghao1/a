


<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> adimin</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Quản lý sinh viên đăng ký </h2>
					</div>
					
                </div>
            </div>
            
				<style>table, th, td {border: 1px solid black;}
				</style>
			
            <table style="width: 100%" class="table table-striped table-hover">
                <thead>
                    <tr>
						
                        <th>Tên học sinh</th>
						<th>Giới tính</th>
						<th>Ngày sinh</th>
						<th>Dân tộc</th>
						<th>CCCD/CMND</th>
						<th>SDT</th>
						<th>Chỗ ở hiện tại</th>
						<th>Trường THPT</th>
						<th>Năm tốt nghiệp THPT</th>
						<th>Lop 12</th>
						<th>NV1</th>
						<th>HCS1</th>
						<th>NV2</th>
												<th>HCS2</th>
						
						<th>NV3</th>
												<th>HCS3</th>
						
						<th>Nơi sinh</th> 
						 <th>Quyền chỉnh sửa </th> 
                          
                    </tr>
                </thead>
                <tbody>
                   
						
                 
      
                  <c:forEach items="${ProductList}" var="userStudent">
                
					<tr>
								<td>${userStudent.fullname}</td>
								<td>${userStudent.gender}</td>
								<td>${userStudent.brithday}</td>
								<td>${userStudent.dantoc}</td>
								<td>${userStudent.cccd}</td>
								<td>${userStudent.phone}</td>
								<td>${userStudent.here}</td>
								<td>${userStudent.thpt}</td>
								<td>${userStudent.graduation}</td>
								<td>${userStudent.nameclass12}</td>
								<td>${userStudent.nv1}</td>
																<td>${userStudent.he1}</td>
								
								<td>${userStudent.nv2}</td>
																<td>${userStudent.he2}</td>
								
								<td>${userStudent.nv3}</td>
																<td>${userStudent.he3}</td>
								
								<td>${userStudent.borth}</td>
								
                        
                        
                        
                        
                        <td>
                            <a href="edit-p?id=${userStudent.id}"  data-toggle="modal">
                           
                           <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        
                            <a href="DeleteController?id=${userStudent.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                         </td>
                        
                        	
                    </tr> 
                    
                    </c:forEach>
                </tbody>
            </table>
			<div class="clearfix">
                <div class="hint-text">Showing <b>1</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>

</body>


</html>