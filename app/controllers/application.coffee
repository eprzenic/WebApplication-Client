`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend {
  title: 'This is your title'
  year:  new Date().getFullYear()
}

`export default ApplicationController`
