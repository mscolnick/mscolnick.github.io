import { withPrefix } from "gatsby";
import React from "react";

import { Container, Icon, Item, Menu, Segment } from "semantic-ui-react";

const Sections = ["About", "Education", "Experience", "Projects", "Involvement", "Links", "Contact"];

export default class Navigation extends React.Component {
    public displayName = "Navigation";

    public render() {
        return (
            <Segment className="vertical basic center aligned">
                <Container>
                    <Menu className="large secondary">
                        <a className="toc item">
                            <Icon className="sidebar" />
                        </a>
                        {Sections.map((section, i) => (
                            <Item type="link" key={i} href={`#${section.toLowerCase()}`}>
                                {section}
                            </Item>
                        ))}
                        <div className="right menu">
                            <Item>
                                <a className="ui button blue" href={withPrefix("resume_tex/resume.pdf")}>
                                    <i className="file pdf outline icon" /> Print
                                </a>
                            </Item>
                        </div>
                    </Menu>
                </Container>
            </Segment>
        );
    }
}