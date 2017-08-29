Register-ArgumentCompleter -Native -CommandName vagrant -ScriptBlock {
    param($wordToComplete, [System.Management.Automation.Language.CommandBaseAst]$commandAst, $cursorPosition)

    $vagrantCommands = @{
        'box' = @{
            'add' = @{
                '-c' = $null;
                '--clean' = $null;
                '-f' = $null;
                '--force' = $null;
                '--insecure' = $null;
                '--cacert' = $null; # FILE
                '--capath' = $null; # DIR
                '--cert' = $null; # FILE
                '--location-trusted' = $null;
                '--provider' = $null; # PROVIDER
                '--box-version' = $null; # VERSION
                '--checksum' = $null; # CHECKSUM
                '--checksum-type' = $null; # TYPE
                '--name' = $null; # BOX
                '-h' = $null;
                '--help' = $null;
            };
            'list' = @{
                '-i' = $null;
                '--box-info' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'outdated' = @{
                '--global' = $null;
                '--insecure' = $null;
                '--cacert' = $null; # FILE
                '--capath' = $null; # DIR
                '--cert' = $null; # FILE
                '-h' = $null;
                '--help' = $null;
            };
            'prune' = @{
                '-p' = $null;
                '--provider' = $null;
                '-n' = $null;
                '--dry-run' = $null;
                '--name' = $null;
                '-f' = $null;
                '--force' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'remove' = @{
                # name
                '-f' = $null;
                '--force' = $null;
                '--provider' = $null; # PROVIDER
                '--box-version' = $null; #VERSION
                '--all' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'repackage' = @{
                # name
                # provider
                # version
                '-h' = $null;
                '--help' = $null;
            };
            'update' = @{
                '--box' = $null; # BOX
                '--provider' = $null; # PROVIDER
                '--insecure' = $null;
                '--cacert' = $null; # FILE
                '--capath' = $null; # DIR
                '--cert' = $null; # FILE
                '-h' = $null;
                '--help' = $null;
            };
        };
        'connect' = @{
            # NAME
            '--disable-static-ip' = $null;
            '--static-ip' = $null; # IP
            '--ssh' = $null;
            '--driver' = $null; # DRIVER
            '--share-password' = $null;
            '-h' = $null;
            '--help' = $null;
        };
        'destroy' = @{
            '-f' = $null;
            '--force' = $null;
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'global_status' = @{
            '--prune' = $null;
            '-h' = $null;
            '--help' = $null;
        };
        'halt' = @{
            '-f' = $null;
            '--force' = $null;
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'help' = @{};
        'init' = @{
            '--box-version' = $null; # VERSION
            '-f' = $null; 
            '--force' = $null;
            '-m' = $null;
            '--minimal' = $null;
            '--output' = $null; # FILE
            '-h' = $null;
            '--help' = $null;
        };
        'login' = @{
            '-c' = $null;
            '--check' = $null;
            '-t' = $null;
            '--token' = $null; # TOKEN
            '-h' = $null;
            '--help' = $null;
        };
        'package' = @{
            #name
            #id
            '--base' = $null; # NAME
            '--output' = $null; # NAME
            '--include' = $null; # FILE,FILE...
            '--vagrantfile' = $null; # FILE
            '-h' = $null;
            '--help' = $null;
        };
        'plugin' = @{
            'expunge' = @{
                '--force' = $null;
                '--reinstall' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'install' = @{
                # name
                '--entry-point' = $null; # NAME
                '--plugin-clean-sources' = $null;
                '--plugin=source' = $null; # PLUGIN_SOURCE
                '--plugin-version' = $null; # PLUGIN_VERSION
                '--verbose' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'license' = @{
                # name
                # license-file
                '-h' = $null;
                '--help' = $null;
            };
            'list' = @{
                '-h' = $null;
                '--help' = $null;
            };
            'repair' = @{
                '-h' = $null;
                '--help' = $null;
            };
            'uninstall' = @{
                # name name2 name3...
                '-h' = $null;
                '--help' = $null;
            };
            'update' = @{
                # names...
                '-h' = $null;
                '--help' = $null;
            };
        };
        'port' = @{
            '--guest' = $null; # PORT
            '--machine-readable' = $null;
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'powershell' = @{
            '-c' = $null; # COMMAND
            '--command' = $null; # COMMAND
            '-h' = $null;
            '--help' = $null;
        };
        'provision' = @{
            '@VM_NAME' = $null;
            '--provision-with' = $null; # x,y,z
            '-h' = $null;
            '--help' = $null;
        };
        'push' = @{
            # strategy
            '-h' = $null;
            '--help' = $null;
        };
        'rdp' = @{
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'reload' = @{
            '@VM_NAME' = $null;
            '--no-provision' = $null;
            '--provision' = $null;
            '--provision-with' = $null; # x,y,z
            '-h' = $null;
            '--help' = $null;
        };
        'resume' = @{
            '@VM_NAME' = $null;
            '--no-provision' = $null;
            '--provision' = $null;
            '--provision-with' = $null; # x,y,z
            '-h' = $null;
            '--help' = $null;            
        };
        'share' = @{
            '--disable-http' = $null;
            '--domain' = $null; # VALUE
            '--http' = $null; # VALUE
            '--https' = $null; # VALUE
            '--name' = $null; # VALUE
            '--ssh' = $null;
            '--ssh-no-password' = $null
            '--ssh-port' = $null; # PORT
            '--ssh-once' = $null;
            '--driver' = $null; # DRIVER
            '--full' = $null;
            '--share-password' = $null;
            '-h' = $null;
            '--help' = $null;
        };
        'snapshot' = @{
            'delete' = @{
                '-h' = $null;
                '--help' = $null;
                '@VM_NAME' = $null;
                # name
            };
            'list' = @{
                '-h' = $null;
                '--help' = $null;
                '@VM_NAME' = $null;
            };
            'pop' = @{
                '@VM_NAME' = $null;
                '--no-provision' = $null;
                '--provision' = $null;
                '--provision-with' = $null; # x,y,z
                '--no-delete' = $null;
                '-h' = $null;
                '--help' = $null;
            };
            'push' = @{
                '-h' = $null;
                '--help' = $null;
                '@VM_NAME' = $null;
            };
            'restore' = @{
                '--no-provision' = $null;
                '--provision' = $null;
                '--provision-with' = $null; # x,y,z
                '-h' = $null;
                '--help' = $null;
                '@VM_NAME' = $null;
                # name
            };
            'save' = @{
                '-h' = $null;
                '--help' = $null;
                '@VM_NAME' = $null;
            };
        };
        'ssh' = @{
            '-c' = $null; #COMMAND
            '--command' = $null; # COMMAND
            '-p' = $null;
            '--plain' = $null;
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'ssh-config' = @{
            '--host' = $null; # NAME
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'status' = @{
            '@VM_NAME' = $null;
            # id
            '-h' = $null;
            '--help' = $null;
        };
        'suspend' = @{
            '@VM_NAME' = $null;
            # id
            '-h' = $null;
            '--help' = $null;
        };
        'up' = @{
            '--no-provision' = $null;
            '--provision' = $null;
            '--provision-with' = $null; # x,y,z
            '--no-destroy-on-error' = $null;
            '--destroy-on-error' = $null;
            '--no-parallel' = $null;
            '--parallel' = $null;
            '--provider' = $null; # PROVIDER
            '--no-install-provider' = $null;
            '--install-provider' = $null;
            '-h' = $null;
            '--help' = $null;
            '@VM_NAME' = $null;
            # id
        };
        'version' = @{
            '-h' = $null;
            '--help' = $null;
        };
        '-v' = $null;
        '--version' = $null;
        '-h' = $null;
        '--help' = $null;
    }

    $path = New-Object System.Collections.ArrayList
    foreach ($w in ($commandAst.ToString().Split(' ', [System.StringSplitOptions]::RemoveEmptyEntries) | Select-Object -Skip 1)) {
        if (($w -in (Select-Commands $vagrantCommands $path).Keys) -and ((Select-Commands $vagrantCommands $path)[$w] -ne $null)) {
            [void]$path.Add($w)
            continue
        }
        break
    }

    Contains-Words (Select-Commands $vagrantCommands $path).Keys |
        Where-Object {([string]$_).Contains($wordToComplete)}
        Sort-Object -Property @{Expression={$_.StartsWith('st')};Descending=$true},@{Expression='Length';Ascending=$true} | 
        ForEach-Object {
            [System.Management.Automation.CompletionResult]::new(
                $_,
                $_,
                [System.Management.Automation.CompletionResultType]::Text,
                $_
            )
        }
}



function Select-Commands ($source, $path) {
    $c = $source
    foreach ($p in $path) {
        $c = $c[$p]
    }
    $c
}



function Contains-Words ($source) {
   foreach ($_ in $source) {
        if ($_ -like '@*') {
            switch ($_) {
                '@VM_NAME' {
                    foreach ($row in vagrant status | Select-Object -Skip 2) {
                        if ($row -eq '') {
                            break
                        }
                        $row.Split(' ', [System.StringSplitOptions]::None)[0]
                    }
                }
            }
        } else {
            $_
        }
    }
}



Export-ModuleMember
