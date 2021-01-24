import axios from "axios";
import { useMemo, useState } from "react";
export const useGetDictionaries = (files = []) => {
  const [data, setData] = useState();
  const [loading, setLoading] = useState(true);
  useMemo(async () => {
    setLoading(true);
    axios
      .all(files?.map((file) => axios.get("/api/dictionary/" + file)))
      .then(
        axios.spread((...responses) => {
          let combined = [];
          responses.map((response) => {
            combined.push(...response.data);
          });
          setData(combined);
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
