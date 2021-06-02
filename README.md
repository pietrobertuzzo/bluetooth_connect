# Bt connect
## Bash script for seamless connect/disconnect to my bluetooth headset.

This script was created to allow me to easily toggle the connection to my bluetooth headset when I want to, for example, listen to something on my phone.

My headset allows for 2 simultaneous connections to different devices, switching between them when an audio stream is detected. For some reason, though, this won't work with (my) linux machine, it seams that even when no sound is being played, my computer provides a constant audio stream to the headset. Rather than trying to fix it, dealing with pulseaudio (which I'm nowhere near knoledgeble enough on the GNU/Linux ecosystem), I decided to work around it making it easy to connect/disconnect when I want to listen to something in the other device, which is always connected.

## Usage
` /path/to/repository/bt `

Yeah. That's about it.

To customize to your device, change the MAC address where indicated on the script. There are many ways to find this information, but the easiest is to check your desktop enviroment's bluetooth configuration GUI application. If your desktop enviroment don't have this feature, I'm sure you can find out how to get this information otherwise :)

You may create a symbolic link to a PATH directory, making the command readily available, for exemple:

` ln -s ~/.local/bin/bt /path/to/repository/bt `

I use the command as "bt", but you can name it whatever you want, just alter the first argument.

