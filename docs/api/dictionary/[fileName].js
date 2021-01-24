// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
const papa = require("papaparse");
const request = require("request");

const parseFile = (fileUrl) => {
  try {
    const options = {
      delimiter: ",",
      header: false,
      transformHeader: (h, k) => {
        return h.trim();
      },
    };
    return new Promise((resolve) => {
      let data = [];
      const parseStream = papa.parse(papa.NODE_STREAM_INPUT, options);
      const dataStream = request.get(fileUrl).pipe(parseStream);
      parseStream.on("data", (chunk) => {
        data.push(chunk);
      });
      dataStream.on("finish", () => {
        resolve(data);
      });
    });
  } catch (e) {
    console.log(e);
  }
};

module.exports = async (req, res) => {
  const {
    query: { fileName },
  } = req;

  let parsedData = await parseFile(
    process.env.NEXT_PUBLIC_DICTIONARY_URL + "/" + fileName
  );
  res.statusCode = 200;
  res.json(parsedData);
};
