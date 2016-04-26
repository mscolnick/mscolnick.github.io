React = require('react')
ContentSection = require('./ContentSection')
Col = require('react-bootstrap').Col

SocialItems = [
  { name: 'email', link: 'mailto:mscolnick@berkeley.edu'}
  { name: 'linkedin', link: 'https://www.linkedin.com/pub/myles-scolnick/63/86/7b1/'}
  { name: 'github', link: 'https://github.com/mscolnick'}
  { name: 'quora', link: 'http://www.quora.com/Myles-Scolnick'}
  { name: 'twitter', link: 'https://twitter.com/TheMylesFiles'}
  { name: 'skype', link: 'skype:MylesScolnick?call'}
  { name: 'google', link: 'https://plus.google.com/u/0/115274414410280581672/posts'}
]

Contact = React.createClass
  render: ->
    <ContentSection id='contact' title='Contact'>
      <Col xs={12} sm={6}>
        <h2>One Way</h2>
        <ul className='blue'>
          <li>(303)–250–0788</li>
          <li>Email: <a href='mailto:mscolnick@berkeley.edu'>mscolnick@berkeley.edu</a></li>
        </ul>
      </Col>
      <Col xs={12} sm={6}>
        <h2>Another Way</h2>
        {<a className="#{s.name}-hover social-slide" href={s.link} key={i}/> for s, i in SocialItems}
      </Col>
    </ContentSection>

module.exports = Contact
