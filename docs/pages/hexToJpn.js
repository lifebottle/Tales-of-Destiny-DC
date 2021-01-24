import { useState, useContext } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { LayoutContext } from "components/MainLayout";

const hexToJpn = (word, dictData) => {
  const list = [];
  const hex = word.split("");
  for (let i = 0; i <= hex.length - 1; i += 6) {
    const checkHex = hex[i] + hex[i + 1] + hex[i + 3] + hex[i + 4];
    const symbol = dictData?.[checkHex];
    if (i + 5 > hex.length) continue;
    if (symbol) {
      list.push(symbol);
    } else {
      list.push(checkHex);
    }
  }
  return list.join("");
};

const transformData = (data) => {
  const transData = [];
  data?.map((d) => {
    if (d[0] !== "hex") transData[d[0]] = d[1].trim();
  });
  return transData;
};

export default function Page() {
  const { dictionaryJapan, dictionaryJapanLoading } = useContext(LayoutContext);
  const transformedData = transformData(dictionaryJapan);
  const [hexValue, setHexValue] = useState("");
  const handleChange = (e) => setHexValue(e.target.value);
  return (
    <Flex>
      <ConversionBox
        mr={4}
        value={hexValue}
        onChange={handleChange}
        id="hex"
        label="Hex"
      />
      <ConversionBox
        value={hexToJpn(hexValue, transformedData)}
        onChange={handleChange}
        id="japanese"
        label="Japanese"
        readOnly={true}
      />
    </Flex>
  );
}
