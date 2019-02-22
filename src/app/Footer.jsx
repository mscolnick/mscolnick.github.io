import React from "react"
import { withPrefix } from "gatsby";

const { Segment, Container, Grid, GridColumn, Icon } = require("semantic-ui-react");

export default class  Footer extends React.Component {
  displayName ="Footer";

  render() {
    return (
      <Segment className="inverted vertical footer">
        <Container>
          <Grid className="stackable inverted divided">
            <GridColumn className="thirteen wide">
              <Icon className="copyright small" />
              {` 2016 -- Myles Scolnick\
`}
            </GridColumn>
            <GridColumn className="three wide">
              <a className="ui button blue" href={withPrefix("resume_tex/resume.pdf")}>
                <Icon className="file pdf outline" /> Print
              </a>
            </GridColumn>
          </Grid>
        </Container>
      </Segment>
    );
  }
};
