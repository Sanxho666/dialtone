<template>
  <dt-recipe-ivr-node
    :node-label="label"
    :node-type="$attrs.nodeType"
    :is-selected="$attrs.isSelected"
    :dtmf-key="$attrs.dtmfKey"
    :menu-button-aria-label="$attrs.menuButtonAriaLabel"
    @click="$attrs.onClick($event)"
  >
    <template
      v-if="$attrs.connector"
      #connector
    >
      <div
        class="ivr-connector d-w-auto d-px8 d-h24 d-bar-pill d-mbn12 d-fc-neutral-white d-fs-100"
      >
        Add branch
      </div>
    </template>
    <template
      v-if="$attrs.content"
      #content
    >
      <span v-html="$attrs.content" />
    </template>
    <template
      v-else
      #content
    >
      <div v-if="expert">
        <p class="d-fw-bold">
          Account Issues
        </p>
        <p>
          19 Nodes
        </p>
        <dt-button
          importance="clear"
          kind="muted"
          icon-position="right"
        >
          Launch Expert
          <template #icon>
            <dt-icon
              size="300"
              name="external-link"
            />
          </template>
        </dt-button>
      </div>
      <div v-if="transfer">
        <div class="d-d-flex d-ai-center d-gg8">
          <dt-avatar
            full-name="Person Avatar"
            :image-src="$attrs.defaultImage"
            image-alt=""
            seed="seed"
          />
          <p>Carolina Garcia Rodriguez</p>
        </div>
      </div>
      <div v-if="hangup || branch || goTo || assign">
        <p class="d-fw-bold">
          Name
        </p>
        <p>
          Description
        </p>
      </div>
      <div v-if="play">
        <p class="d-fc-purple-700">
          2022-Greeting.mp3
        </p>
      </div>
      <div v-if="collect || menu">
        <p class="d-fw-bold">
          {{ label }} prompt
        </p>
        <p class="d-fc-purple-700">
          {{ fileName }}
        </p>
      </div>
    </template>
    <template
      v-if="$attrs.menuItems"
      #menuItems
    >
      <span v-html="$attrs.menuItems" />
    </template>
    <template
      v-else
      #menuItems="{ close }"
    >
      <dt-list-item
        role="menuitem"
        navigation-type="arrow-keys"
        @click="close"
      >
        Edit
      </dt-list-item>
      <dt-list-item
        role="menuitem"
        navigation-type="arrow-keys"
        @click="close"
      >
        Copy
        <template #right>
          <dt-keyboard-shortcut
            screen-reader-text="Ctrl and C"
            shortcut="Ctrl + C"
          />
        </template>
      </dt-list-item>
      <dt-list-item
        role="menuitem"
        navigation-type="arrow-keys"
        @click="close"
      >
        Delete
        <template #right>
          <dt-keyboard-shortcut
            screen-reader-text="Delete"
            shortcut="Del"
          />
        </template>
      </dt-list-item>
    </template>
  </dt-recipe-ivr-node>
</template>

<script>
import DtRecipeIvrNode from './ivr_node.vue';
import {
  IVR_NODE_ASSIGN,
  IVR_NODE_BRANCH,
  IVR_NODE_EXPERT, IVR_NODE_GO_TO, IVR_NODE_HANGUP,
  IVR_NODE_LABELS,
  IVR_NODE_PROMPT_COLLECT,
  IVR_NODE_PROMPT_MENU,
  IVR_NODE_PROMPT_PLAY, IVR_NODE_TRANSFER,
} from './ivr_node_constants';
import { DtIcon } from '@/components/icon';
import { DtButton } from '@/components/button';
import { DtAvatar } from '@/components/avatar';
import { DtListItem } from '@/components/list_item';
import { DtKeyboardShortcut } from '@/components/keyboard_shortcut';

export default {
  name: 'DtRecipeIvrNodeDefault',
  components: { DtButton, DtRecipeIvrNode, DtIcon, DtAvatar, DtListItem, DtKeyboardShortcut },

  computed: {
    items () {
      return [
        { name: 'Edit', id: 1 },
        { name: 'Copy', id: 2 },
        { name: 'Delete', id: 3 },
      ];
    },

    expert () {
      return this.$attrs.nodeType === IVR_NODE_EXPERT;
    },

    menu () {
      return this.$attrs.nodeType === IVR_NODE_PROMPT_MENU;
    },

    collect () {
      return this.$attrs.nodeType === IVR_NODE_PROMPT_COLLECT;
    },

    play () {
      return this.$attrs.nodeType === IVR_NODE_PROMPT_PLAY;
    },

    goTo () {
      return this.$attrs.nodeType === IVR_NODE_GO_TO;
    },

    branch () {
      return this.$attrs.nodeType === IVR_NODE_BRANCH;
    },

    assign () {
      return this.$attrs.nodeType === IVR_NODE_ASSIGN;
    },

    transfer () {
      return this.$attrs.nodeType === IVR_NODE_TRANSFER;
    },

    hangup () {
      return this.$attrs.nodeType === IVR_NODE_HANGUP;
    },

    label () {
      return this.$attrs.nodeLabel || IVR_NODE_LABELS[this.$attrs.nodeType];
    },

    fileName () {
      return this.menu
        ? 'americas_office-workflow_main-menu-2022--FINAL.mp3'
        : 'americas_office-collect-menu-2022-FINAL.mp3';
    },
  },
};
</script>
