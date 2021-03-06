default: stylesheet tracker admin

stylesheet: frontend/less/style.less
	lessc frontend/less/style.less > kysat/static/css/style.css

tracker: sgp4 isat-master/viz/cesium/ isat-master/viz/static/ isat-master/viz/tle/custom.txt isat-master/viz/index.html isat-master/viz/index.html isat-master/viz/tle.js isat-master/viz/index_crippled.js isat-master/viz/favicon.ico isat-master/viz/not_supported.html
	mkdir -p kysat/static/tle/
	mkdir -p kysat/static/images/
	cp -r isat-master/viz/cesium/ kysat/static/
	cp -r isat-master/viz/static/* kysat/static/
	cp isat-master/viz/tle/custom.txt kysat/static/tle/
	cp isat-master/viz/index.html kysat/templates/index.html
	cp isat-master/viz/*.js kysat/static/js/
	cp isat-master/viz/favicon.ico kysat/static/
	cp -r isat-master/viz/Images/* kysat/static/images/


sgp4: isat-master/js/angl.js isat-master/js/compat.js isat-master/js/constastro.js isat-master/js/constmath.js isat-master/js/days2mdh.js isat-master/js/dpper.js isat-master/js/dscom.js isat-master/js/dsinit.js isat-master/js/dspace.js isat-master/js/getgravc.js isat-master/js/gstime.js isat-master/js/initl.js isat-master/js/invjday.js isat-master/js/jday.js isat-master/js/mag.js isat-master/js/math_utils.js isat-master/js/newtonnu.js isat-master/js/rv2coe.js isat-master/js/sgp4.js isat-master/js/sgp4init.js isat-master/js/sprintf.js isat-master/js/twoline2rv.js
	cp isat-master/js/angl.js kysat/static/js/
	cp isat-master/js/compat.js kysat/static/js/
	cp isat-master/js/constastro.js kysat/static/js/
	cp isat-master/js/constmath.js kysat/static/js/
	cp isat-master/js/days2mdh.js kysat/static/js/
	cp isat-master/js/dpper.js kysat/static/js/
	cp isat-master/js/dscom.js kysat/static/js/
	cp isat-master/js/dsinit.js kysat/static/js/
	cp isat-master/js/dspace.js kysat/static/js/
	cp isat-master/js/getgravc.js kysat/static/js/
	cp isat-master/js/gstime.js kysat/static/js/
	cp isat-master/js/initl.js kysat/static/js/
	cp isat-master/js/invjday.js kysat/static/js/
	cp isat-master/js/jday.js kysat/static/js/
	cp isat-master/js/mag.js kysat/static/js/
	cp isat-master/js/math_utils.js kysat/static/js/
	cp isat-master/js/newtonnu.js kysat/static/js/
	cp isat-master/js/rv2coe.js kysat/static/js/
	cp isat-master/js/sgp4.js kysat/static/js/
	cp isat-master/js/sgp4init.js kysat/static/js/
	cp isat-master/js/sprintf.js kysat/static/js/
	cp isat-master/js/twoline2rv.js kysat/static/js/

admin: /usr/local/lib/python2.7/dist-packages/django/contrib/admin/static/admin
	cp -r /usr/local/lib/python2.7/dist-packages/django/contrib/admin/static/admin kysat/static/admin


clean: kysat/static/css/style.css
	rm kysat/static/css/style.css
	rm kysat/static/js/angl.js kysat/static/js/compat.js kysat/static/js/constastro.js kysat/static/js/constmath.js kysat/static/js/days2mdh.js kysat/static/js/dpper.js kysat/static/js/dscom.js kysat/static/js/dsinit.js kysat/static/js/dspace.js kysat/static/js/getgravc.js kysat/static/js/gstime.js kysat/static/js/initl.js kysat/static/js/invjday.js kysat/static/js/jday.js kysat/static/js/mag.js kysat/static/js/math_utils.js kysat/static/js/newtonnu.js kysat/static/js/rvcoe.js kysat/static/js/sgp4.js kysat/static/js/sgp4init.js kysat/static/js/sprintf.js kysat/static/js/twoline2rv.js
	rm -r kysat/static/admin

