const isProd = process.env.NODE_ENV === "production";
const REPO_NAME = "Tales-of-Destiny-DC"; //TODO: Extract this to .env

module.exports = {
  basePath: "/" + REPO_NAME,
  // Use the CDN in production and localhost for development.
  assetPrefix: isProd
    ? "https://cdn.statically.io/gh/asyndesis/" + REPO_NAME + "/gh-pages/"
    : "",
};
