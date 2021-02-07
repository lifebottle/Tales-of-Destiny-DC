import { useState } from "react";
import { Flex } from "@chakra-ui/react";
import { ConversionBox } from "components";
import { useFetch } from "components";

export default function Page() {
  const [engValue, setEngValue] = useState("");
  const { loading, data: hexValue, doFetch, error } = useFetch();

  const handleChange = async (e) => {
    setEngValue(e.target.value);
    doFetch({
      url: "api/engToHex",
      body: { input: e.target.value },
    });
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
