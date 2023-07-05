# Commands

### __Help__ { #Help data-toc-label="Help" }
Show all v99-cli support commands
``` sh
v99-cli --help
```

``` sh
v99-cli <command> --help
```

### __Doctor__ { #Doctor data-toc-label="Doctor" }
Help to check your systems environment to run v99 CLI
``` sh
v99-cli doctor
```

### __Link__ { #Link data-toc-label="Link" }
Open the browser that logged portal to authorize request login from V99 CLI
```
v99-cli link
```

### __Login__ { #Login data-toc-label="Login" }
Login by user name and password to get private token + secret key for v99 SDK
``` sh
v99-cli login
```

or type user name, password by command

=== "Short argv"
    ``` sh
    v99-cli login -p <password> -u <username>
    ```
=== "Long argv"
    ``` sh
    v99-cli login --password <password> --user <username>
    ```


### __Logout__ { #Logout data-toc-label="Logout" }
Logout current user
``` sh
v99-cli logout
```

### __Refresh__ { #Refresh data-toc-label="Refresh" }
Refresh token npm
``` sh
v99-cli refresh
```

### __App__ { #App data-toc-label="App" }
The comand support develop an mini app
#### __init__ { #init data-toc-label="init" }
Login by user name and password to get private token + secret key for v99 SDK
``` sh
v99-cli app init
```

or type projectname, version by command

=== "Short argv"
    ``` sh
    v99-cli app init -a <ProjectName> -v <X.XX.X>
    ```
=== "Long argv"
    ``` sh
    v99-cli app init --appname <ProjectName> --version <X.XX.X>
    ```
#### __build__ { #build data-toc-label="build" }
Request Portal to bundle mini app, after that download and load app in the Dev tool

=== "Short argv"
    ``` sh
    v99-cli app build -f --release --debug --platform="ios|android"
    ```
=== "Long argv"
    ``` sh
    v99-cli app build --force --release --debug --platform="ios|android"
    ```
!!! note "Default option in command:"
| Option     |  Default value   |
| :------:    |  :-------------:   |
| -f, --force |  false           |
| --release  |  true            |
| --debug    |  false           |
| --platform |  ios             | 

#### __run__ { #run data-toc-label="run" }
Run a mini app by independence with Dev Tool(run server: http://localhost:8081)

1. run android
``` sh
v99-cli app run --device <device Id> --android
```
2. run ios
``` sh
v99-cli app run --simulator <simulator name> --ios
```

#### __start__ { #run data-toc-label="start" }
Start a server and gen QR code to load the mini app via dev tool

=== "Short argv"
    ``` sh
    v99-cli app start -p <XXXX>
    ```
=== "Long argv"
    ``` sh
    v99-cli app build --port <XXXX>
    ```
!!! note "Default option in command:"
| Option     |  Default value   |
| :------:    |  :-------------:   |
| -p, --port |  8181           |

#### __upgrade-version-package__ { #upgrade-version-package data-toc-label="upgrade-version-package" }
Upgrade the packages to the latest version for the packages supported by the Super app or packages of the ecosystem V99

1. Update package name
=== "Short argv"
    ``` sh
    v99-cli app upgrade-version-package -n <packagename>
    ```
=== "Long argv"
    ``` sh
    v99-cli app upgrade-version-package -name <packagename>
    ```
1. Update v99 packages
``` sh
v99-cli app upgrade-version-package --v99
```
1. Update all packages 
``` sh
v99-cli app upgrade-version-package --all
```

#### __upgrade-version-package__ { #upgrade-version-package data-toc-label="upgrade-version-package" }
Upgrade the packages to the latest version for the packages supported by the Super app or packages of the ecosystem V99

1. Update package name
=== "Short argv"
    ``` sh
    v99-cli app upgrade-version-package -n <packagename>
    ```
=== "Long argv"
    ``` sh
    v99-cli app upgrade-version-package -name <packagename>
    ```
2. Update v99 packages
``` sh
v99-cli app upgrade-version-package --v99
```
3. Update all packages 
``` sh
v99-cli app upgrade-version-package --all
```
#### __lint__ { #lint data-toc-label="lint" }
Check source mini app with full rules of v99

``` sh
v99-cli app lint
```