`import Ember from 'ember'`

LogRoute = Ember.Route.extend {
  model: () ->
    logs = @store.find('log')
    #console.log(log)
    return logs
}

`export default LogRoute`
