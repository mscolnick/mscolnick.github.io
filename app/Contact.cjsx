React = require 'react'
ContentSection = require './ContentSection'
MSList = require './MSList'

{ Grid
  Column } = require 'react-semantify'

SocialItems = [
  { name: 'email', link: 'mailto:mscolnick@gmail.com'}
  { name: 'linkedin', link: 'https://www.linkedin.com/in/mscolnick'}
  { name: 'github', link: 'https://github.com/mscolnick'}
  { name: 'quora', link: 'http://www.quora.com/Myles-Scolnick'}
  { name: 'twitter', link: 'https://twitter.com/TheMylesFiles'}
  { name: 'skype', link: 'skype:MylesScolnick?call'}
]

ContactInfo = [
  '+1 (303)–250–0788'
  'Email: <a href="mailto:mscolnick@gmail.com">mscolnick@gmail.com</a>'
]

Contact = React.createClass
  displayName: 'Contact'

  render: ->
    <ContentSection id="contact" title="Contact" icon="mail">
      <Grid className="two column middle aligned stackable vertically padded">
        <Column>
          <MSList items={ContactInfo}/>
        </Column>
        <Column>
          {<a className="#{s.name}-hover social-slide" href={s.link} key={i}/> for s, i in SocialItems}
        </Column>
      </Grid>
    </ContentSection>

module.exports = Contact
