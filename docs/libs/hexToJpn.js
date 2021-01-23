export const hexToJpn = (word, dictionaries) => {
  const list = [];
  const hex = word.split("");
  for (let i = 0; i <= hex.length - 1; i += 6) {
    const checkHex = hex[i] + hex[i + 1] + hex[i + 3] + hex[i + 4];
    const symbol = dictionaries?.[checkHex];
    if (i + 6 > hex.length) continue;
    if (symbol) {
      list.push(symbol);
    } else {
      list.push(checkHex);
    }
  }
  return list.join("");
};
