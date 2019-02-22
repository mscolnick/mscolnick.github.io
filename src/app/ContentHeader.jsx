import React from "react"

const { Divider, Icon, HeaderContent } = require("semantic-ui-react");

export default class ContentHeader extends React.Component {
  displayName ="ContentHeader";

  render() {
    return (
      <Divider className="horizontal huge header">
        <Icon className={`${this.props.icon}`} />
        <HeaderContent>{this.props.title}</HeaderContent>
      </Divider>
    );
  }
};
