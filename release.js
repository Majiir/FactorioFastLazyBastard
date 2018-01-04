const exec = require('shell-utils').exec;

run();

function run() {
  exec.execSync(`rm -rf ./output`);
  exec.execSync(`mkdir ./output`);

  const name = process.env.npm_package_name;
  const version = process.env.npm_package_version;

  const info = require('./src/info.json');
  info.version = version;
  require('fs').writeFileSync('./src/info.json', JSON.stringify(info, null, 2));

  exec.execSync(`zip -r ./output/${name}_${version}.zip ./src`);
}
