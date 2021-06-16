<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TKTI</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo base_url(); ?>img/favicon.png" rel="icon">
  <link href="<?php echo base_url(); ?>img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo base_url(); ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/venobox/venobox.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v2.3.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="<?php echo base_url(); ?>img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="<?php echo site_url('welcome/index') ?>">Home</a></li>
          <li><a href="<?php echo site_url('welcome/index#about') ?>">About</a></li>
          <li><a href="<?php echo site_url('welcome/index#team') ?>">Team</a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="<?php echo site_url('welcome/index') ?>">Home</a></li>
          <li><a href="<?php echo site_url('form/index') ?>">Kebutuhan Perusahaan</a></li>
          <li><a href="<?php echo site_url('process/kebutuhan') ?>">IT Process</a></li>
          <li><a href="<?php echo site_url('kuesioner/index') ?>">Kuesioner</a></li>
        </ol>
        <h2>Pengisian Kuesioner IT Process</h2>
      </div>
    </section><!-- End Breadcrumbs -->

    <section class="kuis">
      <div class="container">
      <form action="<?= site_url('rekomendasi/index') ?>" role="form" method="POST" id="formKuesioner">
          <h4>Level 0</h4>
          <?php foreach ($kuesioner_level0 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 0)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="radio5" id="inlineRadio5" value="0">
                    <label class="form-check-label" for="inlineRadio5">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="radio5" id="inlineRadio5" value="0.33">
                    <label class="form-check-label" for="inlineRadio5">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="radio5" id="inlineRadio5" value="0.67">
                    <label class="form-check-label" for="inlineRadio5">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="radio5" id="inlineRadio5" value="1">
                    <label class="form-check-label" for="inlineRadio5">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <h4>Level 1</h4>
          <?php foreach ($kuesioner_level1 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 1)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio6" id="inlineRadio6" value="0">
                    <label class="form-check-label" for="inlineRadio6">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio6" id="inlineRadio6" value="0.33">
                    <label class="form-check-label" for="inlineRadio6">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio6" id="inlineRadio6" value="0.67">
                    <label class="form-check-label" for="inlineRadio6">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio6" id="inlineRadio6" value="1">
                    <label class="form-check-label" for="inlineRadio6">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <h4>Level 2</h4>
          <?php foreach ($kuesioner_level2 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 2)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio7" id="inlineRadio7" value="0">
                    <label class="form-check-label" for="inlineRadio7">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio8" id="inlineRadio8" value="0.33">
                    <label class="form-check-label" for="inlineRadio8">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio8" id="inlineRadio8" value="0.67">
                    <label class="form-check-label" for="inlineRadio8">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio8" id="inlineRadio8" value="1">
                    <label class="form-check-label" for="inlineRadio8">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <h4>Level 3</h4>
          <?php foreach ($kuesioner_level3 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 3)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio9" id="inlineRadio9" value="0">
                    <label class="form-check-label" for="inlineRadio17">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio18" id="inlineRadio18" value="0.33">
                    <label class="form-check-label" for="inlineRadio18">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio19" id="inlineRadio19" value="0.67">
                    <label class="form-check-label" for="inlineRadio19">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio20" id="inlineRadio20" value="1">
                    <label class="form-check-label" for="inlineRadio20">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <h4>Level 4</h4>
          <?php foreach ($kuesioner_level4 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 4)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio21" id="inlineRadio21" value="0">
                    <label class="form-check-label" for="inlineRadio21">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio22" id="inlineRadio22" value="0.33">
                    <label class="form-check-label" for="inlineRadio22">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio23" id="inlineRadio23" value="0.67">
                    <label class="form-check-label" for="inlineRadio23">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio24" id="inlineRadio24" value="1">
                    <label class="form-check-label" for="inlineRadio24">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <h4>Level 5</h4>
          <?php foreach ($kuesioner_level5 as $kuesioner): ?>
            <?php if (!($kuesioner->level == 5)) continue; ?>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><p><?php echo $kuesioner->pertanyaan ?></p>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio25" id="inlineRadio25" value="0">
                    <label class="form-check-label" for="inlineRadio25">Tidak setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio26" id="inlineRadio26" value="0.33">
                    <label class="form-check-label" for="inlineRadio26">Kurang setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio27" id="inlineRadio27" value="0.67">
                    <label class="form-check-label" for="inlineRadio27">Setuju</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadio28" id="inlineRadio28" value="1">
                    <label class="form-check-label" for="inlineRadio28">Sangat setuju</label>
                  </div></li>
              </ul>
          <?php endforeach; ?>

          <input class="btn btn-primary btn-sm float-right" type="submit" name="submit" value="Kirim" />
          </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="<?php echo base_url(); ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/php-email-form/validate.js"></script>
  <script src="<?php echo base_url(); ?>vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/venobox/venobox.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="<?php echo base_url(); ?>vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="<?php echo base_url(); ?>js/main.js"></script>

</body>

</html>