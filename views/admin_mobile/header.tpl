<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
          <link rel="stylesheet" type="text/css" href="<?php echo URL ?>views/admin_mobile/css/ui/jquery-ui.css" media="screen" />
          <link rel="stylesheet" type="text/css" href="<?php echo URL ?>views/admin_mobile/css/layout.css" media="screen" />
          <link rel="stylesheet" type="text/css" href="<?php echo URL ?>views/admin_mobile/css/ui.tabs.css" media="screen" />
          <script type="text/javascript" src="<?php echo URL ?>js/jquery.js"></script>
          <script type="text/javascript">
          	$(function() {
          		$("ul#modules li:last").addClass("last");
          		$("tr:nth-child(even)").addClass("even");
          	});
          </script>
          <title><?php echo $GLOBALS['CONFIG']['system']['system_title'] .' - '. @$title ?></title>
</head>

<body>
	<div id="logoProgress"></div>

	<div id="header">
		MobileCMS<br />
		<div class="info">

		</div>
	</div>

	<div id="navigation">
	<?php if(@$from != 'info'): ?>
		<ul id="modules">
		          <li><a href="<?php echo a_url('main/admin/config') ?>">Система</a></li>
		          <li><a href="<?php echo a_url('user/admin') ?>">Пользователи</a></li>
		          <li><a href="<?php echo a_url('modules/admin') ?>">Модули</a></li>
		          <li><a href="<?php echo a_url('index_page/admin') ?>">Главная</a></li>
		          <li><a href="<?php echo URL ?>">Просмотр сайта</a></li>
		</ul>
	<?php endif; ?>
	</div>

	<div id="main">
		<div id="title">
			<h2><?php echo @$title ?></h2>
		</div>

		<div id="content">

		<?php if(file_exists(ROOT .'modules/'. ROUTE_MODULE .'/views/admin/tasks.tpl') && @$from != 'info' && ROUTE_MODULE != 'user'): ?>
		<div class="box">
			<div class="inside">
				<?php $this->display('tasks') ?>
			</div>
		</div>
		<?php endif; ?>
