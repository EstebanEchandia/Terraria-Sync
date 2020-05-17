
function Show-Menu
{
	
    param (
           [string]$Title = 'My Menu'
     )

     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' for this option."
     Write-Host "2: Press '2' for this option."
     Write-Host "9: Press '9' to quit."
}

function Show-Instructions{

	Write-Host "`n Instrucctions:`n " -ForegroundColor Green
	Write-Host "I recommend syncing SinglePlayer Maps to Steam Cloud, you can do this on Terraria Level selection, clicking the cloud, `n Doing this will prevent SinglePlayer Worlds to be added to the repository.`n `n " -ForegroundColor Green
	Write-Host "1- You have to create a github repository on C:\Users\YourUser\Documents\My Games\Terraria\Worlds" -ForegroundColor Green
	Write-Host "1.1- If one of your friends has alredy created the repository, you should clone it in C:\Users\YourUser\Documents\My Games\Terraria\Worlds`n " -ForegroundColor Green
	Write-Host "2- Upload your world to this repository`n " -ForegroundColor Green
	Write-Host "3- Edit this script and change your Terraria.exe location, Default is:'C:\Program Files (x86)\Steam\steamapps\common\Terraria\Terraria.exe'`n " -ForegroundColor Green
	Write-Host "4- Run this script everytime you open the world you want to be synced with your friends, they should do this too`n " -ForegroundColor Green
	

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

					cd "C:\Users\Esteban\Documents\My Games\Terraria\Worlds"
					git pull origin master
					"`n "
					Write-Host "-------------------------------------------------`n" -ForegroundColor Blue

					Write-Host "Opening Terraria`n " -ForegroundColor Green

					Write-Host "-------------------------------------------------`n  " -ForegroundColor Blue

					Start-Process "C:\Program Files (x86)\Steam\steamapps\common\Terraria\Terraria.exe"
					Start-Sleep -s 15
					 
					$a = get-process Terraria
					$a.waitforexit()

					Start-Sleep -s 1
					Write-Host "-------------------------------------------------`n" -ForegroundColor Blue

					Write-Host "Uploading last version of the map to Github`n " -ForegroundColor Green

					Write-Host "-------------------------------------------------`n  " -ForegroundColor Blue

					cd "C:\Users\Esteban\Documents\My Games\Terraria\Worlds"
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
