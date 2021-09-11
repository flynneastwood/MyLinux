
#!/bin/bash
from="aflynneastwood@gmail.com"
to="aflynneastwood@gmail.com"
subject="Howdy!"
message="Aaaaaah! I can send an email with bash!"

mail "$subject"  "$from" "$to" <<< "$message"

#WIP DOES NOT WORK YET
