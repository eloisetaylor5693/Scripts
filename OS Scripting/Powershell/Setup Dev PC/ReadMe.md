# Setting up dev PC

## Instructions
1. Install **7zip**.  
2. Install **chocolatey**: <https://chocolatey.org/install>. 
3. Check `InstallDevPcApps.ps1`. 
    - Check that correct versions of software are installed (eg VS Professional vs VS Enterprise).  
    - Remove software not required.  
    - Add any software that's missing.  
4. Run `InstallDevPcApps.ps1`. 

## Configuring Node

Wait for `InstallDevPcApps.ps1` to run, close console, then run these commands.

```
nvm install latest
nvm use [version]
```

<https://github.com/coreybutler/nvm-windows>