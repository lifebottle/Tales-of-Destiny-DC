import { useEffect, useState } from "react";
import { Flex, Tooltip, Button } from "@chakra-ui/react";
import { ConversionBox, Icon } from "components";
import { fetchRoute } from "components";

export default function Page() {
  const [jpnValue, setJpnValue] = useState("");
  const [hexValue, setHexValue] = useState("");
  const [curBody, setCurBody] = useState([]);
  const [curIndex, setCurIndex] = useState(0);

  const handleChange = async (e) => {
    setJpnValue(e.target.value);
    const data = await fetchRoute("api/jpnToHexList", {
      input: e.target.value,
    });
    setCurIndex(0);
    setCurBody(data?.body || []);
    setHexValue(data?.body?.[curIndex] || "");
  };

  const navigateIndex = () => {
    if (curIndex + 1 < curBody?.length) {
      setCurIndex(curIndex + 1);
    } else {
      setCurIndex(0);
    }
  };

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
        label="Japanese"
      />
      <ConversionBox
        value={hexValue}
        id="hex"
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
