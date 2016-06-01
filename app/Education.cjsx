React = require 'react'
ReactDOM = require 'react-dom'
ContentSection = require './ContentSection'
MSList = require './MSList'

{ Grid
  Image
  Column
  Segment
  Header
  Row } = require 'react-semantify'

EducationItems = [
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
]

Education = React.createClass
  displayName: 'Education'

  render: ->
    <ContentSection id="education" title="Education" icon={"student"}>
      <Grid className="stackable vertically padded">
        {<EducationItem data={item} key={i} /> for item, i in EducationItems}
      </Grid>
    </ContentSection>

module.exports = Education

EducationItem = React.createClass
  displayName: 'EducationItem'

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
