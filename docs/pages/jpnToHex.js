import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { jpnToHex } from "libs";

export default function Page() {
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
        value={jpnToHex(japaneseValue)}
        onChange={handleChange}
        id="hex"
        label="Hex"
        readOnly={true}
      />
    </Flex>
  );
}
