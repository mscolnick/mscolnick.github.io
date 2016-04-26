React = require('react')
ContentSection = require('./ContentSection')
ProgressBar = require('react-bootstrap').ProgressBar
Col = require('react-bootstrap').Col
Row = require('react-bootstrap').Row

ProgressType = ['success', 'info', 'warning', 'danger']
TechincalItems = [
  { name: 'Python', progress: 95}
  { name: 'Java', progress: 95}
  { name: 'HTML/CSS', progress: 90}
  { name: 'Coffeescript/Javascript', progress: 70}
  { name: 'Swift/Obective-C', progress: 70}
  { name: 'C', progress: 70}
  { name: 'Bash Scripting', progress: 70}
  { name: 'Matlab', progress: 60}
]
ExperienceItems = [
  {
    url: 'http://www.berkeley.edu'
    logoName: 'cal_logo.gif'
    name: 'University of California, Berkeley'
    location: 'Berkeley, CA'
    position: 'Double Major: Computer Science & Mathematics'
    time: 'Fall 2012 - Spring 2015'
    description: [
      'Technical GPA: 3.67/4.0'
      '<i>Coursework:</i> Linear Algebra and Differential Equations (54), Intro to Analysis (104), Advanced Linear Algebra (110), Intro to Abstract Algebra (113), Structure and Interpretation of Computer Programs (61A), Data Structures (61B), Machine Structures (61C), Discrete Mathematics and Probability Theory (70), Efficient Algorithms and Intractable Problems (170), iOS Game Development (198), Intro to Digital Electronics (42), Engineering Entrepreneurship (IEOR190), Engineering Parallel Software (194), Artificial Intelligence (188), Computer Security (161), Operating Systems and System Programming (162), Numerical Analysis (128A), Databases (186), Complex Analysis (185), Machine Learning (189)']
  }
  {
    url: 'https://www.palantir.com'
    logoName: 'palantir.png'
    name: 'Palantir Technologies'
    location: 'Palo Alto, CA'
    position: 'Software Engineer Intern'
    time: 'Summer 2015'
    description: [
      'Worked on adding new improvements and features to Palantir\'s <a href="https://www.palantir.com/solutions/trader-oversight/">trader oversight solution</a>'
      'Developed a new understanding of Postgres Full Text Search, large-scale web applications, build automation tools, and dependency management']
  }
  {
    url: 'https://www.dropbox.com'
    logoName: 'dropbox.png'
    name: 'Dropbox'
    location: 'Berkeley, CA'
    position: 'Part-Time Extern'
    time: 'Spring 2015'
    description: [
      'Conducted research on students to develop insights about student technology usage and trends'
      'Acquired great insight into the tech world and furthered developed my research capabilities with real business implications']
  }
  {
    url: 'https://www.palantir.com'
    logoName: 'palantir.png'
    name: 'Palantir Technologies'
    location: 'Palo Alto, CA'
    position: 'Product Quality Engineer Intern'
    time: 'Summer 2014'
    description: [
      'Developed new management tools to deploy a subset of Palantir software with increased reliability and efficiency'
      'Gained large project experience, increased Java/Shell skills, as well as team collaboration and other proficiencies'
      'Created tests plans and implemented back end (BE) automation tests to ensure project stability from code changes']
  }
  {
    url: 'http://www.redbull.com/us/en'
    logoName: 'redbull.png'
    name: 'Red Bull'
    location: 'Berkeley, CA'
    position: 'Student Brand Manager'
    time: 'Spring 2014 - Summer 2015'
    description: [
      'Infused Red Bull into the student lifestyle through co-ordination of projects on university campus and support of student events'
      'Developed and maintain relationships and support of key university bodies and individuals'
      'Seeked opportunities to develop Red Bull’s brand profile, image and credibility on and around campus within the student market']
  }
  {
    url: 'http://www.ucdenver.edu/academics/colleges/medicalschool/centers/WebbWaring/Pages/WagnerLab.aspx'
    logoName: 'cu_logo.png'
    name: 'Webb-Warring Lab of Immunology'
    location: 'University of Colorado, Denver'
    position: 'Immunology Intern'
    time: 'Summer 2011'
    description: [
      'Worked with a team to find a cure for Type 1 Diabetes in mice by examining the roles of auto-reactive T-cells in diabetes'
      'Studied APC\'s, CD4\'s, and V-alpha chains (1-19) to developed a correlation between age of mice and beta-islet configuration'
      'Analyzed gel electrophoresis samples to separate protein solution to determine V-alpha chains present in mice pancreas']
  }
]

Experience = React.createClass
  render: ->
    <ContentSection id='experience' title='Experience'>
      {<ExperienceSection data={item} key={i} /> for item, i in ExperienceItems}
      <br />
      <Row>
        <Col xs={12} className='well'>
          <h3>Technical</h3>
          <Row>
            {<TechincalSection data={item} progressType={ProgressType[i%ProgressType.length]} key={i} /> for item, i in TechincalItems}
            <Col xs={12}>
              <em>Tools: </em>Git, Vim, Eclipse, AWS, Processing, Bootstrap, Hadoop, Xcode, Twilio, CMake, OpenCV, OpenMP, SSE Intrinsics, SQLite, LaTeX, jQuery, VirtualBox
              <br />
              <em>OS: </em>
              Mac OS, Linux/Ubuntu
            </Col>
          </Row>
        </Col>
      </Row>
    </ContentSection>

module.exports = Experience

ExperienceSection = React.createClass
  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <Row>
      <Col xs={12} md={2} className='text-center'>
        <a href={@props.data.url}>
          <img alt={@props.data.logoName} className='logo' src={'images/companies/' + @props.data.logoName} />
        </a>
      </Col>
      <Col xs={12} md={10}>
        <h3>
          {@props.data.name}
          <span className='at-symbol'> @ </span>
          <span className='location'>{@props.data.location}</span>
        </h3>
        <h4>{@props.data.position}</h4>
        <h6>{@props.data.time}</h6>
        <ul className='blue'>
          {<li dangerouslySetInnerHTML={{__html: d}} key={i} /> for d, i in @props.data.description}
        </ul>
      </Col>
    </Row>

TechincalSection = React.createClass
  props:
    data: React.PropTypes.object.isRequired
    progressType: React.PropTypes.string.isRequired

  render: ->
    <div>
      <Col xs={12} sm={2}>{@props.data.name}</Col>
      <Col xs={12} sm={10}>
        <ProgressBar bsStyle={@props.progressType} now={@props.data.progress} />
      </Col>
    </div>
