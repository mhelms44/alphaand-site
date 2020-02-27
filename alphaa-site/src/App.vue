<template>
  <v-app>
    <v-toolbar
    :max-height="60"
    :min-height="60">
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-list-item v-for="(item, index) in items" :key="index">
          <v-btn text :href="item.href">{{ item.title}}</v-btn>
        </v-list-item>
      </v-toolbar-items>

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
            <v-list-item v-for="(item, index) in items" :key="index">
            <v-btn text :href="item.href">{{ item.title}}</v-btn>
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
