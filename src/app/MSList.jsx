/*
 * decaffeinate suggestions:
 * DS101: Remove unnecessary use of Array.from
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
import React from "react"
import { ListContent } from "semantic-ui-react";

const { List, Icon, Item } = require("semantic-ui-react");

export default class  MSList extends React.Component {
  displayName ="MSList";

  render() {
    return (
      <List className="relaxed">
        {Array.from(this.props.items).map((d, i) => (
          <Item key={i}>
            <Icon className="plus teal" />
            <ListContent>
              <div dangerouslySetInnerHTML={{ __html: d }}/>
            </ListContent>
          </Item>
        ))}
      </List>
    );
  }
};
