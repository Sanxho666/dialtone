<template>
  <span
    :class="[
      'd-badge',
      BADGE_TYPE_MODIFIERS[type],
      BADGE_KIND_MODIFIERS[kind],
      BADGE_DECORATION_MODIFIERS[decoration],
      { 'd-badge--subtle': subtle },
      { 'd-badge--outlined': outlined },
    ]"
    data-qa="dt-badge"
  >
    <span
      v-if="decoration"
      class="d-badge__decorative"
    />
    <span
      v-if="iconLeft"
      class="d-badge__icon-left"
    >
      <dt-icon
        :name="iconLeft"
        size="200"
      />
    </span>
    <span :class="['d-badge__label', labelClass]">
      <!-- @slot Slot for badge content, defaults to text prop -->
      <slot>
        {{ text }}
      </slot>
    </span>
    <span
      v-if="iconRight"
      class="d-badge__icon-right"
    >
      <dt-icon
        :name="iconRight"
        size="200"
      />
    </span>
  </span>
</template>

<script>
import { BADGE_TYPE_MODIFIERS, BADGE_KIND_MODIFIERS, BADGE_DECORATION_MODIFIERS } from './badge_constants';
import { DtIcon } from '@/components/icon';

/**
 * A badge is a compact UI element that provides brief, descriptive information about an element.
 * It is terse, ideally one word.
 * @see https://dialtone.dialpad.com/components/badge.html
 */
export default {
  name: 'DtBadge',

  components: {
    DtIcon,
  },

  props: {
    /**
     * Icon on the left side of the badge. Supports any valid icon name from the icon catalog at
     * https://dialtone.dialpad.com/components/icon.html#icon-catalog. If type:'ai' is set, the ai icon
     * will automatically be shown here, but this can be overridden by setting this prop.
     */
    iconLeft: {
      type: String,
      default: '',
    },

    /**
     * Icon on the right side of the badge. Supports any valid icon name from the icon catalog at
     * https://dialtone.dialpad.com/components/icon.html#icon-catalog
     */
    iconRight: {
      type: String,
      default: '',
    },

    /**
     * Text for the badge content
     */
    text: {
      type: String,
      default: '',
    },

    /**
     * The kind of badge which determines the styling
     * @values label, count
     */
    kind: {
      type: String,
      default: 'label',
      validator: (kind) => Object.keys(BADGE_KIND_MODIFIERS).includes(kind),
    },

    /**
     * Color for the badge background
     * @values default, info, success, warning, critical, bulletin, ai
     */
    type: {
      type: String,
      default: 'default',
      validator: (type) => Object.keys(BADGE_TYPE_MODIFIERS).includes(type),
    },

    /**
     * Decoration for the badge. This can be only used with kind: label and type: default
     * with no iconLeft and iconRight
     * @values default, black-400, black-500, black-900, red-200, red-300, red-400, purple-200,
     * purple-300, purple-400, purple-500, blue-200, blue-300, blue-400, green-300, green-400,
     * green-500, gold-300, gold-400, gold-500, magenta-200, magenta-300, magenta-400
     */
    decoration: {
      type: String,
      default: undefined,
      validator: (type) => Object.keys(BADGE_DECORATION_MODIFIERS).includes(type),
    },

    /**
     * Used to customize the label container
     */
    labelClass: {
      type: [String, Array, Object],
      default: '',
    },

    /**
     * Shows a subtle appearance for the badge
     * Currently only affects the badge when type is bulletin.
     */
    subtle: {
      type: Boolean,
      default: false,
    },

    /**
     * Outlines the badge with a border
     */
    outlined: {
      type: Boolean,
      default: false,
    },
  },

  data () {
    return {
      BADGE_TYPE_MODIFIERS,
      BADGE_KIND_MODIFIERS,
      BADGE_DECORATION_MODIFIERS,
    };
  },

  computed: {
    hasIcons () {
      return this.iconLeft !== '' || this.iconRight !== '';
    },
  },

  watch: {
    $props: {
      immediate: true,
      deep: true,
      handler () {
        this.validateProps();
      },
    },
  },

  methods: {
    validateProps () {
      this.validateTypePropCombination();
      this.validateDecorationPropCombination();
    },

    validateTypePropCombination () {
      if (this.type === 'ai' && this.kind === 'count') {
        console.error('DtBadge error: type: \'ai\' with kind: \'count\' is an invalid combination.');
      }
      if (this.type !== 'bulletin' && this.subtle) {
        console.error('DtBadge error: subtle can only be used with type \'bulletin\'');
      }
    },

    validateDecorationPropCombination () {
      if (!this.decoration) return;

      if (this.kind !== 'label' || this.type !== 'default') {
        console.error('DtBadge error: decoration prop can only be used with kind: \'label\' and type: \'default\'.');
      }

      if (this.hasIcons) {
        console.error('DtBadge error: decoration prop cannot be used with iconLeft or iconRight.');
      }
    },
  },
};
</script>
