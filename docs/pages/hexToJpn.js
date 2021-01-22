import { useState, useContext } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { hexToJpn } from "libs";
import { LayoutContext } from "components/MainLayout";

export default function Page() {
  const { dictionaries } = useContext(LayoutContext);
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
        value={hexToJpn(hexValue, dictionaries)}
        onChange={handleChange}
        id="japanese"
        label="Japanese"
        readOnly={true}
      />
    </Flex>
  );
}
