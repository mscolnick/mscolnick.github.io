import { withPrefix } from "gatsby";
import React from "react";

import { Container, Grid, GridColumn, Icon, Segment } from "semantic-ui-react";

export default class Footer extends React.Component {
    public displayName = "Footer";

    public render() {
        return (
            <Segment className="inverted vertical footer">
                <Container>
                    <Grid className="stackable inverted divided">
                        <GridColumn className="thirteen wide">
                            <Icon className="copyright small" />
                            {`2016 -- Myles Scolnick`}
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
}
