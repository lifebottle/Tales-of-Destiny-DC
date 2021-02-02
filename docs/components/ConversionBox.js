import {
  Box,
  FormLabel,
  FormControl,
  Textarea,
  Flex,
  Button,
  Tooltip,
  Text,
} from "@chakra-ui/react";
import { Icon, useClipboard } from "components";

const ConversionBox = ({
  value,
  onChange,
  id,
  label,
  readOnly = false,
  rows = 10,
  maxLength,
  buttons = <></>,
  ...props
}) => {
  const { hasCopied, onCopy } = useClipboard(value);
  const showCharsLeft = () => {
    if (maxLength)
      return (
        <Text sx={{ float: "right", mt: -9, mr: 3 }} color="gray.300">{` ${
          maxLength - (value?.length || 0)
        } characters left`}</Text>
      );
    else return "";
  };
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
          {buttons}
          <Tooltip hasArrow label={hasCopied ? "Copied" : "Copy"}>
            <Button size="sm" onClick={onCopy} ml={2}>
              <Icon size="sm" name={hasCopied ? "check-circle" : "copy"} />
            </Button>
          </Tooltip>
        </Flex>
      </FormLabel>
      <Textarea
        fontFamily="mono"
        readOnly={readOnly}
        placeholder={label}
        rows={rows}
        value={value}
        onChange={onChange}
        maxLength
        sx={{ bg: readOnly ? "gray.50" : "transparent" }}
      />
      {showCharsLeft()}
    </FormControl>
  );
};

export default ConversionBox;
