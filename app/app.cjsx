React = require('react')
Body = require('./Body')

render = -> React.renderComponent(
  <Body />,
  document.body)

render()
