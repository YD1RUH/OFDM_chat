clear
read -p "Input callsign: " call
while true
do
clear
echo    "CALLSIGN : $call"
read -p "MESSAGES : " msg
echo "CALLSING: $call" > process/msg.txt
echo "MESSAGES: $msg" >> process/msg.txt
echo "CALLSING: $call" >> process/message.txt
echo "MESSAGES: $msg" >> process/message.txt
echo "" >> process/message.txt
./encode audioProcess/encoded.wav 8000 16 1 process/msg.txt 1800 $call
rigctl -m 2 T 1
aplay audioProcess/encoded.wav
rigctl -m 2 T 0
sleep 0.5
done
