React = require 'react'
ContentSection = require './ContentSection'
{ Col
  Button
  Image } = require 'react-bootstrap'

About = React.createClass
  displayName: 'About'

  render: ->
    <ContentSection id='about' title='About Me'>
      <Button className='pull-right pdf hidden-xs' bsStyle='success' href='resume_tex/resume.pdf'>Printable PDF</Button>
      <Col xs={12} md={3} className='text-center'>
        <Image responsive rounded alt='MylesScolnick' src='images/portrait.jpg' />
      </Col>
      <Col xs={12} md={9}>
        <h5>Hello, world! My name is Myles Scolnick. I am a Software Engineer from Berkeley, CA.</h5>
        <h5>I have a remarkable aptitude for problem-solving and embrace any challenge presented to me. I aspire to work on difficult problems that have tangible impacts on the world. I am most interested in leveraging software to solve difficult problems with big data that is otherwise impossible. I have gained industry experience through two internships, and have worked on many side-projects.</h5>
        <h5>I am eager and excited to begin my career. Please feel free to contact me personally; my information is listed <a href='#contact'>below</a>.</h5>
      </Col>
    </ContentSection>

module.exports = About
