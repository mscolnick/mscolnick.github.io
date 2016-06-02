React = require 'react'
Navigation = require './Navigation'
Footer = require './Footer'
About = require './About'
Education = require './Education'
Experience = require './Experience'
Projects = require './Projects'
Extracurricular = require './Extracurricular'
Links = require './Links'
Extras = require './Extras'
Contact = require './Contact'

{ Item
  Menu } = require 'react-semantify'

Sections = ['About', 'Education', 'Experience', 'Projects', 'Involvement', 'Links', 'Contact']

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
      <Education />
      <Experience />
      <Projects />
      <Extracurricular />
      <Links />
      <Extras />
      <Contact />
      <Footer />
    </div>

module.exports = Body
