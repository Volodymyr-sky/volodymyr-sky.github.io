<div id="footer">
	
		<!-- Stop Editing After this! -->
	</div>			
</div>

</div><!-- End #container -->
</div><!-- End #wrapper -->
<div id="footer_info">
	<?php echo $text_powered_by; ?>  
	<?php echo $google_analytics; ?>

</div>

<script>   
let openMenuBtn = document.querySelector('.open-menu');
function onOpenMenu() {
    let mainNavigation = document.querySelector('#main_navigation');
    let topNavigation = document.querySelector('.top-navigation');
    mainNavigation.classList.toggle('show-block');
    topNavigation.classList.toggle('show-block');
    openMenuBtn.classList.toggle('opened-btn');
};
openMenuBtn.addEventListener('click', onOpenMenu);

let openRightCol = document.querySelector('.open-right-col');
function onOpenRightCol() {
    let rightCol = document.querySelector('#column_right');
    rightCol.classList.toggle('show-block');
};
openRightCol.addEventListener('click', onOpenRightCol);

</script>

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter5384974 = new Ya.Metrika(5384974);
             yaCounter5384974.clickmap(true);
             yaCounter5384974.trackLinks(true);
        
        } catch(e) { }
    });
})(window, 'yandex_metrika_callbacks');
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/5384974" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</body>
</html>