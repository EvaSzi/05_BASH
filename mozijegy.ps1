$nev=Read-Host "Kerem adja meg a nevet:"
$eletkor=[int](Read-Host "Kerem adja meg az eletkorat:")
$jegyszam=[int](Read-Host "A megvasarolni kivant jegyek szama:")

$jegyar=2500

if ($eletkor -lt 18) {
    $jegyar=1800
}
elseif ($eletkor -ge 65) {
    $jegyar=1500
}
$vegosszeg= $jegyar * $jegyszam

Write-Host "Mozijegy vasarlas adatai:"
Write-Host "Vasarlo neve: $nev"
Write-Host "Alkalamzott jegyar: $jegyar"
Write-Host "Jegyek szama: $jegyszam"
Write-Host "Fizetendo osszeg: $vegosszeg"