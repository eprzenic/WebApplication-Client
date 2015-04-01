`import DS from 'ember-data'`
`import Inflector from 'ember-inflector';`

#Ember.Inflector.inflector.rules.uncountable['log'] = true

# https://github.com/emberjs/data/blob/b4a415e1be4db3673a102b3fdc45b6bd22d46d59/packages/ember-data/lib/system/model/attributes.js#L63-65
Log = DS.Model.extend {
  name: DS.attr('string'),
  type: DS.attr('string'),
  value: DS.attr('number'),
  created: DS.attr('date'),
}

`export default Log`
