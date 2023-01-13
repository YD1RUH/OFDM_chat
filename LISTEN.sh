clear
echo '' > process/message.txt
while true
do
#arecord -c 1 -f S16_LE -r 8000 -d 20 recorded.wav
rec audioProcess/recorded.wav rate 8k silence 1 0.1 3% 1 3.0 3%
./decode process/data audioProcess/recorded.wav
un=$(cat process/data)
echo "$un" > process/un.txt
iconv -f us-ascii -t utf-8 process/un.txt -c -o process/output.txt
clear
cat process/output.txt >> process/message.txt
echo ""
echo ""
#echo "press enter to listen again" && read a
clear
done
