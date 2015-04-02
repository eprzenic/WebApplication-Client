`import Ember from 'ember'`

LogRoute = Ember.Route.extend {
  model: () ->
    log = @store.find('log')
    #console.log(log)
    return log
}

`export default LogRoute`
