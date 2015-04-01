# jshint expr:true
`import { describeModule, it } from 'ember-mocha'`
`import { assert, expect } from 'chai'`

describeModule "controller:application", "ApplicationController", {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}, ->
  # Replace this with your real tests.
  it "exists", ->
    controller = @subject()
    expect(controller).to.be.ok
  it "should have year", ->
    controller = @subject()
    assert.equal(controller.get('year'), new Date().getFullYear())
  it "should have title", ->
    controller = @subject()
    expect(controller.get('title')).to.be.a('string')
