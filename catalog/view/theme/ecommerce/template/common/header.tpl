<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<!-- Start June edit -->
<script type="text/javascript" src="catalog/view/javascript/jquery/bootstrap.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/bootstrap.css" /> -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/bootstrap.min.css" />
<!-- <link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/bootstrap-theme.css" /> -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/bootstrap-theme.min.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/home/html.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/home/css_main.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ecommerce/stylesheet/home/forms.css" />




<!-- Finished June edit -->
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/knockout-3.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container_body" class="">
<div id="container_header">
  <div id="banner_1190x90_header" class="banner_header">
    <a class="close" onclick="$('#banner_1190x90_header').slideUp(); $.cookie('banner_hidden[header_0]', 1, { path: '/' });" href="javascript:;" title="Đóng"></a>
    <div id="myadBan_14357" class="first " style="width:1190px;height:90px;display:inline-block;background: #e9e9e9;position: relative;font-size: 0;text-align: center;overflow:hidden;" onmouseout="" onmouseover="">
    <a href="http://ad.vatgia.com/a/b_click.php?data=eyJiYW5faWQiOiIxNDM1NyIsInBvc19pZCI6IjE0MyIsIndlYl9pZCI6MywiYmFuX2xpbmsiOiJodHRwOlwvXC9oZWxwLnZhdGdpYS5jb21cL2xhbmRpbmctcGFnZVwvbWllbl9waGlfdmFuX2NodXllblwvIiwiY2F0X2lkIjowfQ--" target="_blank" style="" title="">
    <img src="catalog/view/theme/ecommerce/image/vuj1408011478.jpg" style="width : auto;">
    </a>
    </div>
  </div>
  <script type="text/javascript">
    // $(window).load(function(){
    // var headerBannerDomEle= $(document.getElementById("banner_1190x90_header"));
    // setTimeout(function(){ if(headerBannerDomEle.find("div").length) headerBannerDomEle.prepend('<a title="Đóng" class="close" href="javascript:;" onclick="$(\'#banner_1190x90_header\').slideUp(); $.cookie(\'banner_hidden[header_0]\', 1, { path: \'/\' });"></a>'); }, 0);
    // });
  </script>


  <div class="header_bar">
    <div class="container_width">
      <div class="fl">
        <a onshow="initMenu('product')" addclass="header_bar_simple_tip" hidearrow="1" js="loadMenuAjax('product')" class="simple_tip" href="/home/">Gian hàng</a>
        <a onshow="initMenu('raovat')" addclass="header_bar_simple_tip" hidearrow="1" js="loadMenuAjax('raovat')" class="simple_tip" href="/raovat/">Cá nhân</a>
        <a onshow="initMenu('hoidap')" addclass="header_bar_simple_tip" hidearrow="1" js="loadMenuAjax('hoidap')" class="simple_tip" href="/hoidap/">Hỏi đáp</a>
        <a addclass="header_bar_simple_tip header_bar_menu_extra" hidearrow="1" rel="#header_bar_menu_extra" class="simple_tip arrow" href="javascript:;">Thêm<b class="arrow_down"></b></a>
         <div class="plugin">
          <div style="text-indent: 0px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;" id="___plusone_0"><iframe width="100%" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" id="I0_1408159470805" name="I0_1408159470805" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;annotation=none&amp;size=medium&amp;origin=http%3A%2F%2Fvatgia.com&amp;url=http%3A%2F%2Fwww.vatgia.com%2F&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en.RmV27G4cP4g.O%2Fm%3D__features__%2Fam%3DEQ%2Frt%3Dj%2Fd%3D1%2Ft%3Dzcms%2Frs%3DAItRSTNGQGK1RCUwKhcSa_cdAdZcwHiy5Q#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1408159470805&amp;parent=http%3A%2F%2Fvatgia.com&amp;pfname=&amp;rpctoken=95848700" data-gapiattached="true" title="+1"></iframe></div>
          <script type="text/javascript">
          // (function(){
          // var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true; po.src = 'https://apis.google.com/js/plusone.js';
          // var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
          // })();
          </script>
           <iframe frameborder="0" allowtransparency="true" style="border:none; overflow:hidden; width:116px; height:20px; margin-left: 6px;" scrolling="no" src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2FVatgiaFanpage&amp;send=false&amp;layout=button_count&amp;width=113&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=20"></iframe>
          </div>
          <div class="hidden" id="header_bar_menu_extra">
            <a rel="nofollow" target="_blank" href="/home/shop.php" class="link first">Danh sách gian hàng</a><a rel="nofollow" target="_blank" href="/home/type.php?module=news&amp;iCat=425" class="link">Tin tức, thông báo từ Vatgia.com</a><a rel="nofollow" target="_blank" href="http://tintuc.vatgia.com/danhgia/" class="link">Đánh giá sản phẩm</a><a rel="nofollow" target="_blank" href="https://www.baokim.vn/" class="image baokim">BaoKim.vn</a><a rel="nofollow" target="_blank" href="http://www.cucre.vn/" class="image cucre">CucRe.vn</a><a rel="nofollow" target="_blank" href="http://www.mytour.vn/" class="image mytour">MyTour.vn</a><a rel="nofollow" target="_blank" href="http://www.nhanh.vn/" class="image nhanh">Nhanh.vn</a><a rel="nofollow" target="_blank" href="http://www.123doc.vn/" class="image doc">123Doc.vn</a><a rel="nofollow" target="_blank" href="http://www.webbnc.net/" class="image webbnc">WebBNC.net</a><a rel="nofollow" target="_blank" href="http://www.iki.vn/" class="image iki">IKI.vn</a><a rel="nofollow" target="_blank" href="http://www.babymama.vn/" class="image babymama">BabyMama.vn</a>
            </div>
          </div>
          <div class="fr">
            <a js="loadSupportOnline()" addclass="header_bar_simple_tip" hidearrow="1" rel="nofollow" href="javascript:;" class="simple_tip icon help">Hỗ trợ</a>
            <?php if (!$logged) { ?>
            <a addclass="header_bar_simple_tip header_bar_drop_link" hidearrow="1" rel="#header_register" target="_blank" href="https://id.vatgia.com/dang-ky/vatgia/?service=vatgia&amp;_cont=http://vatgia.com" class="simple_tip icon register">Đăng ký</a>
            <div class="hidden" id="header_register">
            <a target="_blank" rel="nofollow" href="https://id.vatgia.com/dang-ky/vatgia/?service=vatgia&amp;_cont=http://vatgia.com">Đăng ký thành viên</a>
            <a target="_blank" rel="nofollow" href="https://id.vatgia.com/dang-ky/vatgia/?service=vatgia&amp;_cont=http://vatgia.com&amp;estore=1">Đăng ký gian hàng</a>  
          </div>
            <?php echo $text_welcome; ?>
            <?php } else { ?>
            <?php echo $text_logged; ?>
            <?php } ?>
          <!-- <a oncleanup="simpleTipLoginOnCleanup()" onshow="simpleTipLoginOnShow()" addclass="header_bar_simple_tip" hidearrow="1" rel="#header_login" href="javascript:;" class="simple_tip icon user">Đăng nhập</a> -->
          <script type="text/javascript">
            // function simpleTipLoginOnShow(){
            // var domEle= $(document.getElementById("simple_tip_content"));
            // domEle.find("input[name='loginname']").focus().val(vatgiaConfig.login_config.default_loginname);
            // domEle.find("input[name='password']").val(vatgiaConfig.login_config.default_password);
            // }
            // function simpleTipLoginOnCleanup(){
            // var domEle= $(document.getElementById("simple_tip_content"));
            // vatgiaConfig.login_config.default_loginname= domEle.find("input[name='loginname']").val()
            // vatgiaConfig.login_config.default_password= domEle.find("input[name='password']").val()
            // }
          </script>
          <div class="hidden" id="header_login">
            <form onsubmit="return checkForm(this.name, vatgiaConfig.login_config.array_check_form);" method="post" action="/home/act_login.php?redirect=L2hvbWUv" name="header_login" class="header_login">
              <div><input type="text" placeholder="Tên đăng nhập" autocomplete="off" name="loginname" class="form_control"></div>
              <div><input type="password" placeholder="Mật khẩu" name="password" class="form_control"></div>
              <div><input type="checkbox" value="1" name="remember_password"><span onclick="$(this).prev().click()" class="text">Nhớ mật khẩu</span></div>
              <div><input type="submit" value="Đăng nhập" class="form_button"></div>
              <div><a rel="nofollow" href="/home/lost_password.php" class="text_link">Quên mật khẩu?</a></div>
              <div class="login_other">
                <div class="text">Hoặc đăng nhập bằng:</div>
                <a rel="nofollow" href="https://id.vatgia.com/dang-nhap/facebook/?_cont=http%3A%2F%2Fvatgia.com%2Fhome%2Fidvg_return.php%3Fredirect%3DL2hvbWUv&amp;service=vatgia&amp;remember=1" class="facebook"></a>
                <a rel="nofollow" href="https://id.vatgia.com/dang-nhap/google/?_cont=http%3A%2F%2Fvatgia.com%2Fhome%2Fidvg_return.php%3Fredirect%3DL2hvbWUv&amp;service=vatgia&amp;remember=1" class="google"></a>
                <span class="clear"></span>
              </div>
            <input type="hidden" value="login" name="user_login">
          </form>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>


  <div class="header_content container_width">
    <?php if ($logo) { ?>
    <div class="logo">
      <a href="<?php echo $home; ?>"><img src="http://static.vatgia.com/ccss/20140810/v4/logo.png"></a>
    </div>
    <?php } ?>
    <div class="banner" id="banner_190x50">
      <div id="myadBan_14308" style="width:190px;height:50px;display:inline-block;background: none;position: relative;font-size: 0;text-align: center;overflow:hidden;" class="first " onmouseout="" onmouseover="">
        <a href="http://ad.vatgia.com/a/b_click.php?data=eyJiYW5faWQiOiIxNDMwOCIsInBvc19pZCI6IjE0MCIsIndlYl9pZCI6MywiYmFuX2xpbmsiOiJodHRwOlwvXC93d3cudmF0Z2lhLmNvbSIsImNhdF9pZCI6MH0-" target="_blank" style="" title="">
          <img src="http://media.myad.vn/photo/users_b_upload/2014/08/ylb1408156029.jpg" style="width : auto;">
        </a>
      </div>
    </div>
    <div class="search">
      <script type="text/javascript">
      // var arrCtrlSearch= Array("0{#}{#}keyword{#}Từ khóa tìm kiếm");
      // $(function(){ setAutoComplete(); });
      // </script>
      <form onsubmit="return checkForm(this.name, arrCtrlSearch);" method="get" action="/home/quicksearch.php" name="header_search" id="header_search">
        <div class="border">
          <a rel="#header_search_option" href="javascript:;" class="simple_tip" id="header_search_text">Sản phẩm<b class="arrow_down"></b></a>
          <a onclick="changeLanguage($(this))" href="javascript:;" class="language_vn"></a>
          <input type="submit" value="Tìm kiếm" class="button">
          <div class="keyword">
            <div><input type="text" autocomplete="off" maxlength="100" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" name="keyword" id="header_search_keyword" class="ac_input"></div>
          </div>
          <div class="clear"></div>
        </div>
        <input type="hidden" disabled="disabled" value="search" name="view" id="search_shop">
        <input type="hidden" disabled="disabled" name="iCat" id="search_category">
      </form>
      <div class="hidden" id="header_search_option">
        <ul class="header_search_option">
        <li class="list"><a onclick="changeSearchOption('module', 0, $(this))" rel="nofollow" href="javascript:;">Sản phẩm</a></li><li class="list"><a onclick="changeSearchOption('module', 1, $(this))" rel="nofollow" href="javascript:;">Rao vặt</a></li><li class="list"><a onclick="changeSearchOption('module', 2, $(this))" rel="nofollow" href="javascript:;">Hỏi đáp</a></li><li class="list"><a onclick="changeSearchOption('module', 3, $(this))" rel="nofollow" href="javascript:;">Cửa hàng</a></li></ul>
      </div>
     </div>
      <div class="clear"></div>
    </div>

  <?php echo "Ngon ngữ: ".$language; ?>
  <!-- <?php echo $currency; ?> -->
  <?php //echo $cart; ?>

  <!-- <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div> -->

  <?php if ($categories) { ?>
  <div id="menu">
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php if ($category['children']) { ?>
        <div>
          <?php for ($i = 0; $i < count($category['children']);) { ?>
          <ul>
            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
            <?php for (; $i < $j; $i++) { ?>
            <?php if (isset($category['children'][$i])) { ?>
            <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
        </div>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <?php if ($error) { ?>
      
      <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
      
  <?php } ?>
  <div id="notification"></div>
</div>