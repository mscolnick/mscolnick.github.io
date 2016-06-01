React = require 'react'

{ List
  Icon
  Content
  Item } = require 'react-semantify'

MSList = React.createClass
  displayName: 'MSList'

  propTypes:
    items: React.PropTypes.array.isRequired

  render: ->
    <List className="relaxed">
      {<Item key={i}><Icon className="plus teal"/><Content dangerouslySetInnerHTML={{__html: d}}/></Item> for d, i in @props.items}
    </List>

module.exports = MSList