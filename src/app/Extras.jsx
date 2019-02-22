/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
import React from "react"
import ContentSection from "./ContentSection"
import MSList from "./MSList"

const { Grid, GridColumn, Header, Embed } = require("semantic-ui-react");

export default class  Extras extends React.Component {
  displayName ="Extras";

  render() {
    return (
      <ContentSection id="extras" title="Extras" icon="wizard">
        <Grid className="two column centered">
          <GridColumn className="ten wide">
            <Embed
              url="https://sketchfab.com/models/c2f52cc573354c7bbcd7743133ae77ea/embed"
              init={true}
            />
          </GridColumn>
        </Grid>
      </ContentSection>
    );
  }
};
