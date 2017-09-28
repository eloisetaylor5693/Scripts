# Scaffolding Angular Web App

## Setup using Yeoman for Angular 1

From article: <https://www.toptal.com/angular-js/your-first-angularjs-app-part-2-scaffolding-building-and-testing>

### Global installs required

*Run as administrator*

```cmd
npm install -g yo grunt-cli bower
npm install -g generator-karma generator-angular
```

### Project setup

```cmd
CD <DIR>
mkdir <appFolder>
cd <appFolder>

/* Scaffolds the project */
yo angular

npm install
bower install
```

## Setup for Angular 2

<https://scotch.io/tutorials/use-the-angular-cli-for-faster-angular-2-projects>

```cmd
npm install -g @angular/cli

CD <DIR>
ng new <appName>
```