# jshint expr:true
`import { describeModule, it } from 'ember-mocha'`

describeModule "serializer:application", "ApplicationSerializer", {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}, ->
  # Replace this with your real tests.
  it "exists", ->
    serializer = @subject()
    expect(serializer).to.be.ok
