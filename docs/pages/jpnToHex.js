import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { useFetch } from "components";

export default function Page() {
  const [jpnValue, setJpnValue] = useState("");
  const { loading, data: hexValue, doFetch, error } = useFetch();

  const handleChange = async (e) => {
    setJpnValue(e.target.value);
    doFetch({
      url: "api/jpnToHex",
      body: { input: e.target.value },
    });
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
      <ConversionBox
        isLoading={loading}
        error={error}
        value={hexValue}
        id="hex"
        label="Hex"
        readOnly={true}
      />
    </Flex>
  );
}
