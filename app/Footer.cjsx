React = require('react')

Footer = React.createClass
  render: ->
    <div className='footer'>
      <div className='container'>
        <hr />
        <div className='row'>
          <div className='col-xs-12 col-sm-6 copy'>Copyright © 2015 by Myles Scolnick</div>
          <div className='col-xs-12 col-sm-6'>
            <a className='btn btn-success pull-right pdf' href='resume_tex/resume.pdf'>Printable PDF</a>
          </div>
        </div>
      </div>
    </div>

module.exports = Footer
