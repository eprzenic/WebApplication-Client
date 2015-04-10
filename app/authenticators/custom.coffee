# http://stackoverflow.com/questions/24699086/ember-simple-auth-oauth-2-0-not-sending-the-right-parameters
# https://github.com/simplabs/ember-simple-auth/issues/56
# https://github.com/simplabs/ember-simple-auth/issues/226

`import Ember from 'ember'`
`import Authenticator from 'simple-auth-oauth2/authenticators/oauth2'`

AuthenticatorExtend = Authenticator.extend({
  makeRequest: (url, data) ->
    data.client_id = '...'
    data.client_secret = '...'
    @_super url, data
  restore: (data) ->
    @_super data
  authenticate: (options) ->
    @_super options
  invalidate: (data) ->
    @_super data

})

`export default AuthenticatorExtend`