import React from "react"
import ContentSection from "./ContentSection"
import MSList from "./MSList"
import { withPrefix } from "gatsby";

const { Header, Icon, Segment, Grid, GridColumn } = require("semantic-ui-react");

const ProjectItems = [
  {
    url: withPrefix("resources/radius-report.pdf"),
    name: "NAICS Classifier",
    languages: "Python, NLTK",
    time: "Fall 2015",
    description: [
      "Built a natural language model to algorithmically determine the best North American Industry Classification System (NAICS) code for a given small business",
      "Received second in the Radius Collider Competition (through UC Berkeley's SCET)",
      "Incorporated several techniques including text cleaning, data augmentation, TF-IDF, wordnet, neural embeddings and cross-validation to improve accuracy"
    ]
  },
  {
    url: "https://datalessapp.github.io/",
    name: "Dataless",
    languages: "Python, Flask, Twilio, Android/Java, AWS EC2",
    time: "Fall 2015",
    description: [
      "Built an application on Android to get remote information and internet access without using data and only using SMS",
      "Created a protocol with SMS to simulate network packets capable of handling dropped packets and out of order packets",
      'Won <b>Best Hack at Berkeley</b> from FreeVentures and <b>Best use of AWS</b> from Amazon at <a href="http://www.calhacks.io/">Cal Hacks 2.0'
    ]
  },
  {
    url: "https://github.com/mscolnick/StockAnalysis",
    name: "Stock Analysis",
    languages: "Python, Flask, SQLite, Jinja, HTML/CSS/JS",
    time: "Spring 2015",
    description: [
      "Created a web application (Front/Back End) to provide technical analysis and graphs for searched stocks",
      "Implemented variety of trading indicators such as MFRAMA, RSI, ADX, MACD for technical analysis on quotes",
      "Added external APIs to give more context for a given stock such as current quote, tweets, and interactive graphs"
    ]
  },
  {
    url: "https://github.com/mscolnick/ADX_Cryptocurrency",
    name: "ADX Cryptocurrency Trader",
    languages: "Python",
    time: "Spring 2014",
    description: [
      "Built a program to analyze trends in crypto-currency, specifically Dogecoin and Bitcoin, with the ADX technical indicator",
      "Automatically tracked momentum of currency fluctuations to determine prime opportunity to buy and sell currency",
      "Implemented APIs of currency exchanges and digital wallets to configure auto-trading at high velocities"
    ]
  },
  {
    url: "https://github.com/mscolnick/DrSearch",
    name: "Dr. Search",
    languages: "Java/Processing",
    time: "Spring 2013",
    description: [
      "Developed a fully functional cell counter to detect and count the number of cells in a given image or selection of images",
      "Created the ability to run through a folder of images and export an Excel spreadsheet with results of 43 images in 2 seconds",
      "Implemented ‘blob-detection’ and ‘edge-detected’ to locate cells, color cells, and count cells with little to no error"
    ]
  }
];

export default class Projects extends React.Component {
  displayName ="Projects";

  render() {
    return (
      <ContentSection id="projects" title="Projects" icon="lab">
        <Grid className="one column vertically padded">
          {ProjectItems.map((p, i) => (
            <Project data={p} key={i} />
          ))}
        </Grid>
      </ContentSection>
    );
  }
};


class Project extends React.Component {
  displayName ="Project";

  render() {
    return (
      <GridColumn>
        <Segment className="basic clearing">
          <Header className="right floated small">
            {this.props.data.time}
          </Header>
          <Header className="left floated large">
            <a href={this.props.data.url}>
              {this.props.data.name} <Icon className="linkify tiny" />
            </a>
            <div className="sub header">
              Language: {this.props.data.languages}
            </div>
          </Header>
        </Segment>
        <MSList items={this.props.data.description} />
      </GridColumn>
    );
  }
};
