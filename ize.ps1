$szamok=12, 25, 7
Write-Host $szamok

$szamok=12, 25, 7
Write-Host $szamok[0]

$szamok=12, 25, 7
Write-Host $szamok[-1]

$szamok=25, 49, 35, 17, 11
$darab=$szamok.Count
$osszeg=($szamok | Measure-Object -Sum).Sum
$atlag=($szamok | Measure-Object -Average).Average
$min=($szamok | Measure-Object -Minimum).Minimum
$max=($szamok | Measure-Object -Maximum).Maximum
Write-Host "Count: $darab"
Write-Host "Sum: $osszeg"
Write-Host "Average: $atlag"
Write-Host "Minimum: $min"
Write-Host "Maximum: $max"