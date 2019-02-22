/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
import { withPrefix } from "gatsby";
import React from "react";
import ContentSection from "./ContentSection";

import { Container, Grid, GridColumn, Image } from "semantic-ui-react";

export default class About extends React.Component {
    public displayName = "About";

    public render() {
        return (
            <ContentSection id="about" title="About Me" icon="dashboard">
                <Grid className="stackable two column middle aligned vertically padded">
                    <GridColumn className="four wide">
                        <Image
                            className="medium rounded centered"
                            alt="MylesScolnick"
                            src={withPrefix("images/portrait.jpg")}
                        />
                    </GridColumn>
                    <GridColumn className="twelve wide">
                        <Container className="center aligned">
                            <p>
                                Hello, world! My name is Myles Scolnick. I graduated from the University of California,
                                Berkeley, with degrees in Computer Science and Mathematics. I am currently a software
                                engineer working around the world.
                            </p>
                            <p>
                                I have a remarkable aptitude for problem-solving and embrace any challenge presented to
                                me. I aspire to work on difficult problems that have tangible impacts on the world. I am
                                most interested in leveraging software to solve difficult problems with big data that is
                                otherwise impossible.
                            </p>
                            <p>
                                Please feel free to contact me personally; my information is listed{" "}
                                <a href="#contact">below</a>.
                            </p>
                        </Container>
                    </GridColumn>
                </Grid>
            </ContentSection>
        );
    }
}