<template>
  <dt-badge
    :text="$attrs.text"
    :type="$attrs.type"
    :kind="$attrs.kind"
    :decoration="$attrs.decoration"
    :icon-left="$attrs.iconLeft"
    :icon-right="$attrs.iconRight"
    :label-class="$attrs.labelClass"
    :subtle="$attrs.subtle"
    :outlined="$attrs.outlined"
  >
    <template v-if="defaultSlot">
      {{ defaultSlot }}
    </template>
  </dt-badge>
</template>

<script>
import DtBadge from './badge.vue';

export default {
  name: 'DtBadgeDefault',

  components: { DtBadge },
};
</script>
