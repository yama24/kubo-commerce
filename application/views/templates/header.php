<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/bootstrap-4.4.1-dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/app.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();  ?>assets/css/app-responsive.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();  ?>assets/css/<?= $css;  ?>.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();  ?>assets/css/<?= $responsive;  ?>.css">
	<link rel="shortcut icon" href="<?= base_url();  ?>assets/images/logo/favicon.png" type="image/x-icon" />
	<script src="<?= base_url(); ?>assets/js/jquery.min.js"></script>
	<script src="<?= base_url(); ?>assets/js/2baad1d54e.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="<?= base_url();  ?>assets/icofont/icofont.min.css">
	<link href="<?= base_url(); ?>assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/slick.css" />
	<script src="<?= base_url(); ?>assets/js/sweetalert.min.js"></script>
	<link rel="stylesheet" href="<?= base_url(); ?>assets/select2-4.0.6-rc.1/dist/css/select2.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/lightbox2-2.11.1/dist/css/lightbox.css">
	<title><?= $title ?></title>
	<style>
		/* schoolbell-regular - latin */
		@font-face {
			font-family: 'Schoolbell';
			font-style: normal;
			font-weight: 400;
			src: url('/assets/fonts/schoolbell-v11-latin-regular.eot');
			/* IE9 Compat Modes */
			src: local('Schoolbell Regular'), local('Schoolbell-Regular'),
				url('/assets/fonts/schoolbell-v11-latin-regular.eot?#iefix') format('embedded-opentype'),
				/* IE6-IE8 */
				url('/assets/fonts/schoolbell-v11-latin-regular.woff2') format('woff2'),
				/* Super Modern Browsers */
				url('/assets/fonts/schoolbell-v11-latin-regular.woff') format('woff'),
				/* Modern Browsers */
				url('/assets/fonts/schoolbell-v11-latin-regular.ttf') format('truetype'),
				/* Safari, Android, iOS */
				url('/assets/fonts/schoolbell-v11-latin-regular.svg#Schoolbell') format('svg');
			/* Legacy iOS */
		}
		/* boogaloo-regular - latin */
		@font-face {
			font-family: 'Boogaloo';
			font-style: normal;
			font-weight: 400;
			src: url('/assets/fonts/boogaloo-v12-latin-regular.eot');
			/* IE9 Compat Modes */
			src: local('Boogaloo Regular'), local('Boogaloo-Regular'),
				url('/assets/fonts/boogaloo-v12-latin-regular.eot?#iefix') format('embedded-opentype'),
				/* IE6-IE8 */
				url('/assets/fonts/boogaloo-v12-latin-regular.woff2') format('woff2'),
				/* Super Modern Browsers */
				url('/assets/fonts/boogaloo-v12-latin-regular.woff') format('woff'),
				/* Modern Browsers */
				url('/assets/fonts/boogaloo-v12-latin-regular.ttf') format('truetype'),
				/* Safari, Android, iOS */
				url('/assets/fonts/boogaloo-v12-latin-regular.svg#Boogaloo') format('svg');
			/* Legacy iOS */
		}
	</style>
</head>
<body>
	<div class="loading-animation-screen">
		<div class="overlay-screen"></div>
		<img src="<?= base_url(); ?>assets/images/icon/loading.gif" alt="loading.." class="img-loading">
	</div>
	<?php
	$setting = $this->db->get('settings')->row_array();
	$dateNow = date('Y-m-d H:i');
	$dateDB = $setting['promo_time'];
	$dateDBNew = str_replace("T", " ", $dateDB);
	if ($dateNow >= $dateDBNew) {
		$this->db->set('promo', 0);
		$this->db->update('settings');
	}
	?>
	<?php if ($this->config->item('icon_wa')) { ?>
		<a href="https://wa.me/<?= $this->config->item('whatsappv2') ?>" target="_blank"><img src="<?= base_url(); ?>assets/images/icon/whatsapp.svg" alt="logo-whatsapp" class="icon-whatsapp"></a>
	<?php } ?>