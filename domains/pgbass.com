;
; BIND data file for pgbass.com
;
@       IN      SOA		ns1.pgbass.com. root.pgbass.com. (
									  4         ; Serial
								  1200         ; Refresh
								   180         ; Retry
							  2419200         ; Expire
								  1200 )       ; Default TTL

@		IN		NS		ns1.pgbass.com.
@		IN		NS		ns2.pgbass.com.
@		IN		MX		10	mail.pgbass.com.
@		IN		A		198.50.242.72
*		IN		CNAME pgbass.com.
