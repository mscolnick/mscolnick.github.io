React = require 'react'
ReactDOM = require 'react-dom'
ContentSection = require './ContentSection'
MSList = require './MSList'

{ Grid
  Image
  Column
  Progress
  Segment
  Header
  Row
  List
  Item } = require 'react-semantify'

ProgressType = ['red', 'orange', 'yellow', 'olive', 'green', 'teal', 'blue', 'violet', 'purple', 'pink']
Tools = ['Git', 'Vim', 'Eclipse', 'AWS', 'Processing', 'Bootstrap', 'Hadoop', 'Xcode', 'Twilio', 'CMake', 'OpenCV', 'OpenMP', 'SSE Intrinsics', 'SQLite', 'LaTeX', 'jQuery', 'VirtualBox']

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
    url: 'https://www.palantir.com'
    logoName: 'palantir.png'
    name: 'Palantir Technologies'
    location: 'around the world'
    position: 'Incoming Software Engineer'
    time: 'Summer 2016 - Present'
    description: []
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
  displayName: 'Experience'

  render: ->
    <ContentSection id="experience" title="Experience" icon={"line chart"}>
      <Grid className="stackable vertically padded">
        {<ExperienceItem data={item} key={i} /> for item, i in ExperienceItems}
        <Column className="sixteen wide">
          <Segment className="piled">
            <Header>Technical</Header>
            {<TechincalItem data={item} progressType={ProgressType[i%ProgressType.length]} key={i} /> for item, i in TechincalItems}
            <Header className="tiny">Tools</Header>
            <List className="horizontal bulleted link">
              {<Item key={i}>{e}</Item> for e, i in Tools}
            </List>
          </Segment>
        </Column>
      </Grid>
    </ContentSection>

module.exports = Experience

ExperienceItem = React.createClass
  displayName: 'ExperienceItem'

  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <Row>
      <Column className="three wide">
        <a href={@props.data.url}>
          <Image className="fluid rounded centered" alt={@props.data.logoName} src="images/companies/#{@props.data.logoName}" />
        </a>
      </Column>
      <Column className="thirteen wide">
        <Segment className="basic clearing">
          <Header className="right floated small">
            {@props.data.time}
          </Header>
          <Header className="left floated large">
            {@props.data.name}
            <span className="at-symbol"> @ </span>
            <span className="location">{@props.data.location}</span>
            <div className="sub header">{@props.data.position}</div>
          </Header>
        </Segment>
        <MSList items={@props.data.description}/>
      </Column>
    </Row>

TechincalItem = React.createClass
  displayName: 'TechincalItem'

  props:
    data: React.PropTypes.object.isRequired
    progressType: React.PropTypes.string.isRequired

  render: ->
    <Grid>
      <Column className="three wide">{@props.data.name}</Column>
      <Column className="thirteen wide">
        <Progress className="#{@props.progressType}" init={{percent: @props.data.progress}}>
          <div className="bar"></div>
        </Progress>
      </Column>
    </Grid>
