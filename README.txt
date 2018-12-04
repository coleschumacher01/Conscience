Conscience

Authors Robin Varghese, MattDeavers, Alex Morgan, Cole Schumacher

There are five attacks listed in this in directory only the last 3 function correctly
to execute these attacks simply run any command like the folowing regex.

bash attack_[3-5].sh

Unfortunatly, while the scripts may execute, they will likly not work on another
network without being edited due to the specified IP adresses included in them. If you
intend to test the scripts on your own network, you will need to set up a DNS server
and a victim server. The IP adresses of the two should then be plugged into the files
and flood.py for all of the scripts to work correctly. Then once the script is running,
attempt to connect to a web server through DNS. If the DNS server was setup to simulate
a real world delay (ours was delayed by 100ms), then the script should be able to send
the incorrect IP sucessfully a majority of the time.

These three files have different implementations of the same basic script in order to
test the effectiveness of various implementations. The first (attack_3) just relies on
arspoof and dnspoof and achieved a success rate of 77% over repeated tests. attack_4
also used arpspoof and dnsspoof, but additionally ran a python script (flood.py) to 
attempt to overload the DNS server with constant queries. This addition seems to have
reduced the effectiveness of the script down to 72% or a 5% decrease from the firrst 
script. The last script, attack_5, used a c file (cflood) to flood the DNS server 
instead of a python file. This brought the success rate back up to 77%.

Demo: youtube.com/watch?v=T72EEVVh7WY
Github: github.com/coleschumacher01/Conscience
