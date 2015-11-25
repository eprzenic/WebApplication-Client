`import Ember from 'ember'`
`import ENV from '../config/environment';`

ApplicationController = Ember.Controller.extend {
  title: 'This is your title'
  year:  new Date().getFullYear()
}

`export default ApplicationController`
