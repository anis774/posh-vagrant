# posh-vagrant
vagrant commands completion in PowerShell

## インストール
1. PowerShellを起動
1. インストール先を決定するために`$env:PSModulePath`を実行。出力されたパスの中から任意の場所を選びます。よくわからない場合は`C:\Users\<USER_NAME>\Documents\WindowsPowerShell\Modules`を選びます。
1. インストール先にposh-vagrantディレクトリを作成し、作成したディレクトリにposh-vagrant.psm1を配置します。
1. PowerShellで`Add-Content -Path $PROFILE.CurrentUserAllHosts 'Import-Module posh-vagrant'`を実行します。
