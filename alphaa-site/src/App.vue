<template>
  <v-app>
    <v-app-bar app>
      <v-toolbar>
      <v-spacer></v-spacer>
      <v-toolbar-items class=hidden-sm-and-down>
            <v-btn
        text
        href="https://alphaandromeda.bandcamp.com/releases"
        target="_blank"

      >
        <span class="mr-2">BandCamp</span>
      </v-btn>
            <v-btn
        text
        href="https://www.facebook.com/alphaandromedaband"
        target="_blank"
      >
        <span class="mr-2">Facebook</span>
      </v-btn>
            <v-btn
        text
        href="https://www.instagram.com/alphaandromedaband/"
        target="_blank"
      >
        <span class="mr-2">Instagram</span>
      </v-btn>
            <v-btn
        text
        href="https://discord.gg/wcUUZv5"
        target="_blank"
      >
        <span class="mr-2">Discord</span>
      </v-btn>
            <v-btn
        text
        href="https://open.spotify.com/artist/44Imd1962FI94frqkxG1rK?si=mqFo84CnQZ-PLhTyTr5dFQ"
        target="_blank"
      >
        <span class="mr-2">Spotify</span>
      </v-btn>
      <v-btn
        text
        href="https://www.youtube.com/channel/UC9IFkuLhrSLkGNDrE0h3GWw"
        target="_blank"
      >
        <span class="mr-2">YouTube</span>
      </v-btn>
            <v-btn
        text
        href="https://alphaandromeda.bigcartel.com/"
        target="_blank"
      >
        <span class="mr-2">Merch</span>
      </v-btn>
      </v-toolbar-items>

      <!--Sets up smaller viewport menu to be replaced with hamburger eventually-->

      <v-toolbar-items class=hidden-md-and-up>
                    <v-btn
        text
        href="https://alphaandromeda.bandcamp.com/releases"
        target="_blank"

      >
        <span class="mr-0">BandCamp</span>
      </v-btn>
            <v-btn
        text
        href="https://www.facebook.com/alphaandromedaband"
        target="_blank"
      >
        <span class="mr-0">Facebook</span>
      </v-btn>
            <v-btn
        text
        href="https://www.instagram.com/alphaandromedaband/"
        target="_blank"
      >
        <span class="mr-0">Instagram</span>
      </v-btn>
            <v-btn
        text
        href="https://discord.gg/wcUUZv5"
        target="_blank"
      >
        <span class="mr-0">Discord</span>
      </v-btn>
            <v-btn
        text
        href="https://open.spotify.com/artist/44Imd1962FI94frqkxG1rK?si=mqFo84CnQZ-PLhTyTr5dFQ"
        target="_blank"
      >
        <span class="mr-0">Spotify</span>
      </v-btn>
      <v-btn
        text
        href="https://www.youtube.com/channel/UC9IFkuLhrSLkGNDrE0h3GWw"
        target="_blank"
      >
        <span class="mr-0">YouTube</span>
      </v-btn>
            <v-btn
        text
        href="https://alphaandromeda.bigcartel.com/"
        target="_blank"
      >
        <span class="mr-0">Merch</span>
            </v-btn>


      </v-toolbar-items>
      </v-toolbar>
    </v-app-bar>

    <v-content>
      <Main/>
    </v-content>
  </v-app>
</template>

<script>
import Main from './components/Main';

export default {
  name: 'App',
  components: {
    Main
  },
  data: () => ({
    item: 1,
    items: [
      {
        title:'BandCamp',
        href:'https://alphaandromeda.bandcamp.com/releases'
      }
    ]
  })
};
</script>
