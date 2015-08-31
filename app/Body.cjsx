React = require('react')
Navbar = require('./Navbar')
Footer = require('./Footer')
About = require('./About')
Experience = require('./Experience')
Projects = require('./Projects')
Extracurricular = require('./Extracurricular')
Links = require('./Links')
Contact = require('./Contact')

Body = React.createClass
  render: ->
    <div>
      <div className='container'>
        <Navbar />
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
