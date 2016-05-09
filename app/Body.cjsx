React = require 'react'
Navigation = require './Navigation'
Footer = require './Footer'
About = require './About'
Experience = require './Experience'
Projects = require './Projects'
Extracurricular = require './Extracurricular'
Links = require './Links'
Contact = require './Contact'

Body = React.createClass
  displayName: 'Body'

  render: ->
    <div>
      <div className='container'>
        <Navigation />
        <div className='content'>
          <About />
          <Experience />
          <Projects />
          <Extracurricular />
          <Links />
          <Contact />
        </div>
      </div>
      <Footer />
    </div>

module.exports = Body
