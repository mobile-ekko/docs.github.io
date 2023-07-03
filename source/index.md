title: Introduction
---

# V99 Command Line Interface (CLI)

## Introduction
V99 CLI is a full system support for rapid V99 Mini App development, providing:
Interactive project mini app via package @v99-cli
A rich collection of official plugins integrating the tools in the V99 Open Platform & Mini App ecosystem. Support a lot of commands to develop Mini App.

Note: V99-CLI is required to log in by the portal account before using all commands.(Account test: Tester/Tester123)

## Environment

- Node(>=v16.0.0)
- Yarn(>=1.22.17)
- Npm(>=9.4.0)
- Ruby(=2.7.5)

## Login private npm to install cli

```
npm login --scope=ekkkt-group --auth-type=legacy --registry=https://npm.pkg.github.com
```

User: ekkkt-group

## Installation

```
npm install --location=global @ekkkt-group/v99-cli
```


## Uninstall

```
npm uninstall --location=global @ekkkt-group/v99-cli
```

if not remove this package, and use the command below:

```
sudo rm -rf /usr/local/bin/v99-cli
```

## Commands

Below is the list of commands currently supported by V99 CLI:

| Command                         | Option                              | Default |Description                         |
| ------------------------------- | ----------------------------------- | -- | --------------------------------- |
| `v99-cli --help`              |                                     | | Show all v99 cli commands |
| `v99-cli doctor`              |                                     | | Help to check your systems environment to run v99 CLI |
| `v99-cli link`              |                                     | | Open the browser that logged portal to authorize request login from V99 CLI                     |
| `v99-cli login`             | -p(--password)<arg><br/>-u(--user) <arg> | | Login by user name and password     |
| `v99-cli logout`            |                                      | | Logout current user                 |
| `v99-cli refresh`         |                          |  | Refresh token npm                 |
| `v99-cli app help`              |                                     | | Get help to using v99 commands for development app|
| `v99-cli app init`          | -a(--appname) <arg><br />-v(--version)                  | ProjectName<br/>0.0.4 | Create a new mini app               |      
| `v99-cli app build`         | -f(--force)<br />--release<br />--debug<br />--platform <arg>   | false<br />true<br />false<br />ios             | Request Portal to bundle mini app, after that download and load app in the Dev tool             |     
| `v99-cli app run`           | --device<br />--simulator<br />--android<br/>--ios | <br /><br />false<br />true<br />| Run a mini app by independence with Dev Tool(run server: http://localhost:8081)                     | 
| `v99-cli app start`         | -p(--port) <arg>                    | 8181 | Start a server and gen QR code to load mini app via dev tool  |
| `v99-cli app upgrade-version-package`         |  -n(--name) <arg><br />-all(--all)<br />-v99(--v99)                       |  | Upgrade the packages to the latest version for the packages supported by the Super app or packages of the ecosystem V99                 |
| `v99-cli app lint`         |                          |  | Check source mini app with full rules of v99  |


### [Optional] Using a specific version

If you want to start a new project mini app with a specific version, you can use the --version(-v) argument:

```
v99-cli app init --appname=ProjectName -v=X.XX.X
```

### [Optional] Upgrade a specific package version

```
v99-cli app init -n=PackageName@versionSupport
```

### [Optional] Run mini app using a specific device

```
ios: v99-cli app run --simulator='simulator name'
android: v99-cli app run --android --device='deviceId'
```

### Dev Node
 
 - Change endpoint tại [config.json](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/config.json)
 - Change token npm [refresh_token](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/refresh_token.json)
 - Change login data [login_tester](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/login_tester.json) [login_tester_123](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/login_tester123.json)base64 data [template](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/template_config.json)
 - Change support package at [link](https://github.com/ekkkt-group/mobile-v99-cli-config/blob/main/support_package.json)
 - V99-cli link(goto brower with hard [link](https://example.com ) and hard token="token")

