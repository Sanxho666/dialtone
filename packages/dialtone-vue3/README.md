# Dialtone Vue 📞

Dialtone Vue is a library of Vue components for [Dialtone][dt]. The goal is to simplify and standardize the use of common UI patterns and behaviour across all Dialpad projects.

Dialtone Vue is available in Vue 2 as well as Vue 3:

- **[Component Documentation Site (Vue 2) ↗️][dialtone-vue]**
- **[Component Documentation Site (Vue 3) ↗️][dialtone-vue3]**

[dt]: https://dialtone.dialpad.com
[dialtone-vue]: https://dialtone.dialpad.com/vue
[dialtone-vue3]: https://dialtone.dialpad.com/vue3

## Installation

You can install the Dialtone Vue library into your project via the following commands:

- Vue 2: `npm install @dialpad/dialtone-css @dialpad/dialtone-vue`
- Vue 3: `npm install @dialpad/dialtone-css @dialpad/dialtone-vue@vue3`

## Usage

First you must globally import Dialtone's css:

```js
import '@dialpad/dialtone-css';
```

or

```css
@import '@dialpad/dialtone-css';
```

And then import Dialtone Vue css for either Vue 2 or Vue 3:

- CSS

```css
@import "@dialpad/dialtone/vue2/css";
/* Or */
@import "@dialpad/dialtone/vue3/css";
```

- Javascript

```js
import "@dialpad/dialtone/vue2/css";
/* Or */
import "@dialpad/dialtone/vue3/css";
```

Dialtone Vue components can be imported directly from the package. Some components also export named constants, which can be imported as well:

```js
import { DtInput, VALIDATION_MESSAGE_TYPES } from '@dialpad/dialtone-vue';
```

Projects using Dialtone Vue should be aware of the requirements:

- Dialtone classes must be made available globally (to avoid duplication, Dialtone Vue does not do this for you).
- A tool like Webpack must be used to package the SFC components from Dialtone Vue.
- LESS preprocessor support for Vue SFC `<style>` blocks.

These requirements are enforced via peer dependencies of Dialtone Vue when possible.

## Emojis

Dialtone Vue uses [JoyPixels](https://www.joypixels.com/) to render emojis. If you are using the emoji components, Dialtone Vue will use the free JoyPixels assets hosted on JSDelivr CDN by default.
You may wish to use self-hosted JoyPixels assets such as the SVGs only available to premium license holders.
In order to do this, set your custom asset URL with the following functions for small and large emojis during initialization of your app:

```js
import { setEmojiAssetUrlSmall, setEmojiAssetUrlLarge } from '@dialpad/dialtone-vue'

// 16px and smaller
setEmojiAssetUrlSmall('https://my.example.website.com/joypixels/svg/unicode/32/', '.png')
// larger than 16px
setEmojiAssetUrlLarge('https://my.example.website.com/joypixels/svg/unicode/', '.svg')
```

You may access the emoji.json data for all emojis Dialtone Vue supports via executing the following function

```js
import { getEmojiData } from '@dialpad/dialtone-vue'
const emojiData = getEmojiData();
```

## Contributing

If you would like to contribute to Dialtone Vue the first step is to get the project running locally. Follow the below quickstart to do so.

1. Clone the monorepo `git clone git@github.com:dialpad/dialtone.git`
2. Install dependencies `pnpm install`
3. Run local dev server `pnpm start:dialtone-vue2` or `pnpm start:dialtone-vue3`
4. Visit local dev server at vue2: <http://localhost:9010/> vue3: <http://localhost:9011/>

Next read the more detailed contributor documentation in [CONTRIBUTING.md](.github/CONTRIBUTING.md).

## Project Status

Please refer to the [jira board][jira] to see what we are currently working on and what we have planned for the future.

[jira]: https://dialpad.atlassian.net/jira/software/c/projects/DLT/boards/548/backlog

## Requesting features / reporting bugs

Requesting a feature or reporting a bug? Please do so at the below links:

- [Request Feature](https://dialpad.atlassian.net/secure/CreateIssue.jspa?issuetype=10975&pid=12508)
- [Report Bug](https://dialpad.atlassian.net/secure/CreateIssue.jspa?issuetype=1&pid=12508)

Please also feel free to contact us via the #dialtone Dialpad channel with any questions
