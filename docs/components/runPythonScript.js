import { PythonShell } from "python-shell";

function isJSON(str) {
  try {
    JSON.parse(str);
  } catch (e) {
    return false;
  }
  return true;
}

const runPythonScript = (pythonFile, args) => {
  let options = {
    mode: "text",
    pythonPath: process.env.NEXT_PUBLIC_PYTHON_PATH || null,
    pythonOptions: [],
    scriptPath: process.env.NEXT_PUBLIC_PYTHON_SCRIPTS_PATH || null,
    args: args,
  };

  return new Promise((resolve, reject) => {
    try {
      PythonShell.run(pythonFile, options, function (err, results) {
        const converted = isJSON(results?.[0])
          ? JSON.parse(results?.[0])
          : results?.[0];
        if (err) {
          reject({ error: err });
        }
        resolve({ body: converted });
      });
    } catch {
      eject({ error: "Python code error" });
    }
  });
};

export { runPythonScript };
