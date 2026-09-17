# Jolt-Rust vendor bootstrap: clone at the pinned commit and init submodules.
# Pinned commit = the revision A3 spike validated (rolt glam 0.33.2, JoltC 2982004).
param([string]$Dest = "$PSScriptRoot\..\third_party\jolt-rust")
if (-not (Test-Path $Dest)) {
    git clone https://github.com/SecondHalfGames/jolt-rust $Dest
}
Push-Location $Dest
git checkout 72ac0cb
git submodule update --init --recursive
Pop-Location
