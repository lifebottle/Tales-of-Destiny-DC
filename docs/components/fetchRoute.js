import { useState, useEffect } from "react";

const fetchRoute = async (url, body) => {
  try {
    const response = await fetch(url, {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify(body),
    });
    return await response.json();
  } catch (e) {
    return e;
  }
};

const useFetch = () => {
  const [data, setData] = useState("");
  const [error, setError] = useState(false);
  const [loading, setLoading] = useState(null);
  const [params, doFetch] = useState(null);
  useEffect(() => {
    const fetchData = async () => {
      if (!params) return;
      setError(false);
      setLoading(true);
      try {
        const res = await fetchRoute(params.url, params.body);
        setLoading(false);
        if (res.error) {
          setError(res.error);
        } else {
          setData(res?.body || "");
        }
      } catch (error) {
        setLoading(false);
        setError(error);
      }
    };
    fetchData();
  }, [params]);
  return { data, loading, error, doFetch };
};

export { fetchRoute, useFetch };
