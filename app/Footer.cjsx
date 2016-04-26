React = require('react')
Col = require('react-bootstrap').Col
Row = require('react-bootstrap').Row

Footer = React.createClass
  render: ->
    <div className='footer'>
      <div className='container'>
        <hr />
        <Row>
          <Col xs={12} sm={6} className='copy'>Copyright © 2016 by Myles Scolnick</Col>
          <Col xs={12} sm={6}>
            <a className='btn btn-success pull-right pdf' href='resume_tex/resume.pdf'>Printable PDF</a>
          </Col>
        </Row>
      </div>
    </div>

module.exports = Footer
