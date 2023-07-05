## [Config rule]
[Config rule]: config-rule.md

### __Features 1,2,3,4,10__
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)

### __Feature 5__
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

### __Feature 6__
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
  + Set maximum bundle size to property `max_bundle_size_in_mb` to show error log (default 5mb), remove to skip checking

### __Feature 7__
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
    + Set maximum assets size to property `max_asset_in_kb` to show error log (default 100kb), remove to skip checking

### __Feature 8__
Edit the content is not used in the source code at [src/rules_template/security_rules.txt](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/rules_template/security_rules.txt)

### __Feature 9__
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)
    + Add property `analyze_content` to check the content file.
      <br/>=> Set length you want to check to `max_string_length`, remove to skip checking
      <br/>=> Add `force_use_typescript` to force use typescript, remove to skip checking

### __Feature 11, 12__
Edit the rules at: [src/config_rule.js](https://github.com/ekkkt-group/mobile-review-code-mini-app-tool/blob/develop/src/config_rule.js)

### __Feature 14__
Edit configs at [config.json](https://github.com/ekkkt-group/review_tool_configs/blob/main/config.json)
