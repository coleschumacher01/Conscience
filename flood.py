r/bin/python

import dns.resolver

res = dns.resolver.Resolver()
res.nameservers = ['10.0.0.2']

while True:
	res.query('web-legit')

