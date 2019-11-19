# FPV Tank

## Overview
For our project, we decided to create a 3D printed tank using a Raspberry Pi 3B as its primary controller. The tank will also have a camera installed on it, allowing the user to ssh into the Raspberry Pi over a WiFi network and see in real time what the tank can see. To controll the tank, we are using Blynk on the iPhone to connect to the Raspberry Pi. 

## Getting Started
After downloading our project folder on both the Host and the Raspberry Pi, you need to install some libraries to get the code to work.

On the Raspberry Pi, run these commands in the project folder:

	sudo apt update
	sudo apt upgrade
	pip3 install blynklib
	sudo apt-get install rpi.gpio

On your Host computer, run these commands in the project folder:

	sudo apt update
	sudo apt upgrade
	sudo apt-get mplayer
	
On your smartphone (or computer if you prefer to use Blynk there), download Blynk. Start a project on Blynk and take note of the authentication code as this will be needed shortly.
	
With the software downloaded, the code should compile correctly and Blynk should work well out of the box. However, we need to adjust some values in the code to use your authentiaction information. Also, to ssh into the Raspberry Pi, we need its ip address. 

To get the Raspberry Pi's ip address, hop onto the Pi and run:
	hostname -I
This will tell you its ip address on its current network. For us we will be using RHIT-OPEN (after having registered the device) to ssh into the Pi. 

On the Host computer and in the fpvTank.sh file, replace the current ip address with your Raspberry Pi's ip address so that when the code is run, it connects properly to the Raspberry Pi. 

On the Raspberry Pi, adjust the Blynk authentication code to your newly created project's authentication code and rename the project to:
	yournameRCtank.py

At this point, the code **should** be good to go! See our Blynk project on the Wiki to see how to setup your Blynk project like ours. 

## Operating the FPV Tank
To operate the tank, we just need to run a few commands after ensuring the tank is assembled properly. After making sure the tank is on and operational with the Raspberry Pi connected to the same WiFi network as the host computer, run these commands on the host:
	
	ssh pi@[pi-ip-address]
	./yournameRCtank.py

Open up a new terminal and run:
	
	sh fpvTank.sh

You should now see live footage of your tank and be able to control it via your Blynk app. Pretty cool!
