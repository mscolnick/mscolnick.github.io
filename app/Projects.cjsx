React = require('react')
ContentSection = require('./ContentSection')

ProjectItems = [
  {
    url: 'https://github.com/mscolnick/StockAnalysis'
    name: 'Stock Analysis'
    languages: 'Python, Flask, SQLite, Jinja, HTML/CSS/JS'
    time: 'Spring 2015'
    description: [
      'Created a web application (Front/Back End) to provide technical analysis and graphs for searched stocks'
      'Implemented variety of trading indicators such as MFRAMA, RSI, ADX, MACD for technical analysis on quotes'
      'Added external APIs to give more context for a given stock such as current quote, tweets, and interactive graphs']
  }
  {
    url: 'https://github.com/mscolnick/ADX_Cryptocurrency'
    name: 'ADX Cryptocurrency Trader'
    languages: 'Python'
    time: 'Spring 2014'
    description: [
      'Built a program to analyze trends in crypto-currency, specifically Dogecoin and Bitcoin, with the ADX technical indicator'
      'Automatically tracked momentum of currency fluctuations to determine prime opportunity to buy and sell currency'
      'Implemented APIs of currency exchanges and digital wallets to configure auto-trading at high velocities']
  }
  {
    url: 'https://github.com/mscolnick/DrSearch'
    name: 'Dr. Search'
    languages: 'Java/Processing'
    time: 'Spring 2013'
    description: [
      'Developed a fully functional cell counter to detect and count the number of cells in a given image or selection of images'
      'Created the ability to run through a folder of images and export an Excel spreadsheet with results of 43 images in 2 seconds'
      'Implemented ‘blob-detection’ and ‘edge-detected’ to locate cells, color cells, and count cells with little to no error']
  }
]

Projects = React.createClass
  render: ->
    <ContentSection id='projects' title='Projects'>
      {<Project data={p} /> for p in ProjectItems}
    </ContentSection>

module.exports = Projects

Project = React.createClass
  props:
    data: React.PropTypes.object.isRequired

  render: ->
    <div>
      <a href={@props.data.url}>
        <h3 className='proj'>
          {@props.data.name}
          <span className='glyphicon glyphicon-arrow-right arrow' />
        </h3>
      </a>
      <h4>Language: {@props.data.languages}</h4>
      <h6>{@props.data.time}</h6>
      <ul className='blue'>
        {<li>{d}</li> for d in @props.data.description}
      </ul>
    </div>
