synthesis = named.conf.zones

conf: domains/*
	rm $(synthesis)
	ls -1 domains | xargs -I {} echo -e 'zone "{}" {\n\ttype master;\n\tfile "/etc/bind/domains/{}";\n};\n' >> $(synthesis)
	/etc/init.d/bind9 reload
