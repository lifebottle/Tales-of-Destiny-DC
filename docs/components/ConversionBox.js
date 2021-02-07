import {
  Box,
  FormLabel,
  FormControl,
  Textarea,
  Flex,
  Button,
  Tooltip,
  Text,
  Spinner,
} from "@chakra-ui/react";
import { Icon, useClipboard } from "components";

const ConversionBox = ({
  value,
  onChange,
  id,
  label,
  readOnly = false,
  rows = 10,
  maxLength = 100,
  buttons = <></>,
  error = false,
  isLoading,
  ...props
}) => {
  const { hasCopied, onCopy } = useClipboard(value);
  const showCharsLeft = () => {
    return (
      <Text sx={{ float: "right", mt: -9, mr: 3 }} color="gray.300">{` ${
        maxLength - (value?.length || 0)
      } characters left`}</Text>
    );
  };
  const Status = () => {
    if (!readOnly) return "";
    else if (isLoading) {
      return (
        <Tooltip hasArrow label={"It will load. Be patient."}>
          <Spinner
            ml={2}
            thickness="2px"
            speed="1s"
            emptyColor="gray.200"
            color="blue.500"
            size="sm"
          />
        </Tooltip>
      );
    } else if (value !== "" && !error) {
      return <Icon ml={2} color="green.500" size="sm" name="check" />;
    } else if (error) {
      return <Icon ml={2} color="red.500" size="sm" name="x" />;
    }
    return "";
  };
  return (
    <FormControl id={id} {...props}>
      <FormLabel mr={0}>
        <Flex alignItems="center">
          <Flex alignItems="center" sx={{ flex: 1 }}>
            <Text>{label}</Text>
            <Status />
          </Flex>
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
        isInvalid={error}
        fontFamily="mono"
        readOnly={readOnly}
        placeholder={label}
        rows={rows}
        value={value}
        onChange={onChange}
        maxLength={maxLength}
        sx={{ bg: readOnly ? "gray.50" : "transparent" }}
      />
      {showCharsLeft()}
    </FormControl>
  );
};

export default ConversionBox;
