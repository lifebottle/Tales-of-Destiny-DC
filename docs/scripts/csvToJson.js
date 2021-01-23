const CSVToJSON = require("csvtojson");
const promisify = require("util").promisify;
const path = require("path");
const fs = require("fs");
const readdirp = promisify(fs.readdir);
const statp = promisify(fs.stat);

const INPUT_DIRECTORY = "../dictionary";
const OUTPUT_DIRECTORY = "dictionary";

const getDirectoryFiles = async (
  directoryName = INPUT_DIRECTORY,
  results = []
) => {
  let files = await readdirp(directoryName);
  for (let f of files) {
    let fullPath = path.join(directoryName, f);
    let stat = await statp(fullPath);
    if (stat.isDirectory()) {
      await scan(fullPath, results);
    } else {
      results.push(fullPath);
    }
  }
  return results;
};

const main = async () => {
  const fileNames = await getDirectoryFiles();
  fileNames?.map((fileName) => {
    const outputName = path.parse(fileName).name;
    CSVToJSON()
      .fromFile(fileName)
      .then((result) => {
        let json = JSON.stringify(result);
        fs.writeFileSync(OUTPUT_DIRECTORY + "/" + outputName + ".json", json);
      })
      .catch((err) => {
        console.log(err);
      });
  });
};

main();
