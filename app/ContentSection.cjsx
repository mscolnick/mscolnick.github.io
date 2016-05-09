React = require 'react'
{ Col
  Row } = require 'react-bootstrap'

ContentSection = React.createClass
  displayName: 'Section'

  props:
    id: React.PropTypes.string.isRequired
    title: React.PropTypes.string.isRequired

  render: ->
    <Row className='anchor' id={@props.id}>
      <h1><span>{@props.title}</span></h1>
      <Col xs={12}>
        {@props.children}
      </Col>
    </Row>

module.exports = ContentSection
