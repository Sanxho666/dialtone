<template>
  <dt-recipe-general-row
    :type="$attrs.type"
    :color="$attrs.color"
    :description="$attrs.description"
    :unread-count="$attrs.unreadCount"
    :has-unreads="$attrs.hasUnreads"
    :channel-setting="$attrs.channelSetting"
    :unread-mention-count="$attrs.unreadMentionCount"
    :aria-label="$attrs.ariaLabel"
    :unread-count-tooltip="$attrs.unreadCountTooltip"
    :selected="$attrs.selected"
    :has-call-button="$attrs.hasCallButton"
    :call-button-tooltip="$attrs.callButtonTooltip"
    :muted="$attrs.muted"
    :active-voice-chat="$attrs.activeVoiceChat"
    :dnd-text="$attrs.dndText"
    :dnd-text-tooltip="$attrs.dndTextTooltip"
    :is-typing="$attrs.isTyping"
    :icon-size="$attrs.iconSize"
    @click="$attrs.onClick"
    @call="$attrs.onCall"
  />
</template>

<script>
import DtRecipeGeneralRow from './general_row.vue';

export default {
  name: 'DtRecipeGeneralRowDefault',
  components: { DtRecipeGeneralRow },
};
</script>
