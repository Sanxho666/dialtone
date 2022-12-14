# eslint-plugin-dialtone

dialtone eslint plugin

## Installation

You'll first need to install [ESLint](https://eslint.org/):

```sh
npm i eslint --save-dev
```

Next, install `@dialpad/eslint-plugin-dialtone`:

```sh
npm install @dialpad/eslint-plugin-dialtone --save-dev
```

## Usage

Add `@dialpad/dialtone` to the plugins section of your `.eslintrc` configuration file. You can omit the `eslint-plugin-` prefix:

```json
{
    "plugins": [
        "@dialpad/dialtone"
    ]
}
```


Then configure the rules you want to use under the rules section.

```json
{
    "rules": {
        "@dialpad/dialtone/rule-name": 2
    }
}
```

## Supported Rules

* Fill in provided rules here


