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