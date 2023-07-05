## [Main features to review source code]
[Main features to review source code]: main-features.md

### __Check files are not edited__
+ metro.config.js
+ react-native.config.js
+ webpack.config.mjs
+ manifest.json
+ src/SDKCommunicator.ts
+ src/ProjectName.tsx
### __Compare manifest__
Compare manifest file trong proj mini vs server
### __Check project structure__
Structure: 
+ Check project name
+ Check required files(manifest.json, package.json, babel.config.js, webpack.config.mjs, SDKCommunicator.ts)
+ Check file type, must following type as Media(mp3, mpeg, gif, jpg, jpeg, png), code type(js, ts, tsx)
### __Check dependencies__
Check dependencies in package.json between the current mini app and template:
+ Check new fields
+ Check add more, edit dependencies, devDependencies, packageSupport.
### __Check using v99 kit__
+ Component: V99Button, V99Button, V99Box, V99Text, V99Image, V99Input, V99StyleSheet
+ V99Spacing
+ V99Color
### __Check size__
1. Check size the size of build bundles (Max 5Mb)
2. Check the size of all assets: ".mp3", ".mpeg", ".gif", ".jpg", ".jpeg", ".png" (Max 100Kb)
### __Check source code security__
+ Using variable window
+ Infinite loop
+ Create a store name same as the super app.
+ Check HTTP link
+ Check white list domain from the server 
### __Analyze files__
Recommenced to convert js to .ts or .tsx, warning file includes strange string (long string(length > 120))
### __Check webpack package and native module using in source code.__
### __Setup flag for all review features in the config file__
### __Check code convention with Eslint if the mini app has Eslint config__ 
+ semi: disallows semicolons at the end of statements
+ object-curly-spacing: requires spacing inside of braces
+ array-bracket-spacing: disallows spaces inside array brackets
+ react/require-default-props: ['off']: ensure that any non-required prop types of a component have a corresponding defaultProps value.
+ react/default-props-match-prop-types: ['error']: This rule aims to ensure that any prop in defaultProps has a non-required type definition.
+ react/sort-prop-types: ['error']: This rule checks all components and verifies that all propTypes declarations are sorted alphabetically
+ react-hooks/exhaustive-deps: 'off': rule warns us when we have a missing dependency in an effective hook.
+ no-extra-semi: ['off']: This rule disallows unnecessary semicolons.
+ dot-notation: ['off']: This rule is aimed at maintaining code consistency and improving code readability by encouraging the use of the dot notation style whenever possible
### __Export logs to CSV__
### __Setup git configs__
Check_standard_manifest_link, mini_template, max_bundle_size_in_mb, max_asset_in_kb, max_string_length.
