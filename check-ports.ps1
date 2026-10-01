$conns = Get-NetTCPConnection -State Listen -ErrorAction SilentlyContinue
if ($conns) {
  $conns | Where-Object { $_.LocalPort -in 3000,5173,4173 } | Format-Table -AutoSize | Out-String -Width 200 | Set-Content -Path 'C:\Users\KAOL\Projects\zenoai\ports.txt'
} else {
  'No listening ports found.' | Set-Content -Path 'C:\Users\KAOL\Projects\zenoai\ports.txt'
}
