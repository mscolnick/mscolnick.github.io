React = require('react')
NavItem = require('react-bootstrap').NavItem

Sections = ['About', 'Experience', 'Projects', 'Involvement', 'Links', 'Contact']

Navigation = React.createClass
  _getLinks: ->
    links = []
    for section, i in Sections
      links.push <NavItem eventKey={i} key={i} href="##{section.toLowerCase()}">{section}</NavItem>
    links.splice 3, 0, <li key={6}> <a className='visible-lg-inline-block' id='logo'></a> </li>
    links

  render: ->
    <div className='navbar navbar-inverse navbar-fixed-top' role='navigation'>
      <div className='container'>
        <div className='navbar-header'>
          <button type='button' className='navbar-toggle' data-toggle='collapse' data-target='.navbar-collapse'>
            {<span className='icon-bar'></span> for i in [0...3]}
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

module.exports = Navigation
