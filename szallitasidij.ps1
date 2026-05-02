$nev=Read-Host "Add meg az ugyfel nevet"
$km=[int](Read-Host "Add meg a szallitasi tavolsagot km-ben")
$kg=[int](Read-Host "Add meg a csomag sulyat kg-ban")
$ertek=[int](Read-Host "Add meg a csomag erteket Ft-ban")

$alapdij=1200
$kmDij=180
$kgDij=350

if ($kg -gt 20) {
    $kgDij = 500
}
elseif ($kg -gt 10) {
    $kgDij = 420
}

$szallitasiDij= $alapdij + ($km * $kmDij) + ($kg * $kgDij)
$biztositasiDij= $ertek * 0.01
$vegosszeg= $szallitasidij + $biztositasiDij

Write-Host "Szallitasi dij kalkulacio:"
Write-Host "Ugyfel neve: $nev"
Write-Host "Tavolsag: $km"
Write-Host "Csomag sulya: $kg"
Write-Host "Csomag erteke: $ertek" 
Write-Host "Szallitasi dij: $szallitasiDij"
Write-Host "Biztositasi dij: $biztositasiDij"
Write-Host "Fizetendo vegosszeg: $vegosszeg"