Write-Host "Deseja criar a pasta no diretório atual ou especificar um diretório?"
Write-Host "Tecle 1 para criar no diretório atual"
Write-Host "Tecle 2 para especificar um diretório"

$opcao = Read-Host "Opção"

if ($opcao -eq "1") {
    $local = Get-Location
}
elseif ($opcao -eq "2") {
    $local = Read-Host "Informe o caminho completo do diretório"
    
    if (-Not (Test-Path $local)) {
        Write-Host "Diretório não encontrado. Criando diretório..."
        New-Item -ItemType Directory -Path $local -Force | Out-Null
    }
}
else {
    Write-Host "Opção inválida. Encerrando."
    exit
}

$pasta = Join-Path $local "minha_pasta"
$arquivo = Join-Path $pasta "arquivo.txt"

if (-Not (Test-Path $pasta)) {
    New-Item -ItemType Directory -Path $pasta -Force | Out-Null
}

"Olá, esse é um arquivo criado via PowerShell!" | Out-File -FilePath $arquivo -Encoding UTF8

Write-Host "Pasta e arquivo criados com sucesso em:" $pasta
