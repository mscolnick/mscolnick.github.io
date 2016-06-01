React = require 'react'

{ Segment
  Container
  Grid
  Column
  Icon } = require 'react-semantify'

Footer = React.createClass
  displayName: 'Footer'

  render: ->
    <Segment className="inverted vertical footer">
      <Container>
        <Grid className="stackable inverted divided">
          <Column className="thirteen wide">
            Copyright © 2016 by Myles Scolnick
          </Column>
          <Column className="three wide">
            <a className="ui button blue" href="resume_tex/resume.pdf"><Icon className="file pdf outline"/> Print</a>
          </Column>
        </Grid>
      </Container>
    </Segment>

module.exports = Footer
