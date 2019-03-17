<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="Admin_examples_map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard Dark Edition by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
       JJ-Printer's
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="dashboard.aspx">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          
          <li class="nav-item ">
            <a class="nav-link" href="tables.aspx">
              <i class="material-icons">content_paste</i>
              <p>Table List</p>
            </a>
          </li>
          
          <li class="nav-item ">
            <a class="nav-link" href="gallary.aspx">
              <i class="material-icons">check_box</i>
              <p>Update</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="map.aspx">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="form.aspx">
              <i class="material-icons">group_add</i>
              <p>Form</p>
            </a>
          </li>
          <%-- <li class="nav-item active ">
            <a class="nav-link" href="form.aspx">
              <i class="material-icons">group_add</i>
              <p>Form</p>
            </a>
          </li>--%>
          <%-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> --%>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)">Map</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-default btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">description</i>
                  <span class="notification"></span>
                  <p class="d-lg-none d-md-block">
                    Report
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                   <a class="dropdown-item" onclick="report()">Report</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javscript:void(0)" id="A1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" onclick="login()">Logout</a>
                  <a class="dropdown-item" onclick="login()">Profile</a>
                  
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->

       <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
     <%--       <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Contact Us</h3>--%>
            <div class="row">
               <div class="col-lg-8 col-md-8">
                  <%--<div class="info-para">--%>
                     <!--contact-map -->
                 <%--    <form action="#" method="post">
                        <div class="row wls-contact-mid">
                           <div class="col-md-6 col-sm-6 form-group contact-forms">
                              <input type="text" class="form-control" placeholder="Fist Name" required="">
                           </div>
                           <div class="col-md-6 col-sm-6 form-group contact-forms">
                              <input type="text" class="form-control" placeholder="Last Name" required="">
                           </div>
                        </div>
                        <div class="row agile-wls-contact-mid">
                           <div class="col-md-6 col-sm-6 form-group contact-forms">
                              <input type="text" class="form-control" placeholder="Phone" required="">
                           </div>
                           <div class="col-md-6 col-sm-6 form-group contact-forms">
                              <input type="email" class="form-control" placeholder="Email" required="">
                           </div>
                        </div>
                        <div class="form-group contact-forms">
                           <textarea class="form-control" rows="3" placeholder="Message.." required=""></textarea>
                        </div>
                        <div class="text-left click-subscribe">
                           <button type="submit" class="btn btn-block click-me">Send</button>
                        </div>
                     </form>--%>
                 <%-- </div>
               </div>
               <div class="col-lg-4 col-md-4 contact-right ">
                  <div class="mb-lg-5 mb-md-4 mb-sm-3 mb-3 footer_grid_left text-center">
                     <div class="contact_footer_grid_left text-center mb-3">
                        <span class="fa fa-map-marker"></span>
                     </div>
                     <p>J.J Printers shop,Behind Hotel Venus,Opp Police Station,90 feet road <br>Dharavi,Mumbai:-400017</p>
                  </div>
                  <div class="mb-lg-5 mb-md-4 mb-sm-3 mb-3 footer_grid_left text-center">
                     <div class="contact_footer_grid_left text-center mb-3">
                        <span class="fa fa-phone"></span>
                     </div>
                     <p>+(022) 24097136<br>+ 9892627136 <br>+ 7045445506</p>
                  </div>
                  <div class="footer_grid_left text-center">
                     <div class="contact_footer_grid_left text-center mb-3">
                        <span class="fa fa-envelope"></span>
                     </div>
                     <p><a href="jagan989@gmail.com">jagan989@gmail.com</a> 
                        <br><a href="mailto:jagan989@gmail.com">jagan989yahoo.com</a>
                     </p>
                  </div>
               </div>
            </div>--%>
            <div class="mt-lg-5 mt-md-4 mt-sm-3 mt-3 address_mail_footer_grids">
               <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.46806109576!2d72.85476911437631!3d19.043147657954133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8d6a917d1c3%3A0xe346b25308184892!2sJ+J+Printers!5e0!3m2!1sen!2sin!4v1546499537621" frameborder="0" 
                    style="border-style: none; border-color: inherit; border-width: 0; margin-right: 400px; width: 1020px; height: 996px;" 
                    allowfullscreen></iframe>
            </div>
         </div>
      </section>



      <%--<div id="map">
      <div class="mt-lg-5 mt-md-4 mt-sm-3 mt-3 address_mail_footer_grids">
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.46806109576!2d72.85476911437631!3d19.043147657954133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8d6a917d1c3%3A0xe346b25308184892!2sJ+J+Printers!5e0!3m2!1sen!2sin!4v1546499537621" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
      
      </div>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>


      

      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple active" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard-dark" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard-dark/docs/2.0/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard/tree/dark-edition" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>--%>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.0"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
      $(document).ready(function () {
          $().ready(function () {
              $sidebar = $('.sidebar');

              $sidebar_img_container = $sidebar.find('.sidebar-background');

              $full_page = $('.full-page');

              $sidebar_responsive = $('body > .navbar-collapse');

              window_width = $(window).width();

              $('.fixed-plugin a').click(function (event) {
                  // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                  if ($(this).hasClass('switch-trigger')) {
                      if (event.stopPropagation) {
                          event.stopPropagation();
                      } else if (window.event) {
                          window.event.cancelBubble = true;
                      }
                  }
              });

              $('.fixed-plugin .active-color span').click(function () {
                  $full_page_background = $('.full-page-background');

                  $(this).siblings().removeClass('active');
                  $(this).addClass('active');

                  var new_color = $(this).data('color');

                  if ($sidebar.length != 0) {
                      $sidebar.attr('data-color', new_color);
                  }

                  if ($full_page.length != 0) {
                      $full_page.attr('filter-color', new_color);
                  }

                  if ($sidebar_responsive.length != 0) {
                      $sidebar_responsive.attr('data-color', new_color);
                  }
              });

              $('.fixed-plugin .background-color .badge').click(function () {
                  $(this).siblings().removeClass('active');
                  $(this).addClass('active');

                  var new_color = $(this).data('background-color');

                  if ($sidebar.length != 0) {
                      $sidebar.attr('data-background-color', new_color);
                  }
              });

              $('.fixed-plugin .img-holder').click(function () {
                  $full_page_background = $('.full-page-background');

                  $(this).parent('li').siblings().removeClass('active');
                  $(this).parent('li').addClass('active');


                  var new_image = $(this).find("img").attr('src');

                  if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                      $sidebar_img_container.fadeOut('fast', function () {
                          $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                          $sidebar_img_container.fadeIn('fast');
                      });
                  }

                  if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                      var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                      $full_page_background.fadeOut('fast', function () {
                          $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                          $full_page_background.fadeIn('fast');
                      });
                  }

                  if ($('.switch-sidebar-image input:checked').length == 0) {
                      var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                      var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                      $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                      $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                  }

                  if ($sidebar_responsive.length != 0) {
                      $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                  }
              });

              $('.switch-sidebar-image input').change(function () {
                  $full_page_background = $('.full-page-background');

                  $input = $(this);

                  if ($input.is(':checked')) {
                      if ($sidebar_img_container.length != 0) {
                          $sidebar_img_container.fadeIn('fast');
                          $sidebar.attr('data-image', '#');
                      }

                      if ($full_page_background.length != 0) {
                          $full_page_background.fadeIn('fast');
                          $full_page.attr('data-image', '#');
                      }

                      background_image = true;
                  } else {
                      if ($sidebar_img_container.length != 0) {
                          $sidebar.removeAttr('data-image');
                          $sidebar_img_container.fadeOut('fast');
                      }

                      if ($full_page_background.length != 0) {
                          $full_page.removeAttr('data-image', '#');
                          $full_page_background.fadeOut('fast');
                      }

                      background_image = false;
                  }
              });

              $('.switch-sidebar-mini input').change(function () {
                  $body = $('body');

                  $input = $(this);

                  if (md.misc.sidebar_mini_active == true) {
                      $('body').removeClass('sidebar-mini');
                      md.misc.sidebar_mini_active = false;

                      $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                  } else {

                      $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                      setTimeout(function () {
                          $('body').addClass('sidebar-mini');

                          md.misc.sidebar_mini_active = true;
                      }, 300);
                  }

                  // we simulate the window Resize so the charts will get updated in realtime.
                  var simulateWindowResize = setInterval(function () {
                      window.dispatchEvent(new Event('resize'));
                  }, 180);

                  // we stop the simulation of Window Resize after the animations are completed
                  setTimeout(function () {
                      clearInterval(simulateWindowResize);
                  }, 1000);

              });
          });
      });
  </script>
  <script>
      $(document).ready(function () {
          // Javascript method's body can be found in assets/js/demos.js
          demo.initGoogleMaps();
      });
  </script>
  <script type="text/javascript">
      function login() {
          window.location.href = "login.aspx";
      }
          </script>
          <script type="text/javascript">
              function report() {
                  window.location.href = "Report.aspx";
              }
          </script>
</body>

</html>