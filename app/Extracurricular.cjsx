React = require 'react'
ContentSection = require './ContentSection'

{ Header
  Column
  Grid
  Segment } = require 'react-semantify'

ExItems = [
  {
    name: 'Cal Men’s Club Lacrosse Team'
    position: 'MCLA D-1 Student Athlete / Lead Web Designer'
    time: 'Fall 2012 - 2015'
    description: ['Headed website for a three-month long campaign by the team that had raised over $250,000 in funding']
  }
  {
    name: 'Phi Gamma Delta Fraternity'
    position: 'Vice President/Treasurer, Scholarship Chair'
    time: 'Fall 2012 - 2015'
    description: ['Oversaw and budgeted $150,000 and carried out chapter affairs; Promoted scholarship and organized resume workshops']
  }
  {
    name: 'JDRF (Juvenile Diabetes Research Foundation)'
    position: 'Team captain for JDRF'
    time: 'Summer 2008 - 2011'
    description: ['Raised over $10,000 for JDRF’s Walk to Cure Diabetes and received the Golden Sneaker Award for excellence in fundraising']
  }
]

Extracurricular = React.createClass
  displayName: 'Extracurricular'

  render: ->
    <ContentSection id="involvement" title="Involvement" icon="map">
      <Grid className="one column vertically padded">
        {<ExtracurricularItem data={item} key={i} /> for item, i in ExItems}
      </Grid>
    </ContentSection>

module.exports = Extracurricular

ExtracurricularItem = React.createClass
  displayName: 'ExtracurricularItem'

  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <Column>
      <Segment className="basic clearing">
        <Header className="right floated small">{@props.data.time}</Header>
        <Header className="left floated large">
          {@props.data.name}
          <div className="sub header">{@props.data.position}</div>
        </Header>
      </Segment>
      <ul className="blue">
       {<li key={i}>{d}</li> for d, i in @props.data.description}
      </ul>
    </Column>
