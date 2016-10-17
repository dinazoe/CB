$Paths = "Path1","Path2","Path3"
$Date=Get-Date -format M
$1D = "D:\OneDrive"

Compress-Archive -LiteralPath $paths -CompressionLevel Optimal  -DestinationPath "$1D\$Date"
if ((gci $1d\*.zip).count -ge "2")
{
$old = gci $1d\*.zip | sort LastWriteTime |select -first 1
rm -Force $old -ErrorAction SilentlyContinue
}