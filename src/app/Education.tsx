import { withPrefix } from "gatsby";
import React from "react";
import { Grid, Header, Image, Segment } from "semantic-ui-react";
import ContentSection from "./ContentSection";
import MSList from "./MSList";

interface IItem {
    url: string;
    logoName: string;
    name: string;
    location: string;
    position: string;
    time: string;
    description: React.ReactNode[];
}

const EducationItems: IItem[] = [
    {
        url: "http://www.berkeley.edu",
        logoName: "cal_logo.gif",
        name: "University of California, Berkeley",
        location: "Berkeley, CA",
        position: "Double Major: Computer Science & Mathematics",
        time: "Fall 2012 - Spring 2015",
        description: [
            "Technical GPA: 3.67/4.0",
            <>
                <i>Coursework:</i> Linear Algebra and Differential Equations (54), Intro to Analysis (104), Advanced
                Linear Algebra (110), Intro to Abstract Algebra (113), Structure and Interpretation of Computer Programs
                (61A), Data Structures (61B), Machine Structures (61C), Discrete Mathematics and Probability Theory
                (70), Efficient Algorithms and Intractable Problems (170), iOS Game Development (198), Intro to Digital
                Electronics (42), Engineering Entrepreneurship (IEOR190), Engineering Parallel Software (194),
                Artificial Intelligence (188), Computer Security (161), Operating Systems and System Programming (162),
                Numerical Analysis (128A), Databases (186), Complex Analysis (185), Machine Learning (189)
            </>,
        ],
    },
];

export default class Education extends React.Component {
    public displayName = "Education";

    public render() {
        return (
            <ContentSection id="education" title="Education" icon="student">
                <Grid className="stackable vertically padded">
                    {EducationItems.map((item, i) => (
                        <EducationItem data={item} key={i} />
                    ))}
                </Grid>
            </ContentSection>
        );
    }
}

class EducationItem extends React.Component<{ data: IItem }> {
    public displayName = "EducationItem";

    public render() {
        return (
            <Grid.Row>
                <Grid.Column className="three wide">
                    <a href={this.props.data.url}>
                        <Image
                            className="fluid rounded centered"
                            alt={this.props.data.logoName}
                            src={withPrefix(`images/companies/${this.props.data.logoName}`)}
                        />
                    </a>
                </Grid.Column>
                <Grid.Column className="thirteen wide">
                    <Segment className="basic clearing">
                        <Header className="right floated small">{this.props.data.time}</Header>
                        <Header className="left floated large">
                            {this.props.data.name}
                            <span className="at-symbol"> @ </span>
                            <span className="location">{this.props.data.location}</span>
                            <div className="sub header">{this.props.data.position}</div>
                        </Header>
                    </Segment>
                    <MSList items={this.props.data.description} />
                </Grid.Column>
            </Grid.Row>
        );
    }
}
