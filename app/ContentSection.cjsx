React = require('react')

ContentSection = React.createClass
  props:
    id: React.PropTypes.string.isRequired
    title: React.PropTypes.string.isRequired

  render: ->
    <div className='row anchor' id={@props.id}>
      <h1><span>{@props.title}</span></h1>
      <div className='col-xs-12'>
        {@props.children}
      </div>
    </div>

module.exports = ContentSection
