import { runPythonScript } from "components/runPythonScript";
const handler = async (req, res) => {
  const results = await runPythonScript("api/_scripts/JpnToHex.py", [
    req?.body?.input,
  ]);
  res.send(results);
};
export default handler;
