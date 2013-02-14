App.GoalsetsNewRoute = Ember.Route.extend({

	renderTemplate: function(){
	}

	model: function() {
		return App.Goalset.createRecord();
	}
});
