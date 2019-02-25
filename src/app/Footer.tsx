import { withPrefix } from "gatsby";
import React from "react";

import { Container, Grid, Icon, Segment } from "semantic-ui-react";

export default class Footer extends React.Component {
    public displayName = "Footer";

    public render() {
        return (
            <Segment className="inverted vertical footer">
                <Container>
                    <Grid className="stackable inverted divided">
                        <Grid.Column className="thirteen wide">
                            <Icon className="copyright small" />
                            2019 <Icon name="minus" className="small" /> Myles Scolnick
                        </Grid.Column>
                        <Grid.Column className="three wide">
                            <a className="ui button blue" href={withPrefix("resume_tex/resume.pdf")}>
                                <Icon className="file pdf outline" /> Print
                            </a>
                        </Grid.Column>
                    </Grid>
                </Container>
            </Segment>
        );
    }
}
