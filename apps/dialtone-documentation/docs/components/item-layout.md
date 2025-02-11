---
title: Item layout
description: An item layout provides a standardized group of containers to enable developer to use list-item like stack. It is used as base for `dt-list-item` component
status: ready
thumb: true
image: assets/images/components/item-layout.png
storybook: https://dialtone.dialpad.com/vue/?path=/story/components-item-layout--default
---

## With default styling

By default, item layout includes custom styling, like paddings, sizes, colors, etc.

<code-well-header class="d-d-block">
<dt-item-layout>
  <template #left>
      <dt-icon name="lock" />
    </template>
    Layout title
    <template #subtitle>
      Subtitle
    </template>
    <template #bottom>
      <dt-badge>Content</dt-badge>
    </template>
    <template #right>
      <dt-icon name="share" />
    </template>
    <template #selected>
      <dt-icon name="check" />
    </template>
</dt-item-layout>
</code-well-header>

<code-example-tabs
htmlCode='
<div class="dt-item-layout">
  <section class="dt-item-layout--left">
    <svg>...</svg>
  </section>
  <section class="dt-item-layout--content">
    <div class="dt-item-layout--title">
      Layout title
    </div>
    <div class="dt-item-layout--subtitle dt-item-layout--subtitle--with-title">
      Subtitle
    </div>
    <div class="dt-item-layout--bottom">
      <span class="d-badge">
        <span class="d-badge__label">Content</span>
      </span>
    </div>
  </section>
  <section class="dt-item-layout--right">
    <svg>...</svg>
  </section>
  <section class="dt-item-layout--selected">
    <svg>...</svg>
  </section>
</div>
'
vueCode='
<dt-item-layout>
  <template #left>
    <dt-icon name="lock" />
  </template>
  Layout title
  <template #subtitle>
    Subtitle
  </template>
  <template #bottom>
    <dt-badge>Content</dt-badge>
  </template>
  <template #right>
    <dt-icon name="share" />
  </template>
  <template #selected>
    <dt-icon name="check" />
  </template>
</dt-item-layout>
'
showHtmlWarning />

## Without styling

Setting the `unstyled` property will add `dt-item-layout--custom` class. This will change the item-layout from flexbox to grid, removing all the custom styling while maintaining the slots positions.

This way you can utilize the layout and customize your own styling using utility classes.

<code-well-header class="d-d-block">
  <dt-item-layout unstyled ref="exampleUnstyled">
    <template #left>
        <dt-icon name="lock" />
      </template>
      Layout title
      <template #subtitle>
        Subtitle
      </template>
      <template #bottom>
        <dt-badge>Content</dt-badge>
      </template>
      <template #right>
        <dt-icon name="share" />
      </template>
      <template #selected>
        <dt-icon name="check" />
      </template>
  </dt-item-layout>
</code-well-header>

<code-example-tabs
:htmlCode="() => $refs.exampleUnstyled"
vueCode='
<dt-item-layout unstyled>
  <template #left>
    <dt-icon name="lock" />
  </template>
  Layout title
  <template #subtitle>
    Subtitle
  </template>
  <template #bottom>
    <dt-badge>Content</dt-badge>
  </template>
  <template #right>
    <dt-icon name="share" />
  </template>
  <template #selected>
    <dt-icon name="check" />
  </template>
</dt-item-layout>
'
/>

## Vue API

<component-vue-api component-name="itemLayout" />
