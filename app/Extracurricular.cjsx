React = require('react')
ContentSection = require('./ContentSection')

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
  render: ->
    <ContentSection id='involvement' title='Involvement'>
      {<ExtracurricularItem data={item} key={i} /> for item, i in ExItems}
    </ContentSection>

module.exports = Extracurricular

ExtracurricularItem = React.createClass
  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <div>
      <h3>{@props.data.name}</h3>
      <h4>{@props.data.position}</h4>
      <h6>{@props.data.time}</h6>
      <ul className='blue'>
       {<li key={i}>{d}</li> for d, i in @props.data.description}
      </ul>
    </div>
