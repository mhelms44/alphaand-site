<template>
  <v-app>
    <v-toolbar>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn text href="https://alphaandromeda.bandcamp.com/releases" target="_blank">
          <span class="mr-2">BandCamp</span>
        </v-btn>
        <v-btn text href="https://www.facebook.com/alphaandromedaband" target="_blank">
          <span class="mr-2">Facebook</span>
        </v-btn>
        <v-btn text href="https://www.instagram.com/alphaandromedaband/" target="_blank">
          <span class="mr-2">Instagram</span>
        </v-btn>
        <v-btn text href="https://discord.gg/wcUUZv5" target="_blank">
          <span class="mr-2">Discord</span>
        </v-btn>
        <v-btn
          text
          href="https://open.spotify.com/artist/44Imd1962FI94frqkxG1rK?si=mqFo84CnQZ-PLhTyTr5dFQ"
          target="_blank"
        >
          <span class="mr-2">Spotify</span>
        </v-btn>
        <v-btn text href="https://www.youtube.com/channel/UC9IFkuLhrSLkGNDrE0h3GWw" target="_blank">
          <span class="mr-2">YouTube</span>
        </v-btn>
        <v-btn text href="https://alphaandromeda.bigcartel.com/" target="_blank">
          <span class="mr-2">Merch</span>
        </v-btn>
      </v-toolbar-items>

      <!--Sets up smaller viewport menu to be replaced with hamburger eventually-->

      <v-toolbar-items class="hidden-md-and-up">
        <v-menu
          v-model="value"
          :disabled="disabled"
          :absolute="absolute"
          :open-on-hover="openOnHover"
          :close-on-click="closeOnClick"
          :close-on-content-click="closeOnContentClick"
          :offset-x="offsetX"
          :offset-y="offsetY"
        >
          <template v-slot:activator="{ on }">
            <div class="my-2">
              <v-btn dark v-on="on">
                <v-icon>mdi-menu</v-icon>
              </v-btn>
            </div>
          </template>
          <v-list>
            <v-list-item v-for="(item, index) in items" :key="index" @click>
              <v-list-item-title>
                <a color="red" :href="item.href">{{ item.title }}</a>
              </v-list-item-title>
            </v-list-item>
          </v-list>
        </v-menu>
      </v-toolbar-items>
    </v-toolbar>

    <v-content>
      <Main />
    </v-content>
  </v-app>
</template>

<script>
import Main from "./components/Main";

export default {
  name: "App",
  components: {
    Main
  },
  data: () => ({
    item: 5,
    items: [
      {
        title: "BandCamp",
        href: "https://alphaandromeda.bandcamp.com/releases"
      },
      {
        title: "Facebook",
        href: "https://www.facebook.com/alphaandromedaband"
      },
      {
        title: "Instagram",
        href: "https://www.instagram.com/alphaandromedaband/"
      },
      {
        title: "Discord",
        href: "https://discord.gg/wcUUZv5"
      },
      {
        title: "Spotify",
        href:
          "https://open.spotify.com/artist/44Imd1962FI94frqkxG1rK?si=mqFo84CnQZ-PLhTyTr5dFQ"
      },
      {
        title: "YouTube",
        href: "https://www.youtube.com/channel/UC9IFkuLhrSLkGNDrE0h3GWw"
      },
      {
        title: "Merch",
        href: "https://alphaandromeda.bigcartel.com/"
      }
    ]
  })
};
</script>
