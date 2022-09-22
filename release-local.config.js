module.exports = {
  branches: [
    'production',
    'staging',
    {
      name: 'beta',
      prerelease: true,
    },
    {
      name: 'alpha',
      prerelease: true,
    },
  ],
  plugins: [
    '@semantic-release/commit-analyzer',
    '@semantic-release/release-notes-generator',
    '@semantic-release/changelog',
    ['@semantic-release/npm', {
      npmPublish: false,
    }],
    ['@semantic-release/git', {
      /* eslint-disable-next-line no-template-curly-in-string */
      message: 'chore(release): ${nextRelease.version} \n\n${nextRelease.notes}',
    }],
    ["@semantic-release/exec", {
      "prepareCmd": "mvn versions:set -DnewVersion=${nextRelease.version} && git add -A && git commit -m 'release maven package ${nextRelease.version}'"
    }],
  ],
};
