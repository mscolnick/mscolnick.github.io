React = require('react')
ContentSection = require('./ContentSection')

About = React.createClass
  render: ->
    <ContentSection id='about' title='About Me'>
      <a className='btn btn-success pull-right pdf hidden-xs' href='resume_tex/resume.pdf'>Printable PDF</a>
      <div className='col-xs-12 col-md-2 text-center'>
        <img alt='MylesScolnick' src={'images/me.jpg'} />
      </div>
      <div className='col-xs-12 col-md-8 col-md-offset-1'>
        <h5>Hello, world! My name is Myles Scolnick. I am a Software Engineer from Berkeley, CA.</h5>
        <h5>I have a remarkable aptitude for problem-solving and embrace any challenge presented to me. I aspire to work on difficult problems that have tangible impacts on the world. I am most interested in leveraging software to solve difficult problems with big data that is otherwise impossible. I have gained industry experience through two internships, and have worked on many side-projects.</h5>
        <h5>I am eager and excited to begin my career. Please feel free to contact me personally; my information is listed <a href='#contact'>below</a>.</h5>
      </div>
    </ContentSection>

module.exports = About
