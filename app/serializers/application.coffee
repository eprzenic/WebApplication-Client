`import DS from 'ember-data'`

ApplicationSerializer = DS.RESTSerializer.extend({
  primaryKey: '_id',
  extractArray: (store, type, payload) ->
    result = {}
    model = type.typeKey # named root, per ember-data scheme
    result[model] = payload
    payload = result
    #console.log payload

    return @_super(store, type, payload)
})

`export default ApplicationSerializer`
