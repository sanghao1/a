<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stype.css">

<meta charset="UTF-8">
<title>Đăng ký Cao Đẳng Nghề Việt - Đức</title>
</head>
<body>
	<form action=edit-p method="post">
		<div class="content-body">
			<div class="card-content collpase show">
				<div class="card-body">
					<div class="card-text">
						<p>
							<b>Thí sinh điền các thông tin cần thiết sau</b><span
								class="style">(*)</span>
						</p>
					</div>
					<div class="form-body">
						<h4 class="form-section">1.Thông tin thí sinh:</h4>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group row">
									<label value="" class="col-sm-2 label-control"  for="userinput1">Họ
										và tên:<span class="style1">*</span>
									</label>
									<div class="col-sm-7">
										<input name="fullname" type="text" id="MainContent_txtho"
											class="form-control border-primary" value = "${product.fullname}" 
											placeholder="Họ và tên" required>
									</div>
									<div class="col-sm-3">
										<select name="gender" id="MainContent_idmale"
											class="form-control border-primary">
											<option value="">${product.gender}</option>
											<option value="chon">chọn</option>
											<option value="Nam">Nam</option>
											<option value="Nữ">Nữ</option>

										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group row">
									<label class="col-sm-2 label-control" for="userinput3">Ngày
										sinh:<span class="style1">*</span>
									</label>
									<div class="col-sm-2">

										<input type="text" id="start" name="brithday"
											id="MainContent_idday" class="form-control border-primary"
											 min="1900-01-01" max="2022-12-31" value="${product.brithday}" required>

									</div>
									<label class="col-sm-1 label-control" for="userinput1">
										Dân tộc:<span class="style1">*</span>
									</label>
									<div class="col-sm-2">
										<input name="dantoc" value="${product.dantoc}" type="text" id="MainContent_txtdantoc"
											class="form-control border-primary">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group row">
									<label class="col-sm-4 label-control" for="userinput1">CMND/CCCD:<span
										class="style1">*</span></label>
									<div class="col-sm-8">
										<input name="cccd" type="text"value="${product.cccd}" id="MainContent_txtcmnd"
											class="form-control border-primary" required>
									</div>


								</div>
							</div>

							<label class="col-sm-1 label-control" for="userinput1">SDT
								:<span class="style1">*</span>
							</label>
							<div class="col-sm-2">
								<input name="phone" type="text" value="${product.phone}" id="MainContent_txtcmnd"
									class="form-control border-primary" required>
							</div>





							<div class="col-sm-12">
								<div class="form-group row">
									<label class="col-sm-2 label-control" for="userinput1">Nơi
										sinh:<span class="style1">*</span>
									</label>
									<div class="col-sm-8">
								
										<select name="borth" id="MainContent_idtinh"
											class="form-control border-primary">
											
											<option value="${product.borth}">${product.borth}</option>
										<option value="An Giang">An Giang</option>
											<option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
											<option value="Bắc Giang">Bắc Giang</option>
											<option value="Bắc Kạn">Bắc Kạn</option>
											<option value="Bạc Liêu">Bạc Liêu</option>
											<option value="Bắc Ninh">Bắc Ninh</option>
											<option value="Bến Tre">Bến Tre</option>
											<option value="Bình Định">Bình Định</option>
											<option value="Bình Dương">Bình Dương</option>
											<option value="Bình Phước">Bình Phước</option>
											<option value="Bình Thuận">Bình Thuận</option>
											<option value="Cà Mau">Cà Mau</option>
											<option value="Cần Thơ">Cần Thơ</option>
											<option value="Cao Bằng">Cao Bằng</option>
											<option value="Đà Nẵng">Đà Nẵng</option>
											<option value="Đắk Lắk">Đắk Lắk</option>
											<option value="Đăk Nông">Đăk Nông</option>
											<option value="Điện Biên">Điện Biên</option>
											<option value="Đồng Nai">Đồng Nai</option>
											<option value="Đồng Tháp">Đồng Tháp</option>
											<option value="Gia Lai">Gia Lai</option>
											<option value="Hà Giang">Hà Giang</option>
											<option value="Hà Nam">Hà Nam</option>
											<option value="Hà Nội">Hà Nội</option>
											<option value="Hà Tĩnh">Hà Tĩnh</option>
											<option value="Hải Dương">Hải Dương</option>
											<option value="Hải Phòng">Hải Phòng</option>
											<option value="Hậu Giang">Hậu Giang</option>
											<option value="Hoà Bình">Hoà Bình</option>
											<option value="Hưng Yên">Hưng Yên</option>
											<option value="Khánh Hoà">Khánh Hoà</option>
											<option value="Kiên Giang">Kiên Giang</option>
											<option value="Kon Tum">Kon Tum</option>
											<option value="Lai Châu">Lai Châu</option>
											<option value="Lâm Đồng">Lâm Đồng</option>
											<option value="Lạng Sơn">Lạng Sơn</option>
											<option value="Lào Cai">Lào Cai</option>
											<option value="Long An">Long An</option>
											<option value="Nam Định">Nam Định</option>
											<option value="Nghệ An">Nghệ An</option>
											<option value="Ninh Bình</">Ninh Bình</option>
											<option value="Ninh Thuận">Ninh Thuận</option>
											<option value="Phú Thọ">Phú Thọ</option>
											<option value="Phú Yên">Phú Yên</option>
											<option value="Quảng Bình">Quảng Bình</option>
											<option value="Quảng Nam">Quảng Nam</option>
											<option value="Quảng Ngãi">Quảng Ngãi</option>
											<option value="Quảng Ninh">Quảng Ninh</option>
											<option value="Quảng Trị">Quảng Trị</option>
											<option value="Sóc Trăng">Sóc Trăng</option>
											<option value="Sơn La">Sơn La</option>
											<option value="Tây Ninh">Tây Ninh</option>
											<option value="Thái Bình">Thái Bình</option>
											<option value="Thái Nguyên">Thái Nguyên</option>
											<option value="Thanh Hoá">Thanh Hoá</option>
											<option value="Thừa Thiên -Huế">Thừa Thiên -Huế</option>
											<option value="Tiền Giang">Tiền Giang</option>
											<option value="Tp. Hồ Chí Minh">Tp. Hồ Chí Minh</option>
											<option value="Trà Vinh">Trà Vinh</option>
											<option value="Tuyên Quang">Tuyên Quang</option>
											<option value="Vĩnh Long">Vĩnh Long</option>
											<option value="Vĩnh Phúc">Vĩnh Phúc</option>
											<option value="Yên Bái">Yên Bái</option>

										</select> <span id="MainContent_RequiredFieldValidator1"
											style="color: Red; visibility: hidden;">Thiếu thông
											tin</span>
											</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group row">
									<label class="col-sm-4 label-control" for="userinput1">Bạn
										đang sinh sống tại Tỉnh/TP nào?</label>
									<div class="col-sm-8">
										<select name="here" id="MainContent_idtinh1"
											class="form-control border-primary">
											<option value="${product.here }">${product.here }</option>
											<option value="An Giang">An Giang</option>
											<option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
											<option value="Bắc Giang">Bắc Giang</option>
											<option value="Bắc Kạn">Bắc Kạn</option>
											<option value="Bạc Liêu">Bạc Liêu</option>
											<option value="Bắc Ninh">Bắc Ninh</option>
											<option value="Bến Tre">Bến Tre</option>
											<option value="Bình Định">Bình Định</option>
											<option value="Bình Dương">Bình Dương</option>
											<option value="Bình Phước">Bình Phước</option>
											<option value="Bình Thuận">Bình Thuận</option>
											<option value="Cà Mau">Cà Mau</option>
											<option value="Cần Thơ">Cần Thơ</option>
											<option value="Cao Bằng">Cao Bằng</option>
											<option value="Đà Nẵng">Đà Nẵng</option>
											<option value="Đắk Lắk">Đắk Lắk</option>
											<option value="Đăk Nông">Đăk Nông</option>
											<option value="Điện Biên">Điện Biên</option>
											<option value="Đồng Nai">Đồng Nai</option>
											<option value="Đồng Tháp">Đồng Tháp</option>
											<option value="Gia Lai">Gia Lai</option>
											<option value="Hà Giang">Hà Giang</option>
											<option value="Hà Nam">Hà Nam</option>
											<option value="Hà Nội">Hà Nội</option>
											<option value="Hà Tĩnh">Hà Tĩnh</option>
											<option value="Hải Dương">Hải Dương</option>
											<option value="Hải Phòng">Hải Phòng</option>
											<option value="Hậu Giang">Hậu Giang</option>
											<option value="Hoà Bình">Hoà Bình</option>
											<option value="Hưng Yên">Hưng Yên</option>
											<option value="Khánh Hoà">Khánh Hoà</option>
											<option value="Kiên Giang">Kiên Giang</option>
											<option value="Kon Tum">Kon Tum</option>
											<option value="Lai Châu">Lai Châu</option>
											<option value="Lâm Đồng">Lâm Đồng</option>
											<option value="Lạng Sơn">Lạng Sơn</option>
											<option value="Lào Cai">Lào Cai</option>
											<option value="Long An">Long An</option>
											<option value="Nam Định">Nam Định</option>
											<option value="Nghệ An">Nghệ An</option>
											<option value="Ninh Bình</">Ninh Bình</option>
											<option value="Ninh Thuận">Ninh Thuận</option>
											<option value="Phú Thọ">Phú Thọ</option>
											<option value="Phú Yên">Phú Yên</option>
											<option value="Quảng Bình">Quảng Bình</option>
											<option value="Quảng Nam">Quảng Nam</option>
											<option value="Quảng Ngãi">Quảng Ngãi</option>
											<option value="Quảng Ninh">Quảng Ninh</option>
											<option value="Quảng Trị">Quảng Trị</option>
											<option value="Sóc Trăng">Sóc Trăng</option>
											<option value="Sơn La">Sơn La</option>
											<option value="Tây Ninh">Tây Ninh</option>
											<option value="Thái Bình">Thái Bình</option>
											<option value="Thái Nguyên">Thái Nguyên</option>
											<option value="Thanh Hoá">Thanh Hoá</option>
											<option value="Thừa Thiên -Huế">Thừa Thiên -Huế</option>
											<option value="Tiền Giang">Tiền Giang</option>
											<option value="Tp. Hồ Chí Minh">Tp. Hồ Chí Minh</option>
											<option value="Trà Vinh">Trà Vinh</option>
											<option value="Tuyên Quang">Tuyên Quang</option>
											<option value="Vĩnh Long">Vĩnh Long</option>
											<option value="Vĩnh Phúc">Vĩnh Phúc</option>
											<option value="Yên Bái">Yên Bái</option>

										</select>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group row">
									<label class="col-sm-3" for="userinput1">Trường THPT:</label>
									<div class="col-sm-4">
										<input name="thpt" type="text" value ="${product.thpt }" id="MainContent_idthpt1"
											class="form-control border-primary">


									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8">
								<div class="form-group row">
									<label class="col-sm-3 label-control" for="userinput1">Năm
										tốt nghiệp THPT:</label>
									<div class="col-sm-3">
										<select name="graduation" id="MainContent_drnamtn"
											class="form-control border-primary">
											<option value="${product.graduation}">${product.graduation}</option>
											<option value="2022">2028</option>
											<option value="2027">2027</option>
											<option value="2026">2026</option>
											<option value="2025">2025</option>
											<option value="2024">2024</option>
											<option value="2023">2023</option>
											<option value="2022">2022</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>

										</select>
									</div>
									<div class="col-sm-6"></div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group row">
									<label class="col-sm-4 label-control" for="userinput1">Tên lớp 12:</label>
									<div class="col-sm-8">

										<input name="nameclass12" value="${product.nameclass12}" type="text" id="MainContent_idlop12"
											class="form-control border-primary" placeholder="Tên lớp 12">
									</div>
								</div>
							</div>
						</div>
						<h4 class="form-section">2.Đăng ký xét tuyển:</h4>
						<div class="row">

							<div class="col-sm-12">
								<div class="form-group row">
									<b style="color: red;">Ngành đăng ký xét tuyển</b>&nbsp;&nbsp;&nbsp;
								</div>
								<div class="form-group row">
									<label class="col-sm-2 label-control" for="userinput1">NV1:</label>
									<div class="col-sm-5">
										<select name="nv1" id="MainContent_idnganh1"
											class="form-control border-primary">
											<option value="${product.nv1}">${product.nv1}</option>
										<option value="chế tạo thiết bị cơ khí">Chế tạo
												thiết bị cơ khí</option>
											<option value="Hàn">Hàn</option>
											<option value="Cơ khí chế tạo máy">Cơ khí chế tạo
												máy (Cắt gọt kim )</option>
											<option value="Công nghệ kỹ thuật cơ khí">Công nghệ
												kỹ thuật cơ khí</option>
											<option value="Công nghệ Ô tô">Công nghệ Ô tô</option>
											<option value="Công nghệ thông tin">Công nghệ thông
												tin</option>
											<option value="Quản trị mạng máy tính">Quản trị mạng
												máy tính</option>
											<option value="Vẽ và thiết kế trên máy tính">Vẽ và
												thiết kế trên máy tính</option>
											<option value="Kế toán doanh nghiệp">Kế toán doanh
												nghiệp</option>
											<option value="Quản trị bán hàng">Quản trị bán hàng
											</option>
											<option value="Công nghệ sơn Ô tô">Công nghệ sơn Ô
												tô</option>
											<option value="Công nghệ điện tử và năng lượng toà nhà">Công
												nghệ điện tử và năng lượng toà nhà</option>
											<option value="Điện công nhiệp">Điện công nhiệp</option>
											<option value="Kĩ thuật máy lạnh và điều hoà không khí">Kĩ
												thuật máy lạnh và điều hoà không khí</option>
											<option value="Điện tử công nghiệp">Điện tử công
												nghiệp</option>
											<option value="Nghiệp vụ bán hàng">Nghiệp vụ bán
												hàng</option>
											<option value="Tiếng anh">Tiếng anh</option>
											<option value="Chăm sóc sắc đẹp">Chăm sóc sắc đẹp</option>
											<option value="Nhiệp vụ khách sạn nhà hàng">Nhiệp vụ
												khách sạn nhà hàng</option>
											<option value="May thời trang">May thời trang</option>

										</select>
										
										
									</div>
									
									<label class="col-sm-1 label-control" for="userinput1">Hệ cơ sở:</label>
									<div class="col-sm-2">
										<select name="he1" id="MainContent_idnganh1"
											class="form-control border-primary">
											<option value="${product.he1}">${product.he1}</option>
											<option value="Cao đẳng">Cao đẳng</option>
											<option value="Trung cấp">Trung cấp</option>
											<option value="Sơ cấp">Sơ cấp</option>
							
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 label-control" for="userinput1">NV2:</label>
									<div class="col-sm-5">
										<select name="nv2" id="MainContent_idnganh2"
											class="form-control border-primary">
											<option value="${product.nv2}">${product.nv2}</option>
											<option value="chế tạo thiết bị cơ khí">Chế tạo
												thiết bị cơ khí</option>
											<option value="Hàn">Hàn</option>
											<option value="Cơ khí chế tạo máy">Cơ khí chế tạo
												máy (Cắt gọt kim )</option>
											<option value="Công nghệ kỹ thuật cơ khí">Công nghệ
												kỹ thuật cơ khí</option>
											<option value="Công nghệ Ô tô">Công nghệ Ô tô</option>
											<option value="Công nghệ thông tin">Công nghệ thông
												tin</option>
											<option value="Quản trị mạng máy tính">Quản trị mạng
												máy tính</option>
											<option value="Vẽ và thiết kế trên máy tính">Vẽ và
												thiết kế trên máy tính</option>
											<option value="Kế toán doanh nghiệp">Kế toán doanh
												nghiệp</option>
											<option value="Quản trị bán hàng">Quản trị bán hàng
											</option>
											<option value="Công nghệ sơn Ô tô">Công nghệ sơn Ô
												tô</option>
											<option value="Công nghệ điện tử và năng lượng toà nhà">Công
												nghệ điện tử và năng lượng toà nhà</option>
											<option value="Điện công nhiệp">Điện công nhiệp</option>
											<option value="Kĩ thuật máy lạnh và điều hoà không khí">Kĩ
												thuật máy lạnh và điều hoà không khí</option>
											<option value="Điện tử công nghiệp">Điện tử công
												nghiệp</option>
											<option value="Nghiệp vụ bán hàng">Nghiệp vụ bán
												hàng</option>
											<option value="Tiếng anh">Tiếng anh</option>
											<option value="Chăm sóc sắc đẹp">Chăm sóc sắc đẹp</option>
											<option value="Nhiệp vụ khách sạn nhà hàng">Nhiệp vụ
												khách sạn nhà hàng</option>
											<option value="May thời trang">May thời trang</option>

										</select>
									</div>
									
									<label class="col-sm-1 label-control" for="he2">Hệ cơ sở:</label>
									<div class="col-sm-2">
										<select name="he2" id="MainContent_idnganh1"
											class="form-control border-primary">
											<option value="${product.he2}">${product.he2}</option>
											<option value="Cao đẳng">Cao đẳng</option>
											<option value="Trung cấp">Trung cấp</option>
											<option value="Sơ cấp">Sơ cấp</option>
							
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 label-control" for="userinput1">NV3:</label>
									<div class="col-sm-5">
										<select name="nv3" id="MainContent_idnganh3"
											class="form-control border-primary">
											<option value="${product.nv3}">${product.nv3}</option>
											<option value="chế tạo thiết bị cơ khí">Chế tạo
												thiết bị cơ khí</option>
											<option value="Hàn">Hàn</option>
											<option value="Cơ khí chế tạo máy">Cơ khí chế tạo
												máy (Cắt gọt kim )</option>
											<option value="Công nghệ kỹ thuật cơ khí">Công nghệ
												kỹ thuật cơ khí</option>
											<option value="Công nghệ Ô tô">Công nghệ Ô tô</option>
											<option value="Công nghệ thông tin">Công nghệ thông
												tin</option>
											<option value="Quản trị mạng máy tính">Quản trị mạng
												máy tính</option>
											<option value="Vẽ và thiết kế trên máy tính">Vẽ và
												thiết kế trên máy tính</option>
											<option value="Kế toán doanh nghiệp">Kế toán doanh
												nghiệp</option>
											<option value="Quản trị bán hàng">Quản trị bán hàng
											</option>
											<option value="Công nghệ sơn Ô tô">Công nghệ sơn Ô
												tô</option>
											<option value="Công nghệ điện tử và năng lượng toà nhà">Công
												nghệ điện tử và năng lượng toà nhà</option>
											<option value="Điện công nhiệp">Điện công nhiệp</option>
											<option value="Kĩ thuật máy lạnh và điều hoà không khí">Kĩ
												thuật máy lạnh và điều hoà không khí</option>
											<option value="Điện tử công nghiệp">Điện tử công
												nghiệp</option>
											<option value="Nghiệp vụ bán hàng">Nghiệp vụ bán
												hàng</option>
											<option value="Tiếng anh">Tiếng anh</option>
											<option value="Chăm sóc sắc đẹp">Chăm sóc sắc đẹp</option>
											<option value="Nhiệp vụ khách sạn nhà hàng">Nhiệp vụ
												khách sạn nhà hàng</option>
											<option value="May thời trang">May thời trang</option>

										</select>
									</div>
									<label class="col-sm-1 label-control" for="he3">Hệ cơ sở:</label>
									<div class="col-sm-2">
										<select name="he3" id="MainContent_idnganh1"
											class="form-control border-primary">
											<option value="${product.he3}">${product.he3}</option>
											<option value="Cao đẳng">Cao đẳng</option>
											<option value="Trung cấp">Trung cấp</option>
											<option value="Sơ cấp">Sơ cấp</option>
							
										</select>
									</div>
								</div>
							</div>
						</div>




						<div class="row">
							<div class="col-sm-12">
								<div></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-2"></div>

						<div class="form-group row">
							<div class="col-sm-12">
								<i style="color: red"> <b>Sau khi đăng ký thành công,
										Trường có gửi email hướng dẫn tra cứu kết quả xét tuyển và
										nhập học trực tuyến. <br>Em vui lòng kiểm tra email hoặc
										tra cứu nhanh tại website: <a
										href="https://donga.edu.vn/tuyensinh/dang-ky/tra-cuu-ho-so-xt">aaaaa</a>
								</b>
								</i>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-left: 5px">
					<div class="col-sm-12">
						<div class="form-group row">
							<span id="MainContent_Label3" style="font-size: 11pt;"></span>
						</div>


					</div>
				</div>
			</div>
		</div>


		<div class="form-group row">

			<div class="col-sm-5"></div>
			<div class="col-sm-2">
				<input type="submit" value="Nộp đơn xét tuyển"
					id="MainContent_Button1" class="btn btn-danger"
					style="width: 300px;">
			</div>
		</div>


	</form>


</body>
</html>