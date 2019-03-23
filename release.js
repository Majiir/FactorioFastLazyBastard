const { execSync } = require('child_process');
const fs = require('fs');

execSync(`rm -rf ./dist`);
execSync(`mkdir ./dist`);


const name = process.env.npm_package_name;
const version = process.env.npm_package_version;
const description = fs.readFileSync('./README.md').toString();

const info = JSON.parse(fs.readFileSync('./src/info.json').toString());

info.version = version;
info.description = description;
fs.writeFileSync('./src/info.json', JSON.stringify(info, null, 2));

execSync(`zip -r ./dist/${name}_${version}.zip ./src`);
