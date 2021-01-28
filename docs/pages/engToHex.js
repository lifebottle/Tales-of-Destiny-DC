import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { fetchRoute } from "components";

export default function Page() {
  const [engValue, setEngValue] = useState("");
  const [hexValue, setHexValue] = useState("");

  const handleChange = async (e) => {
    setEngValue(e.target.value);
    const data = await fetchRoute("api/engToHex", { input: e.target.value });
    setHexValue(data?.body || "");
  };

  return (
    <Flex>
      <ConversionBox
        mr={4}
        value={engValue}
        onChange={handleChange}
        id="english"
        label="English"
      />
      <ConversionBox value={hexValue} id="hex" label="Hex" readOnly={true} />
    </Flex>
  );
}
