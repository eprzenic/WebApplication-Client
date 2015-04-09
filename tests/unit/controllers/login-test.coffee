# jshint expr:true
`import { describeModule, it } from 'ember-mocha'`

describeModule "controller:login", "LoginController", {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}, ->
  # Replace this with your real tests.
  it "exists", ->
    controller = @subject()
    expect(controller).to.be.ok
