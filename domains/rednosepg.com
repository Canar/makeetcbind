;
; BIND data file for rednosepg.com
;
@       IN      SOA		ns1.rednosepg.com. root.rednosepg.com. (
									  1         ; Serial
								  1200         ; Refresh
								   180         ; Retry
							  2419200         ; Expire
								  1200 )       ; Default TTL

@		IN		NS		ns1.rednosepg.com.
@		IN		NS		ns2.rednosepg.com.
@		IN		MX	10	mail.rednosepg.com.
@	IN	A	208.77.98.67
ns1	IN	A	208.77.98.67
ns2	IN A	208.77.98.68
*	IN	CNAME rednosepg.com.
