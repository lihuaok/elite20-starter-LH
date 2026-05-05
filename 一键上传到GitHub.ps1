<#
.SYNOPSIS
一键上传文件到 GitHub 仓库

.DESCRIPTION
自动化脚本，用于将本地文件上传到 GitHub 仓库

.PARAMETER Message
提交消息

.EXAMPLE
.\一键上传到GitHub.ps1 -Message "更新项目文件"
#>

param(
    [string]$Message = "更新项目文件"
)

Write-Host "======================================"
Write-Host "      一键上传到 GitHub 仓库"
Write-Host "======================================"
Write-Host ""

# 检查是否在 Git 仓库中
if (-not (Test-Path ".git")) {
    Write-Host "❌ 错误：当前目录不是 Git 仓库" -ForegroundColor Red
    exit 1
}

Write-Host "📁 检查文件状态..." -ForegroundColor Cyan
git status

Write-Host ""
Write-Host "📤 添加所有文件..." -ForegroundColor Cyan
git add -A

Write-Host ""
Write-Host "💾 提交更改..." -ForegroundColor Cyan
git commit -m $Message

Write-Host ""
Write-Host "☁️ 推送到远程仓库..." -ForegroundColor Cyan
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ 上传成功！" -ForegroundColor Green
    Write-Host "======================================"
} else {
    Write-Host ""
    Write-Host "❌ 上传失败，请检查错误信息" -ForegroundColor Red
    Write-Host "======================================"
    exit 1
}