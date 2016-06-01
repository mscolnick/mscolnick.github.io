React = require 'react'
ContentSection = require './ContentSection'

{ Grid
  Divider
  Image
  Container
  Column } = require 'react-semantify'

About = React.createClass
  displayName: 'About'

  render: ->
    <ContentSection id="about" title="About Me" icon="dashboard">
      <Grid className="stackable two column middle aligned vertically padded">
        <Column className="four wide">
          <Image className="medium rounded centered" alt="MylesScolnick" src="images/portrait.jpg" />
        </Column>
        <Column className="twelve wide">
          <Container className="center aligned">
            <p>Hello, world! My name is Myles Scolnick. I graduated from the University of California, Berkeley, with degrees in Computer Science and Mathematics. I am currently a software engineer working around the world.</p>
            <p>I have a remarkable aptitude for problem-solving and embrace any challenge presented to me. I aspire to work on difficult problems that have tangible impacts on the world. I am most interested in leveraging software to solve difficult problems with big data that is otherwise impossible.</p>
            <p>Please feel free to contact me personally; my information is listed <a href="#contact">below</a>.</p>
          </Container>
        </Column>
      </Grid>
    </ContentSection>

module.exports = About
