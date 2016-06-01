React = require 'react'

{ Segment
  Container
  Icon
  Menu
  Item } = require 'react-semantify'

Sections = ['About', 'Experience', 'Projects', 'Involvement', 'Links', 'Contact']

Navigation = React.createClass
  displayName: 'Navigation'

  render: ->
    <Segment className="vertical basic center aligned">
      <Container>
        <Menu className="large secondary">
          <a className="toc item">
            <Icon className="sidebar"/>
          </a>
          {<Item type="link" key={i} href="##{section.toLowerCase()}">{section}</Item> for section, i in Sections}
          <div className="right menu">
            <Item>
              <a className="ui button blue" href="resume_tex/resume.pdf"><i className="file pdf outline icon"></i> Print</a>
            </Item>
          </div>
        </Menu>
      </Container>
    </Segment>

module.exports = Navigation