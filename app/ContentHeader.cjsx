React = require 'react'

{ Divider
  Icon
  Content } = require 'react-semantify'

ContentHeader = React.createClass
  displayName: 'ContentHeader'
  
  propTypes:
    title: React.PropTypes.string.isRequired
    subTitle: React.PropTypes.string
    icon: React.PropTypes.string
    color: React.PropTypes.string

  render: ->
    <Divider className="horizontal huge header">
      <Icon className="#{@props.icon}" />
      <Content>
        {@props.title}
      </Content>
    </Divider>

module.exports = ContentHeader