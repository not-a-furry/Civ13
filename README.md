Fiscus Judaicus is a roman larp server based off of civ13 code. this game is written by someone with down syndrome. 
Server: byond://165.227.42.146:8000 (only open sometimes)

## Playing the game
You will need a windows machine or a virtual machine running it from another OS.

1. Download the latest BYOND distribution from http://www.byond.com/download/

2. Register a BYOND account at https://secure.byond.com/Join

3. Launch BYOND from **BYOND/bin/Byond.exe** and login.

4. Navigate to **Space Station 13** and search for the **Civilization 13** server.

5. You will start playing in seconds!


## Setting up a Server
1. Refer to https://www.reddit.com/r/SS13/wiki/hosting_a_server/. I use Debian on the official server, Ubuntu works too and is better if you have no idea what you're doing. Use Debian if you can, because Ubuntu uses like 50mb more memory for absolutely no reason but Canonical wanting to bloat the shit out of it.

1.1 Create a user on the server to prevent running everything as root. This isn't mentioned in the guide, and is HEAVILY HEAVILY recommended. In fact, this isn't optional. DO THIS. Refer to https://linuxize.com/post/how-to-add-and-delete-users-on-debian-9/. You can log in to the server as root using "ssh root@(ip here)", but always switch to the user you created to run the server, using "su (name here)". You can log into the server using your username such as "ssh (name here)@(ip here)", this however will only work if you log into the server using a password, not a key.

1.2 Install git, to do so run "sudo apt install git"

1.3 In your home directory after switching to your user, "cd /home/(name here)", run "git clone https://github.com/not-a-furry/Fiscus-Judaicus" to install the server

1.4 cd into Fiscus-Judaicus

1.5 run DreamMaker civ13.dme, then run "DreamDaemon civ13.dme 8000 -trusted", with 8000 being the private, non hub port. 6969 is the hub port. I don't know what -trusted does but I never had success without running it, so just do it. Use CTRTL + C in the terminal after running the server to stop the server, and this works with anything else on UNIX(-like) systems.

1.6 Updating the server is as easy as running "git pull" in the Fiscus-Judaicus directory.

1.7 OPTIONAL: Run a screen on the server. If you don't know what this is, refer to https://linuxize.com/post/how-to-use-linux-screen/. This makes running a server easier, and if you plan on closing the terminal (tty) to the server, this is NECESSARY!
 
2. OPTIONAL: Create a swap file on the server. This prevents the server from crashing. Refer to https://linuxize.com/post/how-to-add-swap-space-on-debian-10/ to create a swap file on Debian. If you're running the server on 2GB of ram or less, this is going to prevent bullshit fuckery black magic that happens when memory can't allocate.

3. If you run into any issues with this guide, or it's too garbage, create an issue or contact me.
