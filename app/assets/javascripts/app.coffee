//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require ./router
//= require_tree ./routes
//= require_self

App.LOG_TRANSITIONS = true

App.GoalsetsFormable = Ember.Mixin.create
  renderTemplate: ->
    @render 'goalsets/form', ->
      outlet: 'modal'
  events:
    cancel: (goalset) ->
      goalset.transaction.rollback()
      @transitionTo 'goalsets'
    submit: (goalset) ->
      # TODO: add validation handling
      goalset.get('goalset').commit()
      if goalset.didCreate
        @transitionTo 'goalsets'