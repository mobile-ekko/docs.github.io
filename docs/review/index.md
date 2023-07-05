# V99 Review
## [V99 Review Tool]
[V99 Review Tool]: getting-started.md

This tool supports reviewing the source code of the mini-app in ecosystem V99 to detect issues quickly and feedback to the customer. Its uses in the process release a mini app to the app store.
## [Environment]
[Environment]: environment.md

- Node(v16.19.0)
- yarn(1.22.17)
- MacOS
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
npm install --location=global @ekkkt-group/v99-review
```


### __uninstall__ { #uninstall data-toc-label="uninstall" }

```
npm uninstall --location=global @ekkkt-group/v99-review
```
## [Commands]

[Commands]: commands.md

### __Help__ { #Help data-toc-label="Help" }
Print this usage informatio
``` sh
v99-review help
```


### __Doctor__ { #Doctor data-toc-label="Doctor" }
Show information about the installed tooling
``` sh
v99-review doctor
```

### __Version__ { #Version data-toc-label="Version" }
Show version review tool
```
v99-review version
```

#### __All__ { #All data-toc-label="All" }
Review multiple mini app in a folder.
Default does not use argument, the tool will review a single mini app
```
v99-review --all
```
!!! note "Run in folder includes miniapp"

#### __Debug__ { #Debug data-toc-label="Debug" }
Show all log debug and summary of the review result.
Default does not use argument, the tool only shows the review result
```
v99-review --debug
```

#### __Export__ { #Export data-toc-label="Export" }
Show all log debug and summary of the review result.
Default does not use argument, the tool only shows the review result
```
v99-review --export
```

#### __Full__ { #Full data-toc-label="Full" }
Show the full log of the review result.
Default does not use an argument, the tool just shows a summary of the review result
```
v99-review --full
```
## [Main features to review source code]
[Main features to review source code]: main-features.md

### Check files are not edited
+ metro.config.js
+ react-native.config.js
+ webpack.config.mjs
+ manifest.json
+ src/SDKCommunicator.ts
+ src/ProjectName.tsx
### Compare manifest
Compare manifest file trong proj mini vs server
### Check project structure
Structure: 
+ Check project name
+ Check required files(manifest.json, package.json, babel.config.js, webpack.config.mjs, SDKCommunicator.ts)
+ Check file type, must following type as Media(mp3, mpeg, gif, jpg, jpeg, png), code type(js, ts, tsx)
### Check dependencies
Check dependencies in package.json between the current mini app and template:
+ Check new fields
+ Check add more, edit dependencies, devDependencies, packageSupport.
### Check using v99 kit
+ Component: V99Button, V99Button, V99Box, V99Text, V99Image, V99Input, V99StyleSheet
+ V99Spacing
+ V99Color
### Check size
1. Check size the size of build bundles (Max 5Mb)
2. Check the size of all assets: ".mp3", ".mpeg", ".gif", ".jpg", ".jpeg", ".png" (Max 100Kb)
### Check source code security
+ Using variable window
+ Infinite loop
+ Create a store name same as the super app.
+ Check HTTP link
+ Check white list domain from the server 
### Analyze files
Recommenced to convert js to .ts or .tsx, warning file includes strange string (long string(length > 120))
### Check webpack package and native module using in source code. 
### Setup flag for all review features in the config file
### Check code convention with Eslint if the mini app has Eslint config: 
+ semi: disallows semicolons at the end of statements
+ object-curly-spacing: requires spacing inside of braces
+ array-bracket-spacing: disallows spaces inside array brackets
+ react/require-default-props: ['off']: ensure that any non-required prop types of a component have a corresponding defaultProps value.
+ react/default-props-match-prop-types: ['error']: This rule aims to ensure that any prop in defaultProps has a non-required type definition.
+ react/sort-prop-types: ['error']: This rule checks all components and verifies that all propTypes declarations are sorted alphabetically
+ react-hooks/exhaustive-deps: 'off': rule warns us when we have a missing dependency in an effective hook.
+ no-extra-semi: ['off']: This rule disallows unnecessary semicolons.
+ dot-notation: ['off']: This rule is aimed at maintaining code consistency and improving code readability by encouraging the use of the dot notation style whenever possible
### Export logs to CSV
### Setup git configs
Check_standard_manifest_link, mini_template, max_bundle_size_in_mb, max_asset_in_kb, max_string_length.
## [Config rule]
[Config rule]: config-rule.md

### Features 1,2,3,4,10
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)

### Feature 5 
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
  + For Component: Add react components that you want to replace by V99 component to `tracking_components` in the config file
    <br/> * Ex: You want to force `TouchableOpacity` to `V99Button`,
        <br/>Please add:
        `tracking_components: {
        TouchableOpacity: { kitName: "V99Button", isRequire: true },
        },`
    <br/> * Note: `isRequire` is true to show errorLog, else show warningLog
  + For V99Spacing: set `check_v99spacing` is true to show errorLog, else skip checking
  + For V99Color: set `check_v99color` is true to show errorLog, else skip checking

### Feature 6
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
  + Set maximum bundle size to property `max_bundle_size_in_mb` to show error log (default 5mb), remove to skip checking

### Feature 7
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
    + Set maximum assets size to property `max_asset_in_kb` to show error log (default 100kb), remove to skip checking

### Feature 8
Edit the content is not used in the source code at [src/rules_template/security_rules.txt](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/rules_template/security_rules.txt)

### Feature 9
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
    + Add property `analyze_content` to check the content file.
      <br/>=> Set length you want to check to `max_string_length`, remove to skip checking
      <br/>=> Add `force_use_typescript` to force use typescript, remove to skip checking

### Feature 11, 12
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)

### Feature 14
Edit configs at [config.json](https://github.com/ekkkt-group/review_tool_configs/blob/main/config.json)
