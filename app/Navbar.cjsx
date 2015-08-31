React = require('react')

Sections = ['About', 'Experience', 'Projects', 'logo', 'Involvement', 'Links', 'Contact']

Navbar = React.createClass
  _getLinks: ->
    links = []
    for section in Sections
      if section is 'logo'
        links.push <li> <a className='visible-lg-inline-block' id='logo'></a> </li>
      else
        links.push <li> <a href="##{section.toLowerCase()}">{section}</a> </li>
    links
    #TODO: add logo to center separately

  render: ->
    <div className='navbar navbar-inverse navbar-fixed-top' role='navigation'>
      <div className='container'>
        <div className='navbar-header'>
          <button type='button' className='navbar-toggle' data-toggle='collapse' data-target='.navbar-collapse'>
            <span className='sr-only'>Toggle navigation</span>
            <span className='icon-bar'></span>
            <span className='icon-bar'></span>
            <span className='icon-bar'></span>
          </button>
          <a className='navbar-brand visible-xs-block'>Myles Scolnick</a>
        </div>
        <div className='navbar-collapse collapse' id='navbarspy'>
          <ul className='nav nav-justified'>
            {@_getLinks()}
          </ul>
        </div>
      </div>
    </div>

module.exports = Navbar
