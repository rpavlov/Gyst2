App.GoalsetsRoute = Ember.Route.extend({
	model: function() {
		return App.Goalset.find();
	}
});