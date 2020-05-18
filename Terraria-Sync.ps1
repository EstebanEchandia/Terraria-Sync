
function Show-Menu
{
	
    param (
           [string]$Title = 'Menu'
     )

     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' to start the game."
     Write-Host "2: Press '2' for instructions."
     Write-Host "9: Press '9' to quit."
}

function Show-Instructions{
"

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


"

	

}



Write-Host "
  _______                       _                   _____                         __   ___  
 |__   __|                     (_)                 / ____|                       /_ | / _ \ 
    | | ___ _ __ _ __ __ _ _ __ _  __ _   ______  | (___  _   _ _ __   ___  __   _| || | | |
    | |/ _ \ '__| '__/ _` | '__| |/ _` |  |______|  \___ \| | | | '_ \ / __| \ \ / / || | | |
    | |  __/ |  | | | (_| | |  | | (_| |           ____) | |_| | | | | (__   \ V /| || |_| |
    |_|\___|_|  |_|  \__,_|_|  |_|\__,_|          |_____/ \__, |_| |_|\___|   \_/ |_(_)___/ 
                                                           __/ |                            
                                                          |___/                           	
" -ForegroundColor Green 
	Start-Sleep -s 1
do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
					Write-Host "--------------------------------------------------`n " -ForegroundColor Blue
					Write-Host "Downloading last version of the map from github`n " -ForegroundColor Green
					Write-Host "-------------------------------------------------`n " -ForegroundColor Blue
					Start-Sleep -s 1


					#****************************** CHANGE PATH HERE ******************************************************************
					#Replace YOURUSER with your user account from Windows.

					cd "C:\Users\YOURUSER\Documents\My Games\Terraria\Worlds"
					git init



					#**************************** CHANGE YOUR GITHUB REPOSITORY MAP HERE!*********************************************
					#replace this link with your github repository

					git remote add origin https://github.com/USER/YOURMAP

					git pull origin master
					"`n "
					Write-Host "-------------------------------------------------`n" -ForegroundColor Blue
					Write-Host "Opening Terraria`n " -ForegroundColor Green
					Write-Host "-------------------------------------------------`n  " -ForegroundColor Blue



					#****************************** CHANGE PATH HERE ******************************************************************
					#This is default terraria game path, if you have another steam game library, you should replace it too.
					Start-Process "C:\Program Files (x86)\Steam\steamapps\common\Terraria\Terraria.exe"

					Start-Sleep -s 15
					$a = get-process Terraria
					$a.waitforexit()
					Start-Sleep -s 1
					Write-Host "-------------------------------------------------`n" -ForegroundColor Blue
					Write-Host "Uploading last version of the map to Github`n " -ForegroundColor Green
					Write-Host "-------------------------------------------------`n  " -ForegroundColor Blue


					#****************************** CHANGE PATH HERE ******************************************************************
					#Replace YOURUSER with your user account from Windows.

					cd "C:\Users\YOUR USER\Documents\My Games\Terraria\Worlds"


					git add .
					git commit -m "World has been updated"
					git push origin master
					"`n "
					Write-Host "-------------------------------------------------`n " -ForegroundColor Blue
					Write-Host "The map was alredy updated, you can close the app`n " -ForegroundColor Green
					Write-Host "-------------------------------------------------`n " -ForegroundColor Blue
					Start-Sleep -s 10
           } '2' {
                Show-Instructions

           } '9' {
                return
           }
     }
     pause
}
until ($input -eq '9')
