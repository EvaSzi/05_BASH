Write-Host "Kave rendeles"

$nev=Read-Host "Mi a neved?"
$kave=Read-Host "Milyen kavet szeretnel $nev? (espresso, latte, cappucino)"
$darab=[int](Read-Host "Hany darab kavet kersz")
$cukor=Read-Host "Kersz bele cukrot? (igen, nem)"
$tej=Read-Host "Kersz bele tejet? (igen, nem)"
$suti=($darab - 1)

Write-Host "Parbeszed"
Write-Host "Elado: Szia! Mit adhatok?"
Write-Host "${nev}: $darab darab $kave kavet szeretnek."
Write-Host "Eladó: Kersz-e bele cukrot?"
Write-Host "${nev}: $cukor"
Write-Host "Elado: Kersz bele tejet?"
Write-Host "${nev}: $tej"
Write-Host "Elado: Rendben, keszitem a rendelesed."
Write-Host "${nev}: Koszonom."

if ($darab -ge 3){
    Write-Host "$darab kavehoz jar $suti suti ajandekba."
}
else {
    Write-Host "Ha legkozelebb jossz, es legalabb 3 kavet rendelsz, akkor kapsz ajandekba 2 sutit."
}