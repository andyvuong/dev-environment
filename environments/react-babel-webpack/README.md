## react-babel-webpack template

### Description
An environment to get started with react, es6, and webpack development

### Box/Container
* There is no VM/Container configured for this environment but it can be easily setup via Docker or Vagrant (see other environments)

### Install and Run
* Build/Dev scripts are configured in ```package.json``` run via npm. Ensure the latest version of Npm, Npx, and Node (use nvm) are installed.
  * Install Dependencies: ```npm install```
  * Start Developing: ```npm run-script {start|build|debug}```

### Note
* The package gets built in app/dist.
* webpack-dev-server automatically watches for changes in your source files. The application can be accessed at localhost:3000.