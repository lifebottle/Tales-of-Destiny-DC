import { useContext } from "react";
import { useClipboard as useChakraClipboard } from "@chakra-ui/react";
import { MainContext } from "@/components/index";
import { v4 as uuidv4 } from "uuid";
const useClipboard = (value) => {
  const { clipboardData, setClipboardData } = useContext(MainContext);
  const { hasCopied, onCopy: onChakraCopy } = useChakraClipboard(value);
  const id = uuidv4();
  const onTriggerCopy = (e) => {
    onChakraCopy(e);
    setClipboardData([...clipboardData, { value, id }]);
  };

  return { hasCopied, onCopy: onTriggerCopy };
};

export default useClipboard;
