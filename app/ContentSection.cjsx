React = require 'react'
ContentHeader = require './ContentHeader'

{ Segment
  Container } = require 'react-semantify'

ContentSection = React.createClass
  displayName: 'Section'

  props:
    id: React.PropTypes.string.isRequired
    title: React.PropTypes.string.isRequired
    icon: React.PropTypes.string.isRequired

  render: ->
    <Segment className="basic vertical stripe" id={@props.id}>
      <Container>
        <ContentHeader
          icon={@props.icon}
          title={@props.title}/>
        {@props.children}
      </Container>
    </Segment>

module.exports = ContentSection
