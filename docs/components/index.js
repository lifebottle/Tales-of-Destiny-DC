export { default as MainLayout, MainContext } from "./MainLayout";
export { default as Icon } from "./Icon";
export { default as Link } from "./Link";
export { default as ConversionBox } from "./ConversionBox";
export { default as HistoryItem } from "./HistoryItem";
export { default as fetchRoute } from "./fetchRoute";
export { default as useClipboard } from "./useClipboard";
export const TOOL_LINKS = [
  {
    icon: "home",
    href: "/",
    title: "Home",
  },
  {
    icon: "tool",
    href: "/hexToJpn",
    title: "Hex to Japanese",
  },
  {
    icon: "tool",
    href: "/jpnToHex",
    title: "Japanese to Hex",
  },
  {
    icon: "list",
    href: "/jpnToHexList",
    title: "Japanese to Hex List",
  },
  {
    icon: "tool",
    href: "/engToHex",
    title: "English to Hex",
  },
];
