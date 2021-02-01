const fetchRoute = async (route, body) => {
  try {
    const response = await fetch(route, {
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

export default fetchRoute;
