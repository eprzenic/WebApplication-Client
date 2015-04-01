# jshint expr:true
`import { describeModule, it } from 'ember-mocha'`

describeModule "route:log", "LogRoute", {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}, ->
  it "exists", ->
    route = @subject()
    expect(route).to.be.ok
