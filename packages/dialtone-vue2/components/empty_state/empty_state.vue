<template>
  <dt-stack
    :class="emptyStateClasses"
  >
    <template v-if="showIllustration">
      <span
        v-if="showIcon"
        class="d-empty-state__icon"
      >
        <dt-icon
          :name="iconName"
          size="800"
        />
      </span>

      <span
        v-if="showIllustrationComponent"
        class="d-empty-state__illustration"
      >
        <dt-illustration
          :name="illustrationName"
        />
      </span>
    </template>

    <dt-stack
      gap="450"
      :class="['d-empty-state__content', contentClass]"
    >
      <div :class="['d-empty-state__header-text', headlineClass]">
        {{ headerText }}
      </div>

      <p
        v-if="bodyText"
        :class="['d-empty-state__body-text', bodyClass]"
      >
        {{ bodyText }}
      </p>
    </dt-stack>

    <slot name="body" />
  </dt-stack>
</template>

<script>
import { EMPTY_STATE_SIZE_MODIFIERS } from './empty_state_constants.js';
import { DtIllustration, ILLUSTRATION_NAMES } from '@/components/illustration';
import { DtIcon, ICON_NAMES } from '@/components/icon';
import { DtStack } from '@/components/stack';

export default {
  name: 'DtEmptyState',

  components: {
    DtIllustration,
    DtIcon,
    DtStack,
  },

  props: {
    /**
     * The empty state size.
     * @values 'sm', 'md', 'lg'
     */
    size: {
      type: String,
      default: 'lg',
      validator: (s) => Object.keys(EMPTY_STATE_SIZE_MODIFIERS).includes(s),
    },

    /**
     * The illustration name in kebab-case
     * This only displays when size is 'lg' or 'md'
     * This has priority over icon.
     * @type {String}
     */
    illustrationName: {
      type: String,
      default: null,
      validator: (name) => ILLUSTRATION_NAMES.includes(name),
    },

    /**
     * The icon name in kebab-case
     * This will be shown in 'lg' and 'md' size only if illustrationName prop is not provided and
     * Will always be shown in 'sm' size.
     * @type {String}
     */
    iconName: {
      type: String,
      default: null,
      validator: (name) => ICON_NAMES.includes(name),
    },

    /**
     * Header text
     * @type {String}
     */
    headerText: {
      type: String,
      required: true,
    },

    /**
     * Body text
     * @type {String}
     */
    bodyText: {
      type: String,
      default: null,
    },

    /**
     * Whether to show the illustration
     * @type {Boolean}
     */
    showIllustration: {
      type: Boolean,
      default: true,
    },
  },

  computed: {
    /**
     * Illustration will always be shown in lg and md size
     * Illustration will not be shown in sm size
     */
    showIllustrationComponent () {
      return this.illustrationName && this.notSmSize;
    },

    /**
     * Icon will be shown in lg and md size only if illustration is not provided
     * Icon will always be shown in sm size
     */
    showIcon () {
      if (!this.iconName) {
        return false;
      }

      return !(this.illustrationName && this.notSmSize);
    },

    notSmSize () {
      return this.size !== 'sm';
    },

    sizeClass () {
      return EMPTY_STATE_SIZE_MODIFIERS[this.size];
    },

    emptyStateClasses () {
      return ['d-empty-state', this.sizeClass];
    },

    contentClass () {
      switch (this.size) {
        case 'sm':
          return 'd-empty-state__content--sm';
        case 'md':
          return 'd-empty-state__content--md';
        case 'lg':
          return 'd-empty-state__content--lg';
        default:
          return 'd-empty-state__content--lg';
      }
    },

    headlineClass () {
      switch (this.size) {
        case 'sm':
          return 'd-headline--md';
        case 'md':
          return 'd-headline--xl';
        case 'lg':
          return 'd-headline--xxl';
        default:
          return 'd-headline--xxl';
      }
    },

    bodyClass () {
      switch (this.size) {
        case 'sm':
          return 'd-body--sm';
        case 'md':
          return 'd-body--sm';
        case 'lg':
          return 'd-body--md';
        default:
          return 'd-body--md';
      }
    },
  },

  mounted () {
    if (!this.bodyText && !this.$slots.body) {
      console.warn('Dialtone Empty State component: You should provide either bodyText or content on body slot.');
    }
  },
};
</script>
