React = require('react')
Col = require('react-bootstrap').Col
Row = require('react-bootstrap').Row

ContentSection = React.createClass
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
