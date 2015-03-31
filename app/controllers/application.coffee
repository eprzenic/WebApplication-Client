`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend(
  search: ''

  actions:
    query: () ->
      console.log this.get('search')
)

`export default ApplicationController`