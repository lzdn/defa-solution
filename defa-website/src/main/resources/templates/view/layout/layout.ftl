<#global basePath=springMacroRequestContext.contextPath>
<#include "staticLink.ftl" />
<#macro webLayout bodyclass="" css=[""] title="德发湘菜" keywords="" description="" pageId="" >
<!DOCTYPE html>
<html lang="zh-cn">
<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>${title!}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta content="description" name="description">
  <meta content="keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="${basePath}/static/favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="${basePath}/static/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${basePath}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="${basePath}/static/pages/css/animate.css" rel="stylesheet">
  <link href="${basePath}/static/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="${basePath}/static/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="${basePath}/static/pages/css/components.css" rel="stylesheet">
  <link href="${basePath}/static/pages/css/slider.css" rel="stylesheet">
  <link href="${basePath}/static/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="${basePath}/static/corporate/css/style.css" rel="stylesheet">
  <link href="${basePath}/static/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="${basePath}/static/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="${basePath}/static/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  <#list css as val>
  	<link rel="stylesheet" href="${basePath}/static/${val}">
  </#list>
	<#include "layout.js.ftl"/>
</head>
<body class="${bodyclass!}">
<#include "header.ftl"/>
<#include "banner.ftl"/>
<#nested/>
<#include "footer.ftl"/>
</#macro>
<#macro js >
<script src="${basePath}/static/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${basePath}/static/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="${basePath}/static/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
<script src="${basePath}/static/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<script src="${basePath}/static/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="${basePath}/static/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="${basePath}/static/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src='${basePath}/static/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="${basePath}/static/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

<script src="${basePath}/static/corporate/scripts/layout.js" type="text/javascript"></script>
<script src="${basePath}/static/pages/scripts/bs-carousel.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();    
        Layout.initOWL();
        Layout.initImageZoom();
        Layout.initTouchspin();
        Layout.initTwitter();
    });
</script>
<#nested/>
</body>
</html>
</#macro>