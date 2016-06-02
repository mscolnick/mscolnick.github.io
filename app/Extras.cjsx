React = require 'react'
ContentSection = require './ContentSection'
MSList = require './MSList'

{ Grid
  Column
  Header
  Embed } = require 'react-semantify'

Extras = React.createClass
  displayName: 'Extras'

  render: ->
    <ContentSection id="extras" title="Extras" icon="wizard">
      <Grid className="two column centered">
        <Column className="ten wide">
          <Embed url="https://sketchfab.com/models/c2f52cc573354c7bbcd7743133ae77ea/embed" init={true}/>
        </Column>
      </Grid>
    </ContentSection>

module.exports = Extras
