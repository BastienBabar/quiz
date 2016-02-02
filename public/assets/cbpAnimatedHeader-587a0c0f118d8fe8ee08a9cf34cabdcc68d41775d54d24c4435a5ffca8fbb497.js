/**
 * cbpAnimatedHeader.js v1.0.0
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 *
 * Copyright 2013, Codrops
 * http://www.codrops.com
 */
$(document).ready(function(){(function(){function n(){window.addEventListener("scroll",function(n){c||(c=!0,setTimeout(e,250))},!1)}function e(){var n=o();n>=i?classie.add(r,"navbar-shrink"):classie.remove(r,"navbar-shrink"),c=!1}function o(){return window.pageYOffset||t.scrollTop}var t=document.documentElement,r=document.querySelector(".navbar-fixed-top"),c=!1,i=300;n()})()});