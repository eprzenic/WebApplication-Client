`import DS from 'ember-data'`
`import ENV from '../config/environment';`

ApplicationAdapter = DS.RESTAdapter.extend({
  host: ENV.APP.API_HOST,
  namespace: 'api'
})

`export default ApplicationAdapter`
