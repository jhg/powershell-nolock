Add-Type -AssemblyName System.Windows.Forms

$WscriptShell = New-Object -com "Wscript.Shell"
while($true) {
    Start-Sleep -s 30
    $Position = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($Position.X + 1), $Position.Y)
    $Position = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($Position.X - 1), $Position.Y)
    $WscriptShell.sendkeys(".")
}
