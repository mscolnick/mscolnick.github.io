import React from "react"
import ContentSection from "./ContentSection"

const { Header, List, Item, Icon } = require("semantic-ui-react");

export default class  Links extends React.Component {
  displayName ="Links";

  render() {
    return (
      <ContentSection id="links" title="Links" icon="linkify">
        <List>
          <Item>
            <Header className="large">Media</Header>
            <List>
              <Item
                type="link"
                href="http://denver.cbslocal.com/2012/08/15/teenage-diabetic-works-to-find-cure/"
              >
                <Icon className="right arrow" />
                {`Teenage Diabetic Works To Find Cure For Disease\
`}
              </Item>
              <Item
                type="link"
                href="http://www.bloomberg.com/news/articles/2016-03-22/credit-suisse-cia-funded-palantir-build-joint-compliance-firm"
              >
                <Icon className="right arrow" />
                {`Credit Suisse, CIA-Funded Palantir to Target Rogue Bankers\
`}
              </Item>
            </List>
          </Item>
          <Item>
            <Header className="large">Works</Header>
            <List>
              <Item
                type="link"
                href="https://www.ocf.berkeley.edu/~scolnick/StockAnalysis/"
              >
                <Icon className="right arrow" />
                {`Stock Analysis\
`}
              </Item>
              <Item type="link" href="https://datalessapp.github.io/">
                <Icon className="right arrow" />
                {`Dataless\
`}
              </Item>
            </List>
          </Item>
        </List>
      </ContentSection>
    );
  }
};
