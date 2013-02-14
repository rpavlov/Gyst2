App.Goalset = DS.Model.extend({
	title: DS.attr('string'),

	validate: function() {
		if (this.get('title') === undefined || this.get('first_name') === '') {
			return 'Blank not allowed';
		}
	}
});

