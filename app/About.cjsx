React = require('react')
ContentSection = require('./ContentSection')
Col = require('react-bootstrap').Col

About = React.createClass
  render: ->
    <ContentSection id='about' title='About Me'>
      <a className='btn btn-success pull-right pdf hidden-xs' href='resume_tex/resume.pdf'>Printable PDF</a>
      <Col xs={12} md={2} className='text-center'>
        <img alt='MylesScolnick' src={'images/portrait.jpg'} />
      </Col>
      <Col xs={12} md={8} mdOffset={1}>
        <h5>Hello, world! My name is Myles Scolnick. I am a Software Engineer from Berkeley, CA.</h5>
        <h5>I have a remarkable aptitude for problem-solving and embrace any challenge presented to me. I aspire to work on difficult problems that have tangible impacts on the world. I am most interested in leveraging software to solve difficult problems with big data that is otherwise impossible. I have gained industry experience through two internships, and have worked on many side-projects.</h5>
        <h5>I am eager and excited to begin my career. Please feel free to contact me personally; my information is listed <a href='#contact'>below</a>.</h5>
      </Col>
    </ContentSection>

module.exports = About
