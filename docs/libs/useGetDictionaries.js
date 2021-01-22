import axios from "axios";
import { useMemo, useState } from "react";

export const useGetDictionaries = () => {
  const [data, setData] = useState();
  const [loading, setLoading] = useState(true);
  useMemo(async () => {
    setLoading(true);
    axios
      .all([
        axios.get(
          "https://cdn.statically.io/gh/" +
            process.env.NEXT_PUBLIC_GITHUB_USER_NAME +
            process.env.NEXT_PUBLIC_BASE_PATH +
            "/gh-pages/api/dictionary/kanji.txt"
        ),
        axios.get(
          "https://cdn.statically.io/gh/" +
            process.env.NEXT_PUBLIC_GITHUB_USER_NAME +
            process.env.NEXT_PUBLIC_BASE_PATH +
            "/gh-pages/api/dictionary/katakana.txt"
        ),
        axios.get(
          "https://cdn.statically.io/gh/" +
            process.env.NEXT_PUBLIC_GITHUB_USER_NAME +
            process.env.NEXT_PUBLIC_BASE_PATH +
            "/gh-pages/api/dictionary/symbols.txt"
        ),
        axios.get(
          "https://cdn.statically.io/gh/" +
            process.env.NEXT_PUBLIC_GITHUB_USER_NAME +
            process.env.NEXT_PUBLIC_BASE_PATH +
            "/gh-pages/api/dictionary/hiragana.txt"
        ),
      ])
      .then(
        axios.spread((...responses) => {
          //TODO: This parser is ugly. needs to be redone.
          let combined = [];
          let data = [];
          responses.map((response) => {
            combined.push(...response.data);
          });
          combined.map((c) => {
            if (c[0] !== "hex") data[c[0]] = c[1].trim();
          });
          console.log(data);
          setData(data);
          setLoading(false);
        })
      )
      .catch((errors) => {
        console.error(errors);
        setLoading(false);
      });
  }, []);
  return { data, loading };
};
