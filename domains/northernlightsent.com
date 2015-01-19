;
; BIND data file for baryon.it
;
@       IN      SOA     ns1.baryon.ca. root.baryon.it. (
									  1         ; Serial
								  1200         ; Refresh
								   180         ; Retry
							  2419200         ; Expire
								  1200 )       ; Default TTL

@		IN		NS		ns1.baryon.ca.
@		IN		NS		ns2.baryon.ca.
@		IN		MX	10	mail
mail  IN A  216.244.76.32
@  IN A  216.244.76.32
*	IN	CNAME northernlightsent.com
