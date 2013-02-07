Gyst2.Router.map(function() {
	this.resource('goalsets')

});

Gyst2.IndexRoute = Ember.Route.extend({
	model: function(){
		return Gyst2.Goalset.find();
	}
});