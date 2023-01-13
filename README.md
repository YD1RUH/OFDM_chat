# OFDM_chat
sending short messages using OFDM modulation

## Step by step
1. build your own `encode` and `decode` binary form source : https://github.com/aicodix/modem
2. put your binary to this folder/directory
3. open 3 terminal.
   - first terminal run `bash RUN.sh`
   - second terminal run `bash LISTEN.sh`
   - third terminal run `tail -f process/message.txt`
   
## note
1. if you want to run the script with transciever, run the `rigctld` first, so the script will activated ptt via `rigctl -m 2 T 1`
2. if you want to run without transciever, just comment the line that contain `rigctl -m 2 T 1` and `rigctl -m 2 T 0` at the run script
