<template>
  <dt-recipe-callbar-button-with-popover
    :id="$attrs.id"
    :aria-label="$attrs.ariaLabel"
    :arrow-button-label="$attrs.arrowButtonLabel"
    :placement="$attrs.placement"
    :initial-focus-element="$attrs.initialFocusElement"
    :show-close-button="$attrs.showCloseButton"
    :disabled="$attrs.disabled"
    :offset="$attrs.offset"
    :force-show-arrow="$attrs.forceShowArrow"
    :active="$attrs.active"
    :danger="$attrs.danger"
    :button-class="$attrs.buttonClass"
    :button-width-size="$attrs.buttonWidthSize"
    :text-class="$attrs.textClass"
    :content-class="$attrs.contentClass"
    :open-popover="$attrs.openPopover"
    @arrow-click="$attrs.onArrowClick"
    @click="$attrs.onClick"
    @opened="$attrs.onOpened"
  >
    <span
      v-if="defaultSlot"
      v-html="defaultSlot"
    />
    <template
      v-if="$attrs.icon"
      #icon
    >
      <dt-icon :name="$attrs.icon" />
    </template>
    <template
      v-if="$attrs.tooltip"
      #tooltip
    >
      <span v-html="$attrs.tooltip" />
    </template>
    <template #content>
      <span v-html="$attrs.content" />
    </template>
    <template
      v-if="$attrs.headerContent"
      #headerContent
    >
      <span v-html="$attrs.headerContent" />
    </template>
    <template
      v-if="$attrs.footerContent"
      #footerContent
    >
      <span v-html="$attrs.footerContent" />
    </template>
  </dt-recipe-callbar-button-with-popover>
</template>

<script>
import DtRecipeCallbarButtonWithPopover from './callbar_button_with_popover.vue';
import { DtIcon } from '@/components/icon';

export default {
  name: 'DtRecipeCallbarButtonWithPopoverDefault',
  components: { DtRecipeCallbarButtonWithPopover, DtIcon },
};
</script>
