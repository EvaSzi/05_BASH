$a=[int](Read-Host "Adj meg egy szamot:")
$b=[int](Read-Host "Adj meg meg egy szamot:")

$osszeg= $a + $b
$kulonbozet= $a - $b
$szorzat= $a * $b

Write-Host "A ket szam osszege: $osszeg"
Write-Host "A ket szam kulonbozete: $kulonbozet"
Write-Host "A ket szam szorzata: $szorzat"

if ($b -ne 0){
    $hanyados= $a / $b
    Write-Host "A ket szam hanyadosa: $hanyados"
}
else {
    Write-Host "Nullaval nem lehet osztani. Kerlek adj meg valami masik szamot."
}