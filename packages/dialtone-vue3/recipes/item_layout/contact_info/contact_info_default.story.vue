<template>
  <dt-recipe-contact-info
    :show-avatar="$attrs.showAvatar"
    :avatar-src="$attrs.avatarSrc"
    :avatar-full-name="$attrs.avatarFullName"
    :avatar-labelledby="$attrs.avatarLabelledby"
    :avatar-icon="$attrs.avatarIcon"
    :avatar-size="$attrs.avatarSize"
    :avatar-seed="$attrs.avatarSeed"
    :avatar-color="$attrs.avatarColor"
    :presence="$attrs.presence"
    @avatar-click="$attrs.onAvatarClick"
  >
    <template
      v-if="$attrs.header"
      #header
    >
      <span v-html="$attrs.header" />
    </template>

    <template
      v-if="$attrs.subtitle"
      #subtitle
    >
      <span v-html="$attrs.subtitle" />
    </template>

    <template
      v-if="$attrs.right"
      #right
    >
      <span v-html="$attrs.right" />
    </template>

    <template
      v-if="$attrs.bottom"
      #bottom
    >
      <span v-html="$attrs.bottom" />
    </template>
  </dt-recipe-contact-info>
</template>

<script>
import DtRecipeContactInfo from './contact_info.vue';

export default {
  name: 'DtRecipeContactInfoDefault',
  components: { DtRecipeContactInfo },
};
</script>
