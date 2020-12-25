export default {
  name: 'Foo',

  data () {
    return {
      message: 'введите имя',
      username: ''
    }
  },

  computed: {
    error () {
      return this.username.trim().length < 7
    }
  }
}
