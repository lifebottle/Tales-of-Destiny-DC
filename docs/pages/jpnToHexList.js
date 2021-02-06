import { useEffect, useState } from "react";
import { Flex, Tooltip, Button } from "@chakra-ui/react";
import { ConversionBox, Icon } from "components";
import { useFetch } from "components";

export default function Page() {
  const [jpnValue, setJpnValue] = useState("");
  const [hexValue, setHexValue] = useState([]);
  const { loading, data, doFetch, error } = useFetch();
  const [curBody, setCurBody] = useState([]);
  const [curIndex, setCurIndex] = useState(0);
  const MAX_INPUT_LENGTH = 64;

  const handleChange = async (e) => {
    setJpnValue(e.target.value);
    doFetch({
      url: "api/jpnToHexList",
      body: { input: e.target.value },
    });
  };

  const navigateIndex = () => {
    if (curIndex + 1 < curBody?.length) {
      setCurIndex(curIndex + 1);
    } else {
      setCurIndex(0);
    }
  };

  useEffect(() => {
    setCurIndex(0);
    setCurBody(data || []);
    setHexValue(data?.[curIndex] || "");
  }, [data]);

  useEffect(() => {
    setHexValue(curBody?.[curIndex] || "");
  }, [curIndex, curBody]);

  const HexNavi = () => {
    return (
      <Tooltip hasArrow label={"View next option"}>
        <Button size="sm" onClick={navigateIndex}>
          <Icon size="sm" name="rotate-cw" />
        </Button>
      </Tooltip>
    );
  };

  return (
    <Flex>
      <ConversionBox
        mr={4}
        value={jpnValue}
        onChange={handleChange}
        id="japanese"
        label={`Japanese`}
        maxLength={MAX_INPUT_LENGTH}
      />
      <ConversionBox
        value={hexValue}
        id="hex"
        isLoading={loading}
        error={error}
        label={
          hexValue !== ""
            ? `Hex Option ${curIndex + 1} of ${curBody?.length}`
            : "Hex"
        }
        readOnly={true}
        buttons={<HexNavi />}
      />
    </Flex>
  );
}
