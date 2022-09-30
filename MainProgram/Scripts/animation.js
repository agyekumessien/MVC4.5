/*<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js">
    </script>
   <script type="text/javascript" src="js/CSSAnimate/jquery.mb.browser.min.js"></script>
   <script type="text/javascript" src="js/CSSAnimate/jquery.mb.CSSAnimate.js">
   </script>*/
   
       $(function(){
           if (self.location.href == top.location.href){
               var logo=$("<a href='https://pupunzi.com' style='position:absolute;top:10px;left:10px;z-index:1000'><img id='logo' border='0' src='https://pupunzi.com/images/logo.png' alt='mb.ideas.repository'></a>");
               $("body").append(logo);
           }
       });

