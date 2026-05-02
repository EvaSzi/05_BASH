$nev= Read-Host "Add meg a tanulo nevet"

$jegyek=5, 4, 3, 5, 2

$darab=$jegyek.Count
$osszeg=($jegyek | Measure-Object -Sum).Sum
$atlag=($jegyek | Measure-Object -Average).Average
$min=($jegyek | Measure-Object -Minimum).Minimum
$max=($jegyek | Measure-Object -Maximum).Maximum

Write-Host ""
Write-Host "Tanulo jegyeinek osszesitese:"
Write-Host "Tanulo neve: $nev"
Write-Host "Jegyek"