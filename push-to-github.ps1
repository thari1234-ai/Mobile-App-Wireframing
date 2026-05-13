#!/usr/bin/env pwsh
# ──────────────────────────────────────────────────────────
# push-to-github.ps1
# Run this script once to create the GitHub repo and push.
# Prerequisites: Git must be installed (already confirmed).
# ──────────────────────────────────────────────────────────

# ── EDIT THESE TWO LINES ────────────────────────────────
$GitHubUsername = "YOUR_GITHUB_USERNAME"   # e.g. "johndoe"
$RepoName       = "thiranex-wireframes"
# ────────────────────────────────────────────────────────

if ($GitHubUsername -eq "YOUR_GITHUB_USERNAME") {
    Write-Host "⚠  Please open this script and replace YOUR_GITHUB_USERNAME with your real GitHub username." -ForegroundColor Yellow
    exit 1
}

$RemoteUrl = "https://github.com/$GitHubUsername/$RepoName.git"

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "  Pushing thiranex to GitHub" -ForegroundColor Cyan
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host ""
Write-Host "Step 1: Create the repository on GitHub" -ForegroundColor White
Write-Host "  → Go to:  https://github.com/new" -ForegroundColor Green
Write-Host "  → Repository name:  $RepoName" -ForegroundColor Green
Write-Host "  → Visibility:       Public" -ForegroundColor Green
Write-Host "  → Do NOT initialise with README (we already have one)" -ForegroundColor Green
Write-Host "  → Click 'Create repository'" -ForegroundColor Green
Write-Host ""

Read-Host "Press Enter here once you've created the repo on GitHub"

Write-Host ""
Write-Host "Step 2: Adding remote and pushing…" -ForegroundColor White

Set-Location $PSScriptRoot

git remote add origin $RemoteUrl
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅  Done! Your repo is live at:" -ForegroundColor Green
    Write-Host "    https://github.com/$GitHubUsername/$RepoName" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "❌  Push failed. Common fixes:" -ForegroundColor Red
    Write-Host "   • Make sure you created the repo at github.com/new first" -ForegroundColor Yellow
    Write-Host "   • Run: git remote set-url origin $RemoteUrl" -ForegroundColor Yellow
    Write-Host "   • Then re-run: git push -u origin main" -ForegroundColor Yellow
}
