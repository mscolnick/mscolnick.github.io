React = require 'react'
Navigation = require './Navigation'
Footer = require './Footer'
About = require './About'
Experience = require './Experience'
Projects = require './Projects'
Extracurricular = require './Extracurricular'
Links = require './Links'
Contact = require './Contact'

{ Item
  Menu } = require 'react-semantify'

Sections = ['About', 'Experience', 'Projects', 'Involvement', 'Links', 'Contact']

Body = React.createClass
  displayName: 'Body'

  componentDidMount: ->
    $('.ui.sidebar').sidebar('attach events', '.toc.item')

  render: ->
    <div>
      <Menu className="vertical inverted thin sidebar">
        {<Item type="link" key={i} href="##{section.toLowerCase()}">{section}</Item> for section, i in Sections}
      </Menu>
      <Navigation />
      <About />
      <Experience />
      <Projects />
      <Extracurricular />
      <Links />
      <Contact />
      <Footer />
    </div>

module.exports = Body
