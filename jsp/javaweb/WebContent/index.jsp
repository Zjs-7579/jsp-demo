<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>index</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel='stylesheet prefetch' href='http://www.jq22.com/jquery/font-awesome.4.6.0.css'>
	<link rel='stylesheet prefetch' href='css/animate.min.css'>
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="htmleaf-container">
		
		<div id='ss_menu'>
		  <div>
		    <i><a href='./board/login.jsp'>登录</a></i>
		  </div>
		  <div>
		    <i><a href='./board/index.jsp'>留言板</a></i>
		  </div>
		  <div>
		    <i><a href='./assume/demo.jsp'>猜大小</a></i>
		  </div>
		  <div>
		    <i><a href='./file/index.jsp'>文件上传</a></i>
		  </div>
		  <div>
		    <i><a href='./assume/demo.jsp'></a></i>
		  </div>
		  <div class='menu'>
		    <div class='share' id='ss_toggle' data-rot='180'>
		      <div class='circle'></div>
		      <div class='bar'></div>
		    </div>
		  </div>
		</div>
		
	</div>
	
	<script src="http://www.jq22.com/jquery/2.1.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
	<script>
	$(document).ready(function (ev) {
	    var toggle = $('#ss_toggle');
	    var menu = $('#ss_menu');
	    var rot;
	    $('#ss_toggle').on('click', function (ev) {
	        rot = parseInt($(this).data('rot')) - 180;
	        menu.css('transform', 'rotate(' + rot + 'deg)');
	        menu.css('webkitTransform', 'rotate(' + rot + 'deg)');
	        if (rot / 180 % 2 == 0) {
	            toggle.parent().addClass('ss_active');
	            toggle.addClass('close');
	        } else {
	            toggle.parent().removeClass('ss_active');
	            toggle.removeClass('close');
	        }
	        $(this).data('rot', rot);
	    });
	    menu.on('transitionend webkitTransitionEnd oTransitionEnd', function () {
	        if (rot / 180 % 2 == 0) {
	            $('#ss_menu div i').addClass('ss_animate');
	        } else {
	            $('#ss_menu div i').removeClass('ss_animate');
	        }
	    });
	});
	</script>
</body>
</html>