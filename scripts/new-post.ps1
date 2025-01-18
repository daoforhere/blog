param(
    [Parameter(Mandatory=$true)]
    [string]$Title,
    
    [Parameter(Mandatory=$false)]
    [string]$Category = "",
    
    [Parameter(Mandatory=$false)]
    [string]$OutputPath = "src/content/posts"
)

# 获取当前日期
$date = Get-Date -Format "yyyy-MM-dd"

# 从标题生成文件名（将标题转换为小写，空格替换为横线）
$fileName = $Title.ToLower() -replace '\s+','-'
if ($Category) {
    $outputFile = Join-Path $OutputPath $Category "$fileName.md"
} else {
    $outputFile = Join-Path $OutputPath "$fileName.md"
}

# 确保目录存在
$directory = Split-Path $outputFile -Parent
if (!(Test-Path $directory)) {
    New-Item -ItemType Directory -Path $directory -Force
}

# 读取模板文件
$template = Get-Content "templates/post.md" -Raw

# 替换模板中的变量
$content = $template -replace '{{title}}', $Title
$content = $content -replace '{{date}}', $date
if ($Category) {
    $content = $content -replace 'category: ""', "category: `"$Category`""
}

# 创建新文章
$content | Out-File -FilePath $outputFile -Encoding utf8

Write-Host "Created new post: $outputFile"
