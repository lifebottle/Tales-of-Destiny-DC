import { useContext } from "react";
import {
  Textarea,
  Flex,
  Button,
  useClipboard,
  Tooltip,
} from "@chakra-ui/react";
import { Icon } from "@/components/index";
import { MainContext } from "@/components/index";

const HistoryItem = ({ item, ...props }) => {
  const { clipboardData, setClipboardData } = useContext(MainContext);
  const { value, id } = item;
  const { hasCopied, onCopy } = useClipboard(value);
  const handleRemoveItem = () => {
    setClipboardData(clipboardData.filter((item) => item.id !== id));
  };

  return (
    <Flex alignItems="center" mb={2}>
      <Textarea
        size="xs"
        fontFamily="mono"
        readOnly={true}
        rows={1}
        value={value}
        sx={{ bg: "gray.50" }}
        {...props}
      />
      <Tooltip hasArrow label={hasCopied ? "Copied" : "Copy"}>
        <Button size="sm" onClick={onCopy} ml={2}>
          <Icon size="sm" name={hasCopied ? "check-circle" : "copy"} />
        </Button>
      </Tooltip>
      <Tooltip hasArrow label={"Remove"}>
        <Button size="sm" ml={2} onClick={handleRemoveItem}>
          <Icon size="sm" name="x" />
        </Button>
      </Tooltip>
    </Flex>
  );
};

export default HistoryItem;
