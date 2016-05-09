React = require 'react'
ReactDOM = require 'react-dom'
Body = require './Body'

ga = require 'react-ga'
ga.initialize 'UA-62414107-3'

logPageView = () ->
  ga.pageview window.location.pathname

ReactDOM.render(<Body onUpdate={logPageView} />, document.getElementById('app'))
