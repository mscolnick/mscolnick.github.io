React = require 'react'
{ Col
  Row
  Button } = require 'react-bootstrap'

Footer = React.createClass
  displayName: 'Footer'

  render: ->
    <div className='footer'>
      <div className='container'>
        <hr />
        <Row>
          <Col xs={12} sm={6} className='copy'>Copyright © 2016 by Myles Scolnick</Col>
          <Col xs={12} sm={6}>
            <Button className='pull-right pdf' bsStyle='success' href='resume_tex/resume.pdf'>Printable PDF</Button>
          </Col>
        </Row>
      </div>
    </div>

module.exports = Footer
