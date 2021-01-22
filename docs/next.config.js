const isProd = process.env.NODE_ENV === "production";

module.exports = {
  basePath: process.env.NEXT_PUBLIC_BASE_PATH,
  // Use the CDN in production and localhost for development.
  assetPrefix: isProd
    ? "https://cdn.statically.io/gh/" +
      process.env.NEXT_PUBLIC_GITHUB_USER_NAME +
      process.env.NEXT_PUBLIC_BASE_PATH +
      "/gh-pages/"
    : "",
};
