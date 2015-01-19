;
; BIND data file for manthejackhammers.com and protonica.ca
;
@       IN      SOA		ns1.manthejackhammers.com. root.benjamincook.ca. (
									  2         ; Serial
								  1200         ; Refresh
								   180         ; Retry
							  2419200         ; Expire
								  1200 )       ; Default TTL

@		IN		NS		ns1.manthejackhammers.com.
@		IN		NS		ns2.manthejackhammers.com.
@		IN		MX	10	mail.manthejackhammers.com.
@	IN	A	208.77.98.67
ns1	IN	A	208.77.98.67
ns2	IN A	208.77.98.68
*	IN	CNAME manthejackhammers.com.
