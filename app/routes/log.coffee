`import Ember from 'ember'`

LogRoute = Ember.Route.extend {
  model: () ->
    #../api/logs
    logs = @store.find('log')

    log = @store.createRecord('log', {
      name: "test",
      type: "typethis",
      value: "123456"
    })
    log.save()

    #console.log(log)
    return logs
}

`export default LogRoute`
