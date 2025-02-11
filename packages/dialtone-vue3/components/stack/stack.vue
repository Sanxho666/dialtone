<template>
  <component
    :is="as"
    :class="[
      'd-stack',
      defaultDirection,
      defaultGap,
      stackResponsive,
    ]"
  >
    <!-- @slot Slot for main content -->
    <slot />
  </component>
</template>

<script>
import { DT_STACK_DIRECTION, DT_STACK_GAP, DT_STACK_RESPONSIVE_BREAKPOINTS } from './stack_constants';
import { directionValidator, gapValidator } from './validators';
import { getDefaultDirectionClass, getResponsiveClasses, getDefaultGapClass } from './utils';

export default {
  name: 'DtStack',

  props: {
    /**
     * Set this prop to the direction to stack the items.
     * You can override the default direction with 'default' key.
     * All the undefined breakpoints will have 'default' value.
     * By default, for the column direction it will have `justify-content: flex-start`
     * and for the row direction `align-items: center`. This can be overriden
     * by utility classes.
     */
    direction: {
      type: [String, Object],
      default: 'column',
      validator: (direction) => directionValidator(direction),
    },

    /**
     * Set this prop to render stack as a specific HTML element.
     */
    as: {
      type: String,
      default: 'div',
    },

    /**
     * The gap property controls the spacing between items in the stack.
     * The gap can be set to a string, or object with breakpoints.
     * All the undefined breakpoints will have the 'default' value.
     * You can override the default gap with 'default' key.
     * In case of string, it will be applied to all the breakpoints.
     * Valid values are '0', '100', '200', '300', '400', '450', '500', '600'.
     */
    gap: {
      type: [String, Object],
      default: '0',
      validator: (gap) => gapValidator(gap),
    },
  },

  data () {
    return {
      DT_STACK_DIRECTION,
      DT_STACK_GAP,
      DT_STACK_RESPONSIVE_BREAKPOINTS,
    };
  },

  computed: {
    defaultGap () {
      return getDefaultGapClass(this.gap);
    },

    defaultDirection () {
      return getDefaultDirectionClass(this.direction);
    },

    stackResponsive () {
      return getResponsiveClasses(this.direction, this.gap);
    },
  },
};
</script>
