# Terraria-Sync

Simple PowerShell script to sync terraria maps between players, so anyone can host/play anytime they want. Please backup your maps before running the script for precaution. You need git bash installed, this is how your maps will be synced.

Instructions:

I recommend adding SinglePlayer Maps to Steam Cloud, you can do this on Terraria Level selection, clicking the cloud, doing this will prevent SinglePlayer Worlds to be added to the repository. In Multiplayer worlds you should see this: ![mp](https://user-images.githubusercontent.com/55214395/82155813-e891e280-984d-11ea-9702-25c25f632271.png)
And on SinglePlayer this: ![sp](https://user-images.githubusercontent.com/55214395/82155854-20992580-984e-11ea-956e-d16a3edb0240.png)


1- You have to create a GitHub repository an add the map you want to play.

2-Edit the script with a text editor, and look for *********** CHANGE PATH HERE ****************, and ******* CHANGE YOUR GITHUB REPOSITORY MAP HERE!**********, replace this with your User, github repository and terraria game path(line 49, 57, 70, 83).

3- Save and Exit, and make sure your git bash is configured with your credentials and all your friends are collaborators to your repository.

4- Run this script every time you open the world you want to be synced with your friends, they should do this too.

5-After closing terraria, wait for the app to upload your map.

6- Have fun playing!
