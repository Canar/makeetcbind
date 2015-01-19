;
; BIND data file for cuntoso.com
;
$TTL 3600
@       IN      SOA     ns1.baryon.ca. root.cuntoso.com. (
									 01         ; Serial
								  1200         ; Refresh
								   180         ; Retry
							  2419200         ; Expire
								  3600 )       ; Default TTL

@		IN		NS		ns1.baryon.ca.
@		IN		NS		ns2.baryon.ca.
@		IN		MX	0	cuntoso-com.mail.protection.outlook.com.
autodiscover IN CNAME autodiscover.outlook.com.
lyncdiscover IN CNAME webdir.online.lync.com.
sip IN CNAME sipdir.online.lync.com.
msoid IN CNAME clientconfig.microsoftonline-p.net.
_sip._tls IN SRV 100 1 443 sipdir.online.lync.com.
_sipfederationtls._tcp IN SRV 100 1 5061 sipfed.online.lync.com.
@ IN TXT "v=spf1 include:spf.protection.outlook.com -all"





 



