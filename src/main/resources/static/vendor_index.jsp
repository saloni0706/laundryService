<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vendor Dashboard</title>

<%@ include file="../include/libNlinks.jsp"%>
</head>
<body class="sidebar-mini layout-fixed" style="height: auto;">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center"
			style="height: 0px;">
			<img class="animation__shake"
				src="../resources/images/adminlte/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60" style="display: none;">
		</div>

		<!-- header -->
		<%@ include file="../common/header.jsp"%>
		<!-- /.header -->

		<!-- Main Sidebar Container -->
		<%@ include file="../common/sidebar.jsp"%>
		<!-- /.Main Sidebar Container -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 770px;">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Vendor Dashboard</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row ui-sortable">
						<div class="col-lg-2 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>150</h3>

									<p>Total Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-2 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>
										53<sup style="font-size: 20px">%</sup>
									</h3>

									<p>Completed Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-2 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-2 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44</h3>

									<p>Total Earning</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-2 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>65</h3>

									<p>Unique Visitors</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					</div>
					</section>
					<!-- /.row -->
					<!-- Main row -->
					
						<!-- Left col -->
						<section class="col-lg-12 connectedSortable ui-sortable">
						     <div class="row">
									<div class="card-header">
										<h3>Order Management</h3>
									</div>
									<div class="card-body">
										<!-- Active Orders Table -->
										<a href= "#"><h5>Active Orders</h5></a>
										<table class="table table-bordered">
											<thead class="thead-dark">
												<tr>
													<th>Order ID</th>
													<th>Customer Name</th>
													<th>Order Date</th>
													<th>Est. Delivery Date</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>101</td>
													<td>John Doe</td>
													<td>2025-04-01</td>
													<td>2025-04-01</td>
													<td>Processing</td>
													<td><button class="btn btn-primary btn-sm">Update</button></td>
												</tr>
											</tbody>
										</table>

										<!-- New Orders Table -->
									<!--	<a href= "#"><h5 class="mt-4">Pending Orders</h5></a>
										<table class="table table-bordered">
											<thead class="thead-dark">
												<tr>
													<th>Order ID</th>
													<th>Customer Name</th>
													<th>Order Date</th>
													<th>Est. Delivery Date</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>100</td>
													<td>Jane Smith</td>
													<td>2025-03-28</td>
													<td>2025-03-30</td>
												</tr>
											</tbody>
										</table>  -->

										<!-- Completed Orders Table -->
										<a href= "#"><h5 class="mt-4">New Order Requests</h5></a>
										<table class="table table-bordered">
											<thead class="thead-dark">
												<tr>
													<th>Order ID</th>
													<th>Customer Name</th>
													<th>Order Date</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>100</td>
													<td>Jane Smith</td>
													<td>2025-03-28</td>
													<td>2025-03-30</td>
												</tr>
											</tbody>
										</table>
									</div>
									</div>
						</section>
						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-5 connectedSortable ui-sortable">

						</section>
						<!-- right col -->
					
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			
			<!-- /.content -->
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright © 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer>
	</div>
</body>
</html>
