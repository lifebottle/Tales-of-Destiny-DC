const isProd = process.env.NODE_ENV === "production";

module.exports = {
  // Use the CDN in production and localhost for development.
  assetPrefix: isProd
    ? "https://cdn.statically.io/gh/pnvnd/pnvnd.github.io/Tales-of-Destiny-DC/"
    : "",
};
