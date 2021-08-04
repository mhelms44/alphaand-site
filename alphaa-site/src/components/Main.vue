<template>
<v-card
  max-width="1200"
  class="mt-12 mx-auto"
  >
<v-container>
      <v-row dense>
        <v-col cols="12">
          <v-card
            color="#AB3C5B"
            dark
          >
            <v-card-title class="headline">Free downloads on Bandcamp</v-card-title>

            <v-card-subtitle>Download in the format of your choice all for free.</v-card-subtitle>

            <v-card-actions>
              <v-btn href="https://alphaandromeda.bandcamp.com/" text>Download Now

              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>

        <v-col cols="12">
          <v-card
            color="#1B2732"
            dark
          >
            <v-card-title class="headline">Gaze Into The Void lyric video</v-card-title>
            <v-card-actions>
              <v-btn href="https://www.youtube.com/watch?v=1H9ddJXJ_1Y" text>Watch Now

              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>

        <v-col
          v-for="(item, i) in items"
          :key="i"
          cols="12"
        >
          <v-card
            :color="item.color"
            dark
          >
            <div class="d-flex flex-no-wrap justify-space-between">
              <div>
                <v-card-title
                  class="headline"
                  v-text="item.title"
                ></v-card-title>

                <v-card-subtitle v-text="item.subtitle"></v-card-subtitle>
                <v-btn :href="item.link" text>{{item.btntxt}}</v-btn>
              </div>

              <v-avatar
                class="hidden-sm-and-down"
                size="250"
                tile
              >
                <v-img :src="item.src"></v-img>

              </v-avatar>
              <v-avatar
                class="d-none d-sm-flex d-md-none"
                size="150"
                tile
              >
                <v-img :src="item.src"></v-img>
              </v-avatar>

              <v-avatar
                class="d-flex d-sm-none"
              >
              </v-avatar>
              
            </div>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
</v-card>
</template>

<script>
  export default {
    data: () => ({
      items: [
        {
          color: '#3727be',
          src: '../../bailey.jpg',
          title: 'Bailey Andromeda',
          subtitle: 'Don\'t ask questions, just get excited and buy new product.',
          link: 'https://alphaandromeda.bigcartel.com/product/bailey-andromeda',
          btntxt: 'Get this shirt at our BigCartel',
        },
        {
          color: '#5F5F62',
          src: '../../grannygranola.jpg',
          title: 'Ominous Mechanobiology',
          subtitle: 'Cowering at the feet of angry gods; Humanity reduced to rubble',
          link: 'https://open.spotify.com/track/33V082TTSuZh8o1aXKLqE1?si=LVcHLXwCQEGPnvdUITamEg',
          btntxt: 'Listen on Spotify',
        },
      ],
    }),
  }
</script>
