# Copy web\favicon.png to web\favicon.ico for local Windows development
if (Test-Path -Path "web\favicon.png") {
    Copy-Item -Path "web\favicon.png" -Destination "web\favicon.ico" -Force
    Write-Output "Copied web\favicon.png to web\favicon.ico"
} else {
    Write-Output "web\favicon.png not found; nothing to copy."
}
