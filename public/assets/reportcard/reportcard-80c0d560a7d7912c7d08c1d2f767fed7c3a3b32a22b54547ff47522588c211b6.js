$(document).ready(function(){var e=function(e,o){function r(){this.constructor=e}for(var a in o)t.call(o,a)&&(e[a]=o[a]);return r.prototype=o.prototype,e.prototype=new r,e.__super__=o.prototype,e},t={}.hasOwnProperty;$.ajaxPrefilter(function(e,t,o){var r,a,s,n,c;a=function(){var e,t;t="modernizr";try{return localStorage.setItem(t,t),localStorage.removeItem(t),!0}catch(o){return e=o,!1}},a()&&e.localCache&&(s=e.cacheTTL||5,r=e.cacheKey||e.url.replace(/jQuery.*/,"")+e.type+(e.data||""),e.isCacheValid&&!e.isCacheValid()&&localStorage.removeItem(r),n=localStorage.getItem(r+"cachettl"),n&&n<+new Date&&(localStorage.removeItem(r),localStorage.removeItem(r+"cachettl"),n="expired"),c=localStorage.getItem(r),c?(0===e.dataType.indexOf("json")&&(c=JSON.parse(c)),e.success(c),o.abort()):(e.success&&(e.realsuccess=e.success),e.success=function(t){var o,a;a=t,0===this.dataType.indexOf("json")&&(a=JSON.stringify(t));try{localStorage.setItem(r,a)}catch(s){o=s,localStorage.removeItem(r),localStorage.removeItem(r+"cachettl"),e.cacheError&&e.cacheError(o,r,a)}e.realsuccess&&e.realsuccess(t)},n&&"expired"!==n||localStorage.setItem(r+"cachettl",+new Date+36e5*s)))}),function(t){return t.fn.reportCard=function(o){var r,a,s,n,c,u;return u=function(e){return e.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",")},a=function(){function e(e){this.userName=e.userName,this.site=e.site,this.badgesAmount=e.badgesAmount,this.tooltips=e.tooltips}return e.prototype.build=function(e){var r,a,s;a=e.badges.slice(-o.badgesAmount),s=100/(a.length+1)+"%",r="<h3>I have passed "+e.badge_count+" lessons and scored "+u(e.points_total)+" points at "+e.site+'!</h3>\n<p>Check out some of my last passed course content at the badges below: </p>\n<ul class="badges">',a.forEach(function(t){return r+='<li style="width: '+s+';" title="'+t.label+'">\n  <a href="'+e.profile_url+'" target="_blank" data-toggle="tooltip" data-placement="top" >\n    <img src="'+t.icon_url+'" alt="'+t.label+'"/>\n  </a>\n</li>'}),r+="</ul>",o.$element.html(r),o.tooltips&&o.$element.each(function(e,o){return t(o).find("li").tooltip()})},e.prototype.transform=function(e){return e},e.prototype.getData=function(e){var r;return r=this,t.ajax({type:"GET",url:this.url,localCache:!0,cacheTTL:.5,cacheKey:"reportcard"+o.site+o.userName,dataType:e.dataType,crossDomain:!0,async:!0,beforeSend:function(){o.$element.html('<div class="spinner"></div>')},success:function(e){return r.build(r.transform(e))}})},e}(),s=function(t){function o(e){o.__super__.constructor.call(this,e),this.url="https://teamtreehouse.com/"+this.userName+".json"}return e(o,t),o.prototype.getData=function(){return o.__super__.getData.call(this,{dataType:"json"})},o.prototype.transform=function(e){return{site:"Treehouse",username:e.profile_name,profile_url:e.profile_url,points:e.points,points_total:e.points.total,badge_count:e.badges.length,badges:e.badges.map(function(e){return{courses:e.courses,course_count:e.courses.length,earned_date:Date.parse(e.earned_date),icon_url:e.icon_url,label:e.name,url:e.url}})}},o}(a),r=function(t){function o(e){o.__super__.constructor.call(this,e),this.url="https://www.codeschool.com/users/"+this.userName+".json"}return e(o,t),o.prototype.getData=function(){return o.__super__.getData.call(this,{dataType:"jsonp"})},o.prototype.transform=function(e){return{site:"Code School",username:e.user.username,profile_url:"https://www.codeschool.com/users/"+e.user.username,points:void 0,points_total:e.user.total_score,badge_count:e.badges.length,badges:e.badges.map(function(e){return{courses:void 0,course_count:void 0,earned_date:void 0,icon_url:e.badge,label:e.name,url:e.course_url}})}},o}(a),o.$element=this,o.badgesAmount=o.badgesAmount?o.badgesAmount:5,o.userName||alert("You need to pass in a username"),o.site||alert("You need to pass in a site"),"treehouse"===o.site?(c=new s(o),c.getData()):"codeschool"===o.site?(n=new r(o),n.getData()):void 0}}(jQuery),$(".report-card.codeschool").reportCard({userName:"bibar",site:"codeschool",badgesAmount:15})});