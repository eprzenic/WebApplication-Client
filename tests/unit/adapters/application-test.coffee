# jshint expr:true
`import { describeModule, it } from 'ember-mocha'`

describeModule "adapter:application", "ApplicationAdapter", {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}, ->
  # Replace this with your real tests.
  it "exists", ->
    adapter = @subject()
    expect(adapter).to.be.ok
