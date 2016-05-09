React = require 'react'
ContentSection = require './ContentSection'

Links = React.createClass
  displayName: 'Links'

  render: ->
    <ContentSection id='links' title='Links'>
      <h3>Media</h3>
      <a href='http://denver.cbslocal.com/2012/08/15/teenage-diabetic-works-to-find-cure/'>
        <h6>Teenage Diabetic Works  To Find Cure For Disease</h6>
      </a>
      <a href='http://www.bloomberg.com/news/articles/2016-03-22/credit-suisse-cia-funded-palantir-build-joint-compliance-firm'>
        <h6>Credit Suisse, CIA-Funded Palantir to Target Rogue Bankers</h6>
      </a>
      <h3>Works</h3>
      <a href='https://www.ocf.berkeley.edu/~scolnick/StockAnalysis/'><h6>Stock Analysis</h6></a>
      <a href='https://datalessapp.github.io/'><h6>Dataless</h6></a>
    </ContentSection>

module.exports = Links