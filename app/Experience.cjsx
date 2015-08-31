React = require('react')
ContentSection = require('./ContentSection')

ProgressType = ['', 'progress-bar-success', 'progress-bar-info', 'progress-bar-warning']
TechincalItems = [
  { name: 'Python', progress: '95'}
  { name: 'Java', progress: '95'}
  { name: 'C', progress: '80'}
  { name: 'HTML/CSS', progress: '90'}
  { name: 'C++', progress: '40'}
  { name: 'Matlab', progress: '60'}
  { name: 'Bash Scripting', progress: '70'}
  { name: 'Obective-C', progress: '70'}
]
ExperienceItems = [
  {
    url: 'http://www.berkeley.edu'
    logoName: 'cal_logo.gif'
    name: 'University of California, Berkeley'
    location: 'Berkeley, CA'
    position: 'Double Major: Computer Science & Mathematics'
    time: 'Expected Graduation: December 2015'
    description: [
      'Technical GPA: 3.77/4.0'
      '<i>Completed Coursework:</i> Linear Algebra and Differential Equations (54), Intro to Analysis (104), Advanced Linear Algebra (110), Intro to Abstract Algebra (113), Structure and Interpretation of Computer Programs (61A), Data Structures (61B), Machine Structures (61C), Discrete Mathematics and Probability Theory (70), Efficient Algorithms and Intractable Problems (170), iOS Game Development (198), Intro to Digital Electronics (42), Engineering Entrepreneurship (IEOR190), Engineering Parallel Software (194), Artificial Intelligence (188), Computer Security (161), Operating Systems and System Programming (162), Numerical Analysis (128A)'
      '<i>Current Coursework (Fall 2015):</i> Databases (186), Complex Analysis (185), Machine Learning (189)']
  }
  {
    url: 'https://www.palantir.com'
    logoName: 'palantir.png'
    name: 'Palantir Technologies'
    location: 'Palo Alto, CA'
    position: 'Software Engineer Intern'
    time: 'Summer 2015'
    description: []
  }
  {
    url: 'https://www.dropbox.com'
    logoName: 'dropbox.png'
    name: 'Dropbox'
    location: 'Berkeley, CA'
    position: 'Part-Time Extern'
    time: 'Spring 2015'
    description: [
      'Conducted research on students to develop insights about student technology usage and trends.'
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
    time: 'Spring 2014 - Present'
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
      {<ExperienceSection data={item} /> for item in ExperienceItems}
      <br />
      <div className='row'>
        <div className='col-xs-12 well'>
          <h3>Technical</h3>
          <div className='row'>
            {<TechincalSection data={item} progressType={ProgressType[i%ProgressType.length]} /> for item, i in TechincalItems}
            <div className='col-xs-12'>
              <em>Tools: </em>Git, Vim, Eclipse, Processing, Bootstrap, Hadoop, Xcode, CMake, OpenCV, OpenMP, SSE Intrinsics, SQLite, LaTeX, jQuery, Ubuntu/Linux, OSX, VirtualBox
              <br />
              <em>OS: </em>
              Mac OS, Linux/Ubuntu
            </div>
          </div>
        </div>
      </div>
    </ContentSection>

module.exports = Experience

ExperienceSection = React.createClass
  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <div className='row'>
      <div className='col-xs-12 col-md-2 text-center'>
        <a href={@props.data.url}>
          <img alt={@props.data.logoName} className='logo' src={'images/companies/' + @props.data.logoName} />
        </a>
      </div>
      <div className='col-xs-12 col-md-10'>
        <h3>
          {@props.data.name}
          <span className='at-symbol'> @ </span>
          <span className='location'>{@props.data.location}</span>
        </h3>
        <h4>{@props.data.position}</h4>
        <h6>{@props.data.time}</h6>
        <ul className='blue'>
          {<li dangerouslySetInnerHTML={{__html: d}} /> for d in @props.data.description}
        </ul>
      </div>
    </div>

TechincalSection = React.createClass
  props:
    data: React.PropTypes.object.isRequired
    progressType: React.PropTypes.string.isRequired

  render: ->
    <div>
      <div className='col-sm-2 col-xs-12'>{@props.data.name}</div>
      <div className='col-sm-10 col-xs-12'>
        <div className='progress'>
          <div className="progress-bar #{@props.progressType}" role='progressbar' aria-valuenow='60' aria-valuemin='0' aria-valuemax='100' style={width: "#{@props.data.progress}%"}>
          </div>
        </div>
      </div>
    </div>
