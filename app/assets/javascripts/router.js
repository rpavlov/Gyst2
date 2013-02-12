App.Router.map(function() {
	this.resource('goalsets', function(){
		this.route('new');
		this.resource('goalset', {path: ':goalset_id'});
	});
});
