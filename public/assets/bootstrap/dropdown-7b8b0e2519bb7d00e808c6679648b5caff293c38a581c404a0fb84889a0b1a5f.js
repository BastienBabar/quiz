/* ========================================================================
 * Bootstrap: dropdown.js v3.3.2
 * http://getbootstrap.com/javascript/#dropdowns
 * ========================================================================
 * Copyright 2011-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */
+function(t){"use strict";function o(o){o&&3===o.which||(t(r).remove(),t(a).each(function(){var n=t(this),r=e(n),a={relatedTarget:this};r.hasClass("open")&&(r.trigger(o=t.Event("hide.bs.dropdown",a)),o.isDefaultPrevented()||(n.attr("aria-expanded","false"),r.removeClass("open").trigger("hidden.bs.dropdown",a)))}))}function e(o){var e=o.attr("data-target");e||(e=o.attr("href"),e=e&&/#[A-Za-z]/.test(e)&&e.replace(/.*(?=#[^\s]*$)/,""));var n=e&&t(e);return n&&n.length?n:o.parent()}function n(o){return this.each(function(){var e=t(this),n=e.data("bs.dropdown");n||e.data("bs.dropdown",n=new d(this)),"string"==typeof o&&n[o].call(e)})}var r=".dropdown-backdrop",a='[data-toggle="dropdown"]',d=function(o){t(o).on("click.bs.dropdown",this.toggle)};d.VERSION="3.3.2",d.prototype.toggle=function(n){var r=t(this);if(!r.is(".disabled, :disabled")){var a=e(r),d=a.hasClass("open");if(o(),!d){"ontouchstart"in document.documentElement&&!a.closest(".navbar-nav").length&&t('<div class="dropdown-backdrop"/>').insertAfter(t(this)).on("click",o);var i={relatedTarget:this};if(a.trigger(n=t.Event("show.bs.dropdown",i)),n.isDefaultPrevented())return;r.trigger("focus").attr("aria-expanded","true"),a.toggleClass("open").trigger("shown.bs.dropdown",i)}return!1}},d.prototype.keydown=function(o){if(/(38|40|27|32)/.test(o.which)&&!/input|textarea/i.test(o.target.tagName)){var n=t(this);if(o.preventDefault(),o.stopPropagation(),!n.is(".disabled, :disabled")){var r=e(n),d=r.hasClass("open");if(!d&&27!=o.which||d&&27==o.which)return 27==o.which&&r.find(a).trigger("focus"),n.trigger("click");var i=" li:not(.divider):visible a",s=r.find('[role="menu"]'+i+', [role="listbox"]'+i);if(s.length){var p=s.index(o.target);38==o.which&&p>0&&p--,40==o.which&&p<s.length-1&&p++,~p||(p=0),s.eq(p).trigger("focus")}}}};var i=t.fn.dropdown;t.fn.dropdown=n,t.fn.dropdown.Constructor=d,t.fn.dropdown.noConflict=function(){return t.fn.dropdown=i,this},t(document).on("click.bs.dropdown.data-api",o).on("click.bs.dropdown.data-api",".dropdown form",function(t){t.stopPropagation()}).on("click.bs.dropdown.data-api",a,d.prototype.toggle).on("keydown.bs.dropdown.data-api",a,d.prototype.keydown).on("keydown.bs.dropdown.data-api",'[role="menu"]',d.prototype.keydown).on("keydown.bs.dropdown.data-api",'[role="listbox"]',d.prototype.keydown)}(jQuery);