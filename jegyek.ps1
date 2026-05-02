$jegy=[int](Read-Host "Hany cukorral kered?")

if ($jegy -eq 5) {
    Write-Host "Jeles."
}
elseif ($jegy -eq 4) {
    Write-Host "Jo."
}
elseif ($jegy -eq 3) {
    Write-Host "Megfelelo."
}
elseif ($jegy -eq 2) {
    Write-Host "Elegseges."
}
elseif ($jegy -eq 1) {
    Write-Host "Elegtelen."
}
else {
    Write-Host "Valami nem oke."
}