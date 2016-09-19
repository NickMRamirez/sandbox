Write-Host "Installing IIS feature..."
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature

Import-Module WebAdministration

Write-Host "Copying website files..."
Copy-Item -Path \\vboxsvr\vagrant\DemoWebsite\* -Destination C:\Websites\DemoWebsite -Recurse

Write-Host "Adding web application to IIS..."
New-WebApplication -Name "Demo" -Site 'Default Web Site' -PhysicalPath C:\Websites\DemoWebsite -ApplicationPool "DefaultAppPool"