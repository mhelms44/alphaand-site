<template>
  <v-app>
    <v-app-bar app>
      <v-toolbar-title class="headline text-uppercase">
       <span>Alpha Andromeda</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
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
    //
  }),
};
</script>
