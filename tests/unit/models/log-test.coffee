# jshint expr:true
`import { describeModel, it } from 'ember-mocha'`

describeModel "log", "Log", {
  # Specify the other units that are required for this test.
  needs: []
}, ->
  # Replace this with your real tests.
  it "exists", ->
    model = @subject()
    # var store = @store()
    expect(model).to.be.ok
