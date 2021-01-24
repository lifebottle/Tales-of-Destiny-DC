import { useState, useContext } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { LayoutContext } from "components/MainLayout";

export const jpnToHex = (word, dictData) => {
  let list = [];
  [...word].forEach((c) => list.push(chunk(dictData[c], 2).join(" ")));
  return list.join(" ");
};

const transformData = (data) => {
  const transData = [];
  data?.map((d) => {
    if (d[0] !== "hex") transData[d[1].trim()] = d[0];
  });
  return transData;
};

function chunk(str, n) {
  var ret = [];
  var i;
  var len;

  for (i = 0, len = str?.length; i < len; i += n) {
    ret.push(str.substr(i, n));
  }

  return ret;
}

export default function Page() {
  const { dictionaryJapan } = useContext(LayoutContext);
  const transformedData = transformData(dictionaryJapan);
  const [japaneseValue, setJapaneseValue] = useState("");
  const handleChange = (e) => setJapaneseValue(e.target.value);
  return (
    <Flex>
      <ConversionBox
        mr={4}
        value={japaneseValue}
        onChange={handleChange}
        id="japanese"
        label="Japanese"
      />
      <ConversionBox
        value={jpnToHex(japaneseValue, transformedData)}
        onChange={handleChange}
        id="hex"
        label="Hex"
        readOnly={true}
      />
    </Flex>
  );
}
