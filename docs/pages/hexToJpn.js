import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { fetchRoute } from "components";

export default function Page() {
  const [jpnValue, setJpnValue] = useState("");
  const [hexValue, setHexValue] = useState("");

  const handleChange = async (e) => {
    setHexValue(e.target.value);
    const data = await fetchRoute("api/hexToJpn", { input: e.target.value });
    setJpnValue(data?.body || "");
  };

  return (
    <Flex>
      <ConversionBox
        value={hexValue}
        mr={4}
        onChange={handleChange}
        id="hex"
        label="Hex"
      />
      <ConversionBox
        value={jpnValue}
        id="japanese"
        label="Japanese"
        readOnly={true}
      />
    </Flex>
  );
}
