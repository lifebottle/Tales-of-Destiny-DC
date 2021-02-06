import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { useFetch } from "components";

export default function Page() {
  const [hexValue, setHexValue] = useState("");
  const { loading, data: jpnValue, doFetch, error } = useFetch();

  const handleChange = async (e) => {
    setHexValue(e.target.value);
    doFetch({
      url: "api/hexToJpn",
      body: { input: e.target.value },
    });
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
        error={error}
        value={jpnValue}
        id="japanese"
        label="Japanese"
        isLoading={loading}
        readOnly={true}
      />
    </Flex>
  );
}
