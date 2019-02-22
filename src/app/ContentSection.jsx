/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
import React from "react"
import ContentHeader from "./ContentHeader"

const { Segment, Container } = require("semantic-ui-react");

export default class ContentSection extends React.Component {
  displayName ="Section";

  render() {
    return (
      <Segment className="basic vertical stripe" id={this.props.id}>
        <Container>
          <ContentHeader icon={this.props.icon} title={this.props.title} />
          {this.props.children}
        </Container>
      </Segment>
    );
  }
};

