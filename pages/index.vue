<template>
  <div>
    <h1>{{ title }}</h1>
    <p>{{ redirectCount }}秒後に遷移します。</p>
    <a v-bind:href="redilectUrl">すぐに移動する場合はここをクリック</a>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: 'Redirect Example',
      redirectCount: 60,
      redilectUrl: 'https://hi-ma-ri.net/'
    }
  },
  methods: {
    setRedirect: function() {
      setInterval(this.countDown, 1000)
    },
    countDown: function() {
      if (this.redirectCount > 0) {
        this.redirectCount--
      } else {
        clearInterval(this)
        if (process.browser) {
          window.location.href=this.redilectUrl
        }
      }
    }
  },
  created: function() {
    this.setRedirect()
  }
}
</script>