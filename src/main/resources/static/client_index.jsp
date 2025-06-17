<html lang="en" style="height: auto;">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
  <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <%@ include file="../include/libNlinks.jsp"%>
<style>

.swiper {
	width: 100%;
	padding-bottom: 50px;
}

.card-list .card-item .user-image {
	width: 100px;
	height: 100px;
	border-radius: 50%;
}

.card-list .card-item {
    height: auto; 
	color: white;
	width: 300px;
	padding: 25px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 8px;
	background: #099ffc;
	border: 1px solid white;
	transition: transform 0.3s ease-in-out;
}

.card-list .card-item:hover {
	transform: translateY(-5px);
}

.card-list .card-item .user-professional {
	font-size: 1.1rem;
	color: white;
	font-weight: 500;
	margin: 14px 0 20px;
}

.card-list .card-item .message-button {
	font-size: 1rem;
	padding: 10px 25px;
	color: #099ffc;
	border-radius: 6px;
	font-weight: 500;
	cursor: pointer;
	background: white;
	border: 1px solid transparent;
	transition: 0.2s ease;
}

.card-list .card-item .message-button:hover {
	background: blue;
	border: 1px solid blue;
	color: white;
}

#vendor{
   font-family: Georgia, serif;


}

#orders{
   font-family: Georgia, serif;
   margin-left: 15px;

}
     .section {
            margin-bottom: 20px;
            margin-left:15px;
            margin-right: 15px;
            padding: 15px;
            border-radius: 8px;
            background: #ffffff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
       
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #099ffc;
            color: white;
        }
        .status-pending { color: orange; }
        .status-in-progress { color: blue; }
        .status-completed { color: green; }
.swiper-button-prev,
.swiper-button-next {
	color: white;
}
</style>
</head>
<body class="sidebar-mini layout-fixed sidebar-closed sidebar-collapse" style="height: auto;">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
    <img class="animation__shake" src="../resources/images/adminlte/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
  </div>
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
 
  <!-- /.navbar -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="../resources/images/adminlte/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition"><div class="os-resize-observer-host observed"><div class="os-resize-observer" style="left: 0px; right: auto;"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"><div class="os-resize-observer"></div></div><div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 857px;"></div><div class="os-padding"><div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div><div class="sidebar-search-results"><div class="list-group"><a href="#" class="list-group-item"><div class="search-title"><strong class="text-light"></strong>N<strong class="text-light"></strong>o<strong class="text-light"></strong> <strong class="text-light"></strong>e<strong class="text-light"></strong>l<strong class="text-light"></strong>e<strong class="text-light"></strong>m<strong class="text-light"></strong>e<strong class="text-light"></strong>n<strong class="text-light"></strong>t<strong class="text-light"></strong> <strong class="text-light"></strong>f<strong class="text-light"></strong>o<strong class="text-light"></strong>u<strong class="text-light"></strong>n<strong class="text-light"></strong>d<strong class="text-light"></strong>!<strong class="text-light"></strong></div><div class="search-path"></div></a></div></div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Widgets
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Layout Options
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">6</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation + Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/boxed.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Boxed</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar-custom.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar <small>+ Custom Area</small></p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-topnav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Navbar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-footer.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Footer</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/collapsed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Collapsed Sidebar</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Charts
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/charts/chartjs.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>ChartJS</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/flot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Flot</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/inline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inline</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/charts/uplot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>uPlot</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                UI Elements
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/UI/general.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>General</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/icons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Icons</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/buttons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Buttons</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/sliders.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sliders</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/modals.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Modals &amp; Alerts</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/navbar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Navbar &amp; Tabs</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/timeline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Timeline</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ribbons</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Forms
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/forms/general.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>General Elements</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Advanced Elements</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/editors.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Editors</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Validation</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Tables
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/tables/simple.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Simple Tables</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/data.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>DataTables</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">EXAMPLES</li>
          <li class="nav-item">
            <a href="pages/calendar.html" class="nav-link">
              <i class="nav-icon far fa-calendar-alt"></i>
              <p>
                Calendar
                <span class="badge badge-info right">2</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/gallery.html" class="nav-link">
              <i class="nav-icon far fa-image"></i>
              <p>
                Gallery
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/kanban.html" class="nav-link">
              <i class="nav-icon fas fa-columns"></i>
              <p>
                Kanban Board
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-envelope"></i>
              <p>
                Mailbox
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/mailbox/mailbox.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inbox</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/mailbox/compose.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Compose</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/mailbox/read-mail.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Read</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Pages
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/examples/invoice.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Invoice</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/profile.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Profile</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/e-commerce.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>E-commerce</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/projects.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Projects</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/project-add.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Add</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/project-edit.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Edit</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/project-detail.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Detail</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/contacts.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contacts</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/faq.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>FAQ</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/contact-us.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contact us</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
                Extras
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Login &amp; Register v1
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="pages/examples/login.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Login v1</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/register.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Register v1</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/forgot-password.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Forgot Password v1</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/recover-password.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Recover Password v1</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Login &amp; Register v2
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="pages/examples/login-v2.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Login v2</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/register-v2.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Register v2</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/forgot-password-v2.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Forgot Password v2</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/examples/recover-password-v2.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Recover Password v2</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a href="pages/examples/lockscreen.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Lockscreen</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/legacy-user-menu.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Legacy User Menu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/language-menu.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Language Menu</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/404.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Error 404</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/500.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Error 500</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/pace.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pace</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/blank.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Blank Page</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="starter.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Starter Page</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-search"></i>
              <p>
                Search
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/search/simple.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Simple Search</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/search/enhanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Enhanced</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">MISCELLANEOUS</li>
          <li class="nav-item">
            <a href="iframe.html" class="nav-link">
              <i class="nav-icon fas fa-ellipsis-h"></i>
              <p>Tabbed IFrame Plugin</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="https://adminlte.io/docs/3.1/" class="nav-link">
              <i class="nav-icon fas fa-file"></i>
              <p>Documentation</p>
            </a>
          </li>
          <li class="nav-header">MULTI LEVEL EXAMPLE</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-circle nav-icon"></i>
              <p>Level 1</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                Level 1
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Level 2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    Level 2
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Level 3</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Level 3</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-dot-circle nav-icon"></i>
                      <p>Level 3</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Level 2</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-circle nav-icon"></i>
              <p>Level 1</p>
            </a>
          </li>
          <li class="nav-header">LABELS</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Important</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-warning"></i>
              <p>Warning</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>Informational</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 39.2677%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner"></div></div>
    <!-- /.sidebar -->
  </aside>

 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 777.667px;">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<div class="container">
		<div class="swiper slider-wrapper">
		<h2 id="vendor">Vendor Details</h2>
			<div class="swiper-wrapper card-list">
				<div class="card-item swiper-slide">
					<img src="data:image/jpeg;base64,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" class="user-image" alt="Saloni">
					<h2 class="user-name">Saloni</h2>
					<p class="user-professional">Dry Cleaning,Ironing</p>
					<button class="message-button">Book Service</button>
				</div>

				<div class="card-item swiper-slide">
					<img src="data:image/jpeg;base64,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" class="user-image" alt="Saloni">
					<h2 class="user-name">Saloni</h2>
					<p class="user-professional">Dry Cleaning,Ironing</p>
					<button class="message-button">Book Service</button>
				</div>

				<div class="card-item swiper-slide">
					<img src="data:image/jpeg;base64,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" class="user-image" alt="Saloni">
					<h2 class="user-name">Saloni</h2>
					<p class="user-professional">Dry Cleaning,Ironing</p>
					<button class="message-button">Book Service</button>
				</div>

				<div class="card-item swiper-slide">
					<img src="data:image/jpeg;base64,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" class="user-image" alt="Saloni">
					<h2 class="user-name">Saloni</h2>
					<p class="user-professional">Dry Cleaning,Ironing</p>
					<button class="message-button">Book Service</button>
				</div>

				<div class="card-item swiper-slide">
					<img src="https://www.google.com/imgres?q=nirmala%20sitharaman&imgurl=https%3A%2F%2Fs7d1.scene7.com%2Fis%2Fimage%2Fwbcollab%2Fnirmala-sitharam%3Fqlt%3D90%26fmt%3Dwebp%26resMode%3Dsharp2&imgrefurl=https%3A%2F%2Flive.worldbank.org%2Fen%2Fexperts%2Fn%2Fnirmala-sitharaman&docid=Ky3Rm9IedvBfWM&tbnid=9RYoinO8M9ec9M&vet=12ahUKEwia7-7fuLGMAxU24TgGHS_pJBcQM3oECHUQAA..i&w=960&h=960&hcb=2&ved=2ahUKEwia7-7fuLGMAxU24TgGHS_pJBcQM3oECHUQAA" class="user-image" alt="Saloni">
					<h2 class="user-name">Saloni</h2>
					<p class="user-professional">Student</p>
					<button class="message-button">Message</button>
				</div>
			</div>

			<!-- Swiper Pagination -->
			

			<!-- Swiper Navigation Buttons -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
			
		</div>
	</div>
  <h2 id="orders">Active Orders</h2>
<div class="section">
          
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Service</th>
                    <th>Status</th>
                    <th>Expected Delivery</th>
                </tr>
                <tr>
                    <td>#1234</td>
                    <td>Dry Cleaning</td>
                    <td id="status">In Progress</td>
                    <td>April 2, 2025</td>
                </tr>
                <tr>
                    <td>#1235</td>
                    <td>Ironing</td>
                    <td id="status">Pending</td>
                    <td>April 3, 2025</td>
                </tr>
            </table>
        </div>
         <h2 id="orders">Order History</h2>     <!-- Order History -->
        <div class="section">
            
            <table>
                <tr>
                    <th>Order ID</th>
                    <th>Service</th>
                    <th>Vendor</th>
                    <th>Date</th>
                </tr>
                <tr>
                    <td>#1221</td>
                    <td>Wash & Fold</td>
                    <td>QuickClean</td>
                    <td>March 25, 2025</td>
                </tr>
                <tr>
                    <td>#1218</td>
                    <td>Dry Cleaning</td>
                    <td>Fresh Laundry</td>
                    <td>March 20, 2025</td>
                </tr>
            </table>
        </div>
        
        <!-- Invoice & Payment Status -->
        <h2 id="orders">Invoice & Payment Status</h2>
        <div class="section">
            
            <table>
                <tr>
                    <th>Invoice ID</th>
                    <th>Amount</th>
                    <th>Payment Status</th>
                </tr>
                <tr>
                    <td>INV-7890</td>
                    <td>$20</td>
                    <td style="color: green;">Paid</td>
                </tr>
                <tr>
                    <td>INV-7885</td>
                    <td>$15</td>
                    <td style="color: red;">Pending</td>
                </tr>
            </table>
        </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
  

  <!-- Control Sidebar -->
  
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js?v=3.2.0"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
		const swiper = new Swiper('.slider-wrapper', {
			autoHeight: true,
			loop: true,
			slidesPerView: 3, // Show 3 cards per view
			spaceBetween: 20, // Space between cards
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			breakpoints: {
				// Mobile view
				0: {
					slidesPerView: 1,
					spaceBetween: 10
				},
				// Tablet view
				768: {
					slidesPerView: 2,
					spaceBetween: 15
				},
				// Desktop view
				1024: {
					slidesPerView: 3,
					spaceBetween: 20
				}
			}
		});
	</script>
</body></html>