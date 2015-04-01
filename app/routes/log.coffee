`import Ember from 'ember'`

LogRoute = Ember.Route.extend {
  model: () ->
    log = @store.find('Log')
    console.log(log)
    return log
}

`export default LogRoute`
