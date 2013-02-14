App.GoalsetsNewView = Ember.View.extend({
	tagName:      'form',
	templateName : 'goalsets/form',

	init: function() {
		this._super();
		this.set("goalset", App.Goalset.createRecord());
	},


	submit: function(event) {
		var self = this;
		var contact = this.get("goalset");

		event.preventDefault();

		contact.saveResource()
		.fail( function(e) {
			App.displayError(e);
		})
		.done(function() {
			App.contactsController.pushObject(contact);
		});
	}
});