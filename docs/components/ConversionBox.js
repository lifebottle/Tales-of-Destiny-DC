import {
  Box,
  FormLabel,
  FormControl,
  Textarea,
  Flex,
  Button,
  useClipboard,
  Tooltip,
} from "@chakra-ui/react";
import { Icon } from "components";

const ConversionBox = ({
  value,
  onChange,
  id,
  label,
  readOnly = false,
  ...props
}) => {
  const { hasCopied, onCopy } = useClipboard(value);
  return (
    <FormControl id={id} {...props}>
      <FormLabel mr={0}>
        <Flex alignItems="center">
          <Box sx={{ flex: 1 }}>{label}</Box>
          {!readOnly && (
            <Tooltip hasArrow label={"Clear"}>
              <Button
                size="sm"
                onClick={() => onChange({ target: { value: "" } })}
              >
                <Icon size="sm" name="x-circle" />
              </Button>
            </Tooltip>
          )}
          <Tooltip hasArrow label={hasCopied ? "Copied" : "Copy"}>
            <Button size="sm" onClick={onCopy} ml={2}>
              <Icon size="sm" name={hasCopied ? "check-circle" : "copy"} />
            </Button>
          </Tooltip>
        </Flex>
      </FormLabel>
      <Textarea
        readOnly={readOnly}
        placeholder={label}
        rows={10}
        value={value}
        onChange={onChange}
        sx={{ bg: readOnly ? "gray.50" : "transparent" }}
      />
    </FormControl>
  );
};

export default ConversionBox;
