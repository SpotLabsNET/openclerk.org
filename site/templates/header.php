<!DOCTYPE HTML>
<html>
<head>
  <title><?php echo htmlspecialchars($title); ?></title>
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo url_for("favicon.ico"); ?>">
  <?php \Pages\PageRenderer::includeStylesheets(); ?>
  <?php \Pages\PageRenderer::includeJavascripts(); ?>
</head>
<body>

<?php \Pages\PageRenderer::requireTemplate("navigation"); ?>

<div class="content">

