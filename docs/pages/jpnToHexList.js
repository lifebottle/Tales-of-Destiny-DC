import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { fetchRoute } from "components";

export default function Page() {
  const [jpnValue, setJpnValue] = useState("");
  const [hexValue, setHexValue] = useState("");

  const handleChange = async (e) => {
    setJpnValue(e.target.value);
    const data = await fetchRoute("api/jpnToHexList", {
      input: e.target.value,
    });
    setHexValue(data?.body || "");
  };

  return (
    <Flex>
      <ConversionBox
        mr={4}
        value={jpnValue}
        onChange={handleChange}
        id="japanese"
        label="Japanese"
      />
      <ConversionBox value={hexValue} id="hex" label="Hex" readOnly={true} />
    </Flex>
  );
}
