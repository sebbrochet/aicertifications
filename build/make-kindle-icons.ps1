# make-kindle-icons.ps1
# Generates the monochrome callout icons used by the Kindle (AZW3) build.
# Output: build/kindle-icons/<name>.png  (64x64, black on transparent)
# These are committed and embedded by Pandoc into the Kindle EPUB (then AZW3).
#
# Usage:  .\build\make-kindle-icons.ps1

Add-Type -AssemblyName System.Drawing

$outDir = Join-Path $PSScriptRoot 'kindle-icons'
if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir -Force | Out-Null }

$S = 64
$ink = [System.Drawing.ColorTranslator]::FromHtml('#111111')

function New-Canvas {
    $bmp = New-Object System.Drawing.Bitmap $S, $S
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.Clear([System.Drawing.Color]::Transparent)
    return @{ Bmp = $bmp; G = $g }
}
function New-Pen([single]$w) {
    $p = New-Object System.Drawing.Pen($ink, $w)
    $p.StartCap = [System.Drawing.Drawing2D.LineCap]::Round
    $p.EndCap   = [System.Drawing.Drawing2D.LineCap]::Round
    $p.LineJoin = [System.Drawing.Drawing2D.LineJoin]::Round
    return $p
}
$brush = New-Object System.Drawing.SolidBrush $ink
function Save-Icon($c, $name) {
    $path = Join-Path $outDir "$name.png"
    if (Test-Path $path) { Remove-Item $path -Force }
    $c.Bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
    $c.G.Dispose(); $c.Bmp.Dispose()
}
function P([single]$x, [single]$y) { New-Object System.Drawing.PointF($x, $y) }

# --- key (Key concept): pushpin ---
$c = New-Canvas; $g = $c.G
$g.FillEllipse($brush, 22, 12, 20, 20)
$g.DrawLine((New-Pen 6), 32, 30, 32, 52)
Save-Icon $c 'key'

# --- how (How it works): magnifier ---
$c = New-Canvas; $g = $c.G
$g.DrawEllipse((New-Pen 5), 14, 14, 26, 26)
$g.DrawLine((New-Pen 7), 39, 39, 52, 52)
Save-Icon $c 'how'

# --- tip (Exam tip): target ---
$c = New-Canvas; $g = $c.G
$g.DrawEllipse((New-Pen 4.5), 18, 18, 28, 28)
$g.DrawEllipse((New-Pen 4.5), 26, 26, 12, 12)
$g.FillEllipse($brush, 29, 29, 6, 6)
Save-Icon $c 'tip'

# --- warn (Pitfall): warning triangle + ! ---
$c = New-Canvas; $g = $c.G
$g.DrawPolygon((New-Pen 5), @((P 32 10), (P 55 51), (P 9 51)))
$g.FillRectangle($brush, 30, 26, 4, 12)
$g.FillEllipse($brush, 29.5, 42, 5, 5)
Save-Icon $c 'warn'

# --- hint (Tip): lightbulb ---
$c = New-Canvas; $g = $c.G
$g.DrawEllipse((New-Pen 4.5), 19, 12, 26, 26)
$g.DrawLine((New-Pen 4.5), 26, 40, 38, 40)
$g.DrawLine((New-Pen 4.5), 27, 46, 37, 46)
$g.DrawLine((New-Pen 4.5), 29, 52, 35, 52)
Save-Icon $c 'hint'

# --- def (Definition): book ---
$c = New-Canvas; $g = $c.G
$g.DrawRectangle((New-Pen 4.5), 16, 14, 32, 36)
$g.DrawLine((New-Pen 4.5), 26, 14, 26, 50)
$g.DrawLine((New-Pen 3.5), 32, 22, 42, 22)
$g.DrawLine((New-Pen 3.5), 32, 30, 42, 30)
Save-Icon $c 'def'

# --- src (Source): link (two chain ovals) ---
$c = New-Canvas; $g = $c.G
$g.DrawEllipse((New-Pen 4.5), 12, 22, 28, 20)
$g.DrawEllipse((New-Pen 4.5), 24, 22, 28, 20)
Save-Icon $c 'src'

# --- good (Good practice): check in circle ---
$c = New-Canvas; $g = $c.G
$g.DrawEllipse((New-Pen 4.5), 14, 14, 36, 36)
$g.DrawLines((New-Pen 5.5), @((P 22 33), (P 29 41), (P 44 24)))
Save-Icon $c 'good'

# --- say (Formulation): speech bubble ---
$c = New-Canvas; $g = $c.G
$g.DrawRectangle((New-Pen 4.5), 12, 14, 40, 26)
$g.DrawPolygon((New-Pen 4.5), @((P 20 40), (P 20 52), (P 32 40)))
Save-Icon $c 'say'

# --- sci (Science): flask ---
$c = New-Canvas; $g = $c.G
$g.DrawLines((New-Pen 4.5), @((P 26 12), (P 26 26), (P 16 50), (P 48 50), (P 38 26), (P 38 12)))
$g.DrawLine((New-Pen 4.5), 23, 12, 41, 12)
Save-Icon $c 'sci'

Write-Host "[OK] 10 icons written to build/kindle-icons/" -ForegroundColor Green
Get-ChildItem $outDir -Filter *.png | ForEach-Object { "  $($_.Name)" }
