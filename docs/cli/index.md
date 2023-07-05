# V99 Cli
## [V99 Command Line Interface (CLI)]
[V99 Command Line Interface (CLI)]: getting-started.md

V99 CLI is a comprehensive support system for the rapid development of V99 Mini App applications. It enables interaction with mini-app projects or portals through the v99-cli package.
## [Environment]
[Environment]: environment.md

- Node(>=v16.0.0)
- Yarn(>=1.22.17)
- Npm(>=9.4.0)
- Ruby(=2.7.5)
## [Installation]
[Installation]: installation.md

### __login__ <small>required</small> { #login data-toc-label="login" }

```
npm login --scope=ekkkt-group --auth-type=legacy --registry=https://npm.pkg.github.com
```

??? question "How to get an token npm?"
    Login in portal v99 to get user and password

### __install__ { #install data-toc-label="install" }

```
npm install --location=global @ekkkt-group/v99-cli
```


### __uninstall__ { #uninstall data-toc-label="uninstall" }

```
npm uninstall --location=global @ekkkt-group/v99-cli
```
## [Commands]

[Commands]: commands.md

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
Refresh user info
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

+ run android
``` sh
v99-cli app run --device <device Id> --android
```
+ run ios
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

+ Update package name
=== "Short argv"
    ``` sh
    v99-cli app upgrade-version-package -n <packagename>
    ```
=== "Long argv"
    ``` sh
    v99-cli app upgrade-version-package -name <packagename>
    ```
+ Update v99 packages
``` sh
v99-cli app upgrade-version-package --v99
```
+ Update all packages 
``` sh
v99-cli app upgrade-version-package --all
```
#### __lint__ { #lint data-toc-label="lint" }
Double-check the source code of the mini app before requesting to publish the app to the store

``` sh
v99-cli app lint
```
## [Api]
[Api]: api.md

### Danh sách API chưa có:

| API Name                         | Description                              | Param | Response|
| ------------------------------- | ----------------------------------- | -- | --------------------------------- |
| Login with user + pass               | Hỗ trợ login web portal thông qua cli để lấy npm token và secret key | {user: ABC, password: abc} | {"id": "id", "name": "user_name", "token_cli": "766cc95d3db269bfe75dc3663aa45654", "npm_name": "npm_name", "npm_token": "token_npm", "template_version": "0.0.4", "template_link": "link_template", "secret_key": "766cc95d3db269bfe75dc3663aa54454"} |
| Get token to login                   | CLI sẽ mở api get token này ở browser ĐÃ LOGIN Portal để lấy token login, user sẽ copy token(cli_token) và input vào cli để login| | {token_cli: 766cc95d3db269bfe75dc3663aa54454} |
| Verify token login                   | CLI sẽ dùng api này để xác thực lại token login ở trên khi user nhập token để login | {cli_token: 766cc95d3db269bfe75dc3663aa54454} | {status: success} |
| Refresh                              | Sử dụng để lấy lại thông tin mới nhất như npm token or secret key khi có sự thay đổi | {user: ABC , password: ABC, token_cli: 766cc95d3db269bfe75dc3663aa45654} | { "cli_token":"766cc95d3db269bfe75dc3663aa45654","npm_name": "npm_name","npm_token": "token npm", "template version": "0.0.4", "template_link": "linktemplate","secret_key":"766cc95d3db269bfe75dc3663aa54454", } |
| Build mini app                   | CLI sẽ dùng api này để request portal build file bundle với mode debug dùng cho dev tool và mode release để submit và publish app | {mode: "debug or release"} | {status: success} |