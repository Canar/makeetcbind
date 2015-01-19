synthesis = named.conf.default-zones

conf: inc/head inc/tail domains/*
	cp inc/head $(synthesis)
	ls -1 domains | xargs -I {} echo -e 'zone "{}" {\n\ttype master;\n\tfile "/etc/bind/domains/{}";\n};\n' >> $(synthesis)
	cat inc/tail >> $(synthesis)
	/etc/init.d/bind9 reload
