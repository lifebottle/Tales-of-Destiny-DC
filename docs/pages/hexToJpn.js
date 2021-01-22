import { useState } from "react";
import {
  Box,
  FormLabel,
  FormControl,
  Textarea,
  Flex,
  Button,
  useClipboard,
} from "@chakra-ui/react";
import { Icon } from "components";
import { hexToJpn } from "libs";

export default function Page() {
  const [hexValue, setHexValue] = useState(
    "99 FC 9A 61 9A 75 9A 8A 9A 4D 9A 7D"
  );
  const { hasCopied, onCopy } = useClipboard(hexToJpn(hexValue));
  const handleChange = (e) => setHexValue(e.target.value);
  return (
    <Flex>
      <FormControl id="hex" pr={4}>
        <FormLabel mr={0}>
          <Flex alignItems="center">
            <Box sx={{ flex: 1 }}>Hex</Box>
            <Button size="sm" onClick={() => setHexValue("")}>
              <Icon size="sm" name="x-circle" mr={2} />
              Clear
            </Button>
          </Flex>
        </FormLabel>
        <Textarea
          placeholder="Start typing..."
          name="hex"
          rows={7}
          value={hexValue}
          onChange={handleChange}
        />
      </FormControl>
      <FormControl id="japanese">
        <FormLabel mr={0}>
          <Flex alignItems="center">
            <Box sx={{ flex: 1 }}>Japanese</Box>
            <Button size="sm" onClick={onCopy}>
              {hasCopied ? (
                <>
                  <Icon size="sm" name="check-circle" mr={2} />
                  Copied
                </>
              ) : (
                <>
                  <Icon size="sm" name="copy" mr={2} />
                  Copy
                </>
              )}
            </Button>
          </Flex>
        </FormLabel>
        <Textarea
          readOnly
          rows={7}
          value={hexToJpn(hexValue)}
          onChange={handleChange}
        />
      </FormControl>
    </Flex>
  );
}
