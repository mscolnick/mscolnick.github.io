React = require 'react'
ContentSection = require './ContentSection'

{ Grid
  Header
  Column
  Divider } = require 'react-semantify'

SocialItems = [
  { name: 'email', link: 'mailto:mscolnick@gmail.com'}
  { name: 'linkedin', link: 'https://www.linkedin.com/in/mscolnick'}
  { name: 'github', link: 'https://github.com/mscolnick'}
  { name: 'quora', link: 'http://www.quora.com/Myles-Scolnick'}
  { name: 'twitter', link: 'https://twitter.com/TheMylesFiles'}
  { name: 'skype', link: 'skype:MylesScolnick?call'}
]

Contact = React.createClass
  displayName: 'Contact'

  render: ->
    <ContentSection id="contact" title="Contact" icon="mail">
      <Grid className="two column middle aligned stackable vertically padded">
        <Column>
          <ul className="blue">
            <li>(303)–250–0788</li>
            <li>Email: <a href="mailto:mscolnick@gmail.com">mscolnick@gmail.com</a></li>
          </ul>
        </Column>
        <Column>
          {<a className="#{s.name}-hover social-slide" href={s.link} key={i}/> for s, i in SocialItems}
        </Column>
      </Grid>
    </ContentSection>

module.exports = Contact
