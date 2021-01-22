const isProd = true;

module.exports = {
  basePath: process.env.NEXT_PUBLIC_BASE_PATH,
  // Use the CDN in production and localhost for development.
  assetPrefix: isProd
    ? process.env.NEXT_PUBLIC_GITHUB_PAGES_URL +
      process.env.NEXT_PUBLIC_BASE_PATH +
      "/gh-pages/"
    : "",
};
