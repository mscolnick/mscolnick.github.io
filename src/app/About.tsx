import { withPrefix } from "gatsby";
import React from "react";
import ContentSection from "./ContentSection";

import { Container, Grid, GridColumn, Image } from "semantic-ui-react";

export default class About extends React.Component {
    public displayName = "About";

    public render() {
        return (
            <ContentSection id="about" title="About Me" icon="user">
                <Grid verticalAlign={"middle"} columns={2} padded={"vertically"} stackable={true}>
                    <GridColumn width={4}>
                        <Image
                            circular={true}
                            bordered={true}
                            centered={true}
                            size="medium"
                            alt="mscolnick"
                            src={withPrefix("images/myles-bw.jpeg")}
                        />
                    </GridColumn>
                    <GridColumn width={12}>
                        <Container textAlign={"center"}>
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
