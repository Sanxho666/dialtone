---
title: Badge
description: A badge is a compact UI element providing brief, descriptive information about an element and its surrounding context. It is terse, ideally one word.
status: ready
thumb: true
image: assets/images/components/badge.png
storybook: https://dialtone.dialpad.com/vue/?path=/story/components-badge--default
figma_url: https://www.figma.com/file/2adf7JhZOncRyjYiy2joil/DT-Core%3A-Components-7?node-id=8914%3A21227&viewport=656%2C314%2C0.55&t=xHutRjwo1o5zMTgT-11
---

<code-well-header>
  <dt-stack direction="row" gap="400" class="d-ai-center">
    <dt-badge text="Label" />
    <dt-badge kind="count" text="1" />
  </dt-stack>
</code-well-header>

<!-- <component-combinator component-name="DtBadge" /> -->

## Usage

<dialtone-usage>
<template #do>

- To flag and draw awareness to a specific element or feature of focus. For example, something is unique about that separates it from other like content.
- As a notification system with minimal footprint.
</template>

<template #dont>

- To indicate that interaction by the user is required.
</template>

</dialtone-usage>

### Best practices

- While the color variant used should not be the sole indicator of information, choose color patterns that users can quickly scan and identify its intention.
- Avoid long values, favoring a brief scannable word.

## Accessibility

- Since a Badge may often reflect a value within an implied label, ensure a label is announced. For example, via `aria-label` or `aria-labeledby`.

## Kind

### Label

<code-well-header bgclass="d-bgc-primary">
  <dt-badge text="Label" />
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge"><span class="d-badge__label">Label</span></span>'
vueCode='
<dt-badge text="Label" />
'
showHtmlWarning />

### Count

<code-well-header bgclass="d-bgc-primary">
  <span class="d-badge d-badge--count"><span class="d-badge__label">1</span></span>
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge d-badge--count"><span class="d-badge__label">1</span></span>'
vueCode='
<dt-badge kind="count" text="1" />
'
showHtmlWarning />

## Type

<table class="d-table dialtone-doc-table d-mb16">
  <thead>
    <tr>
      <th>Type</th>
      <th class="d-ws-nowrap">Kind: <span class="d-fw-normal">Label</span></th>
      <th class="d-ws-nowrap">Kind: <span class="d-fw-normal">Count</span></th>
      <th>Usage</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="d-ta-left">Default</th>
      <td>
        <dt-badge text="Label" />
      </td>
      <td>
        <dt-badge kind="count" text="1" />
      </td>
      <td>Default general purpose callout when no implicit semantic meaning applies.</td>
    </tr>
    <tr>
      <th class="d-ta-left">Info</th>
      <td>
        <dt-badge type="info" text="Label" />
      </td>
      <td>
        <dt-badge kind="count" type="info" text="2" />
      </td>
      <td>Used to convey general information that isn’t critical or requires action on the user's part.</td>
    </tr>
    <tr>
      <th class="d-ta-left">Success</th>
      <td>
        <dt-badge type="success" text="Label" />
      </td>
      <td>
        <dt-badge kind="count" type="success" text="3" />
      </td>
      <td>Accompanying a successful or otherwise positive action or message</td>
    </tr>
    <tr>
      <th class="d-ta-left">Warning</th>
      <td>
        <dt-badge type="warning" text="Label" />
      </td>
      <td>
        <dt-badge kind="count" type="warning" text="4" />
      </td>
      <td>When a users attention is needed, or action may be required.</td>
    </tr>
    <tr>
      <th class="d-ta-left">Critical</th>
      <td>
        <dt-badge type="critical" text="Label" />
      </td>
      <td>
        <dt-badge kind="count" type="critical" text="5" />
      </td>
      <td>To communicate conditions deemed critical, negative, or dangerous. For example, sensitive state (e.g. recording), must be resolved, or something has failed.</td>
    </tr>
    <tr>
      <th class="d-ta-left">Bulletin</th>
      <td>
        <dt-badge type="bulletin" text="Label" />
      </td>
      <td>
        <dt-badge kind="count" type="bulletin" text="6" />
      </td>
      <td>Used to provide temporary feedback to specific items in the interface, like live activity, notifications, and unread counts. </td>
    </tr>
    <tr>
      <th class="d-ta-left">Ai</th>
      <td>
        <dt-badge type="ai" text="Label" kind="label" />
      </td>
      <td><abbr class="d-fc-black-400 d-td-none d-fs-100" title="Not applicable">N/A</abbr></td>
      <td>To call out Dialpad Ai features.</td>
    </tr>
  </tbody>
</table>

<code-example-tabs
htmlCode='
<span class="d-badge"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--info"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--success"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--warning"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--critical"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--bulletin"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--ai">
  <span class="d-badge__icon-left">
    <dt-icon name="lightning-bolt" size="200" />
  </span>
  <span class="d-badge__label">Label</span>
</span>
<span class="d-badge d-badge--count"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--count d-badge--info"><span class="d-badge__label">2</span></span>
<span class="d-badge d-badge--count d-badge--success"><span class="d-badge__label">3</span></span>
<span class="d-badge d-badge--count d-badge--warning"><span class="d-badge__label">4</span></span>
<span class="d-badge d-badge--count d-badge--critical"><span class="d-badge__label">5</span></span>
<span class="d-badge d-badge--count d-badge--bulletin"><span class="d-badge__label">6</span></span>
'
vueCode='
<dt-badge kind="label" text="Label" />
<dt-badge type="info" kind="label" text="Label" />
<dt-badge type="success" kind="label" text="Label" />
<dt-badge type="warning" kind="label" text="Label" />
<dt-badge type="critical" kind="label" text="Label" />
<dt-badge type="bulletin" kind="label" text="Label" />
<dt-badge type="ai" text="Label" kind="label" />
<dt-badge type="default" text="1" kind="count" />
<dt-badge type="info" text="2" kind="count" />
<dt-badge type="success" text="3" kind="count" />
<dt-badge type="warning" text="4" kind="count" />
<dt-badge type="critical" text="5" kind="count" />
<dt-badge type="bulletin" text="6" kind="count" />
'
showHtmlWarning />

## Outlined

<code-well-header bgclass="d-bgc-primary">
  <dt-stack direction="row" gap="400">
    <dt-badge text="Label" outlined />
    <dt-badge text="Label" type="info" outlined />
    <dt-badge text="Label" type="success" outlined />
    <dt-badge text="Label" type="warning" outlined />
    <dt-badge text="Label" type="critical" outlined />
    <dt-badge text="1" kind="count" outlined />
    <dt-badge text="1" type="info" kind="count" outlined />
    <dt-badge text="1" type="success" kind="count" outlined />
    <dt-badge text="1" type="warning" kind="count" outlined />
    <dt-badge text="1" type="critical" kind="count" outlined />
  </dt-stack>
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--info d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--success d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--warning d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--critical d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--info d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--success d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--warning d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--critical d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
'
vueCode='
<dt-badge text="Label" outlined />
<dt-badge text="Label" type="info" outlined />
<dt-badge text="Label" type="success" outlined />
<dt-badge text="Label" type="warning" outlined />
<dt-badge text="Label" type="critical" outlined />
<dt-badge text="1" kind="count" outlined />
<dt-badge text="1" type="info" kind="count" outlined />
<dt-badge text="1" type="success" kind="count" outlined />
<dt-badge text="1" type="warning" kind="count" outlined />
<dt-badge text="1" type="critical" kind="count" outlined />
'
showHtmlWarning />

## Subtle

At the moment, only the `bulletin` type has a subtle variant.

<code-well-header>
  <dt-stack direction="row" gap="400">
    <dt-badge text="Label" type="bulletin" subtle />
    <dt-badge text="Label" type="bulletin" subtle outlined />
    <dt-badge text="1" type="bulletin" subtle kind="count" />
    <dt-badge text="1" type="bulletin" subtle kind="count" outlined />
  </dt-stack>
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge d-badge--bulletin d-badge--subtle"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--bulletin d-badge--subtle d-badge--outlined"><span class="d-badge__label">Label</span></span>
<span class="d-badge d-badge--bulletin d-badge--subtle d-badge--count"><span class="d-badge__label">1</span></span>
<span class="d-badge d-badge--bulletin d-badge--subtle d-badge--count d-badge--outlined"><span class="d-badge__label">1</span></span>
'
vueCode='
<dt-badge text="Label" type="bulletin" subtle />
<dt-badge text="Label" type="bulletin" subtle outlined />
<dt-badge text="1" type="bulletin" subtle kind="count" />
<dt-badge text="1" type="bulletin" subtle kind="count" outlined />
'
showHtmlWarning />

## Icon

<code-well-header bgclass="d-bgc-primary">
  <dt-stack direction="row" gap="400">
    <dt-badge type="default" text="Label" kind="label" icon-left="lightning-bolt"/>
    <dt-badge type="default" text="Label" kind="label" icon-right="lightning-bolt"/>
  </dt-stack>
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge">
  <span class="d-badge__icon-left">
    <dt-icon name="lightning-bolt" size="200" />
  </span>
  <span class="d-badge__label">Label</span>
</span>

<span class="d-badge">
  <span class="d-badge__label">Label</span>
  <span class="d-badge__icon-right">
    <dt-icon name="lightning-bolt" size="200" />
  </span>
</span>
'
vueCode='
<dt-badge type="default" text="Label" kind="label" icon-left="lightning-bolt"/>
<dt-badge type="default" text="Label" kind="label" icon-right="lightning-bolt"/>
'
showHtmlWarning />

## Decorative

Decorative badges label and classify items for quick recognition.

<code-well-header bgclass="d-bgc-primary">
  <dt-stack direction="row" gap="500" class="d-ai-baseline">
    <dt-stack gap="500">
      <span class="d-label--md-compact">Black</span>
      <dt-badge text="Label" decoration="black-400" />
      <dt-badge text="Label" decoration="black-500" />
      <dt-badge text="Label" decoration="black-900" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Red</span>
      <dt-badge text="Label" decoration="red-200" />
      <dt-badge text="Label" decoration="red-300" />
      <dt-badge text="Label" decoration="red-400" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Purple</span>
      <dt-badge text="Label" decoration="purple-200" />
      <dt-badge text="Label" decoration="purple-300" />
      <dt-badge text="Label" decoration="purple-400" />
      <dt-badge text="Label" decoration="purple-500" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Blue</span>
      <dt-badge text="Label" decoration="blue-200" />
      <dt-badge text="Label" decoration="blue-300" />
      <dt-badge text="Label" decoration="blue-400" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Green</span>
      <dt-badge text="Label" decoration="green-300" />
      <dt-badge text="Label" decoration="green-400" />
      <dt-badge text="Label" decoration="green-500" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Gold</span>
      <dt-badge text="Label" decoration="gold-300" />
      <dt-badge text="Label" decoration="gold-400" />
      <dt-badge text="Label" decoration="gold-500" />
    </dt-stack>
    <dt-stack gap="500">
      <span class="d-label--md-compact">Magenta</span>
      <dt-badge text="Label" decoration="magenta-200" />
      <dt-badge text="Label" decoration="magenta-300" />
      <dt-badge text="Label" decoration="magenta-400" />
    </dt-stack>
  </dt-stack>
</code-well-header>

<code-example-tabs
htmlCode='
<span class="d-badge d-badge--decorate-{$color}">
  <span class="d-badge__decorative"></span>
  <span class="d-badge__label">Label</span>
</span>
'
vueCode='
<dt-badge text="Label" decoration="black-400" />
<dt-badge text="Label" decoration="black-500" />
<dt-badge text="Label" decoration="black-900" />
<dt-badge text="Label" decoration="red-200" />
<dt-badge text="Label" decoration="red-300" />
<dt-badge text="Label" decoration="red-400" />
<dt-badge text="Label" decoration="purple-200" />
<dt-badge text="Label" decoration="purple-300" />
<dt-badge text="Label" decoration="purple-400" />
<dt-badge text="Label" decoration="purple-500" />
<dt-badge text="Label" decoration="blue-200" />
<dt-badge text="Label" decoration="blue-300" />
<dt-badge text="Label" decoration="blue-400" />
<dt-badge text="Label" decoration="green-300" />
<dt-badge text="Label" decoration="green-400" />
<dt-badge text="Label" decoration="green-500" />
<dt-badge text="Label" decoration="gold-300" />
<dt-badge text="Label" decoration="gold-400" />
<dt-badge text="Label" decoration="gold-500" />
<dt-badge text="Label" decoration="magenta-200" />
<dt-badge text="Label" decoration="magenta-300" />
<dt-badge text="Label" decoration="magenta-400" />
'
showHtmlWarning />

<dialtone-usage>
<template #do>

- Use for categories of items with a limited number of options (eg. call categories, AI moments).
</template>

<template #dont>

- Use for categories of items with an unlimited or unknown number of options (eg. user-defined contact labels, RTA cards, contact centers).
- Use for single items that are not part of a larger group.
- Use for decoration only, to bring attention to part of the UI by using colors.
- Use with `kind=count`, nor with any `type` that is not `default`.
- Use in combination with an icon.
- Change the customize the Badge's background color text style,
- Extend the decorative slot color beyond what Dialtone provides.
</template>

</dialtone-usage>

### Best practices

- Favor lighter shades over darker ones.
- Use each color hue before using the next available shade.

## Examples

### Label

<code-well-header bgclass="d-bgc-primary">
  <dt-stack gap="500">
    <dt-stack direction="row" gap="400">
      <span class="d-badge">Co-host</span>
      <span class="d-badge">Customer</span>
      <span class="d-badge">
        <span class="d-badge__icon-left">
          <dt-icon name="lock" size="200" />
        </span>
        <span class="d-badge__label">Locked</span>
      </span>
      <span class="d-badge">
        <span class="d-badge__icon-left">
          <dt-icon name="message" size="200" />
        </span>
        <span class="d-badge__label">Chat log</span>
      </span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--info"><span class="d-badge__label">In progress</span></span>
      <span class="d-badge d-badge--info"><span class="d-badge__label">Beta</span></span>
      <span class="d-badge d-badge--info"><span class="d-badge__label">Draft</span></span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--warning"><span class="d-badge__label">Overdue</span></span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--success"><span class="d-badge__label">Resolved</span></span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--critical">
        <span class="d-badge__icon-left">
          <dt-icon name="record-filled" size="200" />
        </span>
        <span class="d-badge__label">Recording</span>
      </span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--bulletin"><span class="d-badge__label">Live</span></span>
      <span class="d-badge d-badge--bulletin"><span class="d-badge__label">Presenter</span></span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <dt-badge type="ai" text="Ai Notes" />
      <dt-badge type="ai" text="Ai Suggestion" />
      <dt-badge type="ai" text="Ai enabled" />
      <dt-badge type="ai" text="Ai Transcript" />
    </dt-stack>
  </dt-stack>
</code-well-header>

### Count

<code-well-header bgclass="d-bgc-primary">
  <dt-stack gap="500">
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--count d-badge--success">
        <span class="d-badge__icon-left">
          <dt-icon name="arrow-up" size="200" />
        </span>
        <span class="d-badge__label">5%</span>
      </span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--count d-badge--critical">
        <span class="d-badge__icon-left">
          <dt-icon name="arrow-down" size="200" />
        </span>
        <span class="d-badge__label">-12%</span>
      </span>
    </dt-stack>
    <dt-stack direction="row" gap="400">
      <span class="d-badge d-badge--count d-badge--bulletin"><span class="d-badge__label">1</span></span>
      <span class="d-badge d-badge--count d-badge--bulletin"><span class="d-badge__label">18</span></span>
      <span class="d-badge d-badge--count d-badge--bulletin"><span class="d-badge__label">99+</span></span>
    </dt-stack>
  </dt-stack>
</code-well-header>

## Vue API

<component-vue-api component-name="badge" />

## Classes

<component-class-table component-name="badge"></component-class-table>

<script setup>
  import { classes } from '@data/badge.json';
</script>
