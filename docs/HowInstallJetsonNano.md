# Jetson Nano installation instructions

# Step 1: install the base image

use either this link with instructions:
https://developer.nvidia.com/embedded/jetpack-sdk-62

or this one to directly download the .zip file:
https://developer.nvidia.com/downloads/embedded/l4t/r36_release_v4.3/jp62-orin-nano-sd-card-image.zip

# Step 2: flash the image to the SD card

Use Balena Etcher to flash the image to the SD card. No need to unzip the file btw.

# Step 3

Plug in the SD card into the Jetson Nano and power it on. Note that you will need to connect the jetson nano to a power source and a monitor at this point.

# Step 4: Setting up the Jetson Nano

1. Accept all the terms/conditions
2. Select "English" as the language
3. Select "English (US)" as the keyboard layout
4. Select "Los Angeles" as the time zone
5. Name the device "ubuntu"
6. Name the computer "ubuntu"
7. Name the username "ubuntu"
8. Set the password to "ubuntu"
9. In the "APP Partition Size" field set the maximum accepted size. So if it says "Current size: 21386 MB, Maximum size: 59412 MB." then set it to "59412".
10. Do not install chromium browser.

# Step 5: Inside Jetson Nano

1. Login to the "ubuntu" user.
2. Select "settings" from the bottom left corner.
3. Go to "WiFi" tab and connect to the wifi network.

# Step 6: Install the BlitzImageModifier

1. Open Terminal and run the following command to install git:

```bash
sudo apt-get update
sudo apt-get install git
```

2. Clone the BlitzImageModifier repository:

```bash
git clone https://github.com/PinewoodRobotics/BlitzImageModifier.git
```

3. cd into the BlitzImageModifier repository and run the jetson_nano.bash script:

**Please note that if there is ANY errors popping up (especially with relation to something like not being able to aquire a lock for something), try rebooting the Jetson Nano and try again.**

```bash
cd BlitzImageModifier
bash ./installation/extra/jetson_nano.bash
```

4. Post-install:

login into the ubuntu user and set the ubuntu name as whatever you want. The default behavior should be that the terminal opens to **full screen** (which means that you can exit the terminal if you want) once you login. You will have to log into the Jetson Nano again and set the name as prompted by the system.

# You're done!
