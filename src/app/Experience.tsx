import { withPrefix } from "gatsby";
import React from "react";
import { Grid, Header, Image, Item, List, Progress, Segment, SemanticCOLORS } from "semantic-ui-react";
import ContentSection from "./ContentSection";
import MSList from "./MSList";

const ProgressType: SemanticCOLORS[] = [
    "red",
    "orange",
    "yellow",
    "olive",
    "green",
    "teal",
    "blue",
    "violet",
    "purple",
    "pink",
];
const Tools = ["VSCode", "Git", "Webpack", "Node", "Docker", "Circle", "Conjure", "TS-AST"];

const TechincalItems = [{ name: "Typescript/React", progress: 95 }, { name: "Java", progress: 70 }];
const ExperienceItems = [
    {
        url: "https://www.palantir.com",
        logoName: "palantir.png",
        name: "Palantir Technologies",
        location: "New York, NY | London, UK",
        position: "Software Engineer",
        time: "June 2016 - Present",
        description: [
            "Worked on the initial implementation and methods for providing an object and relational platform for datasets",
            "Created an analytical application for investigative and decision based workflows for operational users",
            "Designed a plugin architecture for deployments to create customer specific plugins to inject into our applications",
            "Developed a tool for managing manufacturing defects and running defect analysis / root cause analysis (RCA)",
            "Contributed to building systems and methods for determining relationships between defects",
            "Built some of the initial custom applications during the early development of our aviation vertical",
        ],
    },
    {
        url: "https://www.palantir.com",
        logoName: "palantir.png",
        name: "Palantir Technologies",
        location: "Palo Alto, CA",
        position: "Software Engineer Intern",
        time: "Summer 2015",
        description: [
            <>
                Worked on adding new improvements and features to Palantir's{" "}
                <a href="https://www.palantir.com/solutions/trader-oversight/">trader oversight solution</a>
            </>,
            "Developed a new understanding of Postgres Full Text Search, large-scale web applications, build automation tools, and dependency management",
        ],
    },
    {
        url: "https://www.dropbox.com",
        logoName: "dropbox.png",
        name: "Dropbox",
        location: "Berkeley, CA",
        position: "Part-Time Extern",
        time: "Spring 2015",
        description: [
            "Conducted research on students to develop insights about student technology usage and trends",
            "Acquired great insight into the tech world and furthered developed my research capabilities with real business implications",
        ],
    },
    // {
    //     url: "https://www.palantir.com",
    //     logoName: "palantir.png",
    //     name: "Palantir Technologies",
    //     location: "Palo Alto, CA",
    //     position: "Product Quality Engineer Intern",
    //     time: "Summer 2014",
    //     description: [
    //         "Developed new management tools to deploy a subset of Palantir software with increased reliability and efficiency",
    //         "Gained large project experience, increased Java/Shell skills, as well as team collaboration and other proficiencies",
    //         "Created tests plans and implemented back end (BE) automation tests to ensure project stability from code changes",
    //     ],
    // },
    {
        url: "http://www.redbull.com/us/en",
        logoName: "redbull.png",
        name: "Red Bull",
        location: "Berkeley, CA",
        position: "Student Brand Manager",
        time: "Spring 2014 - Summer 2015",
        description: [
            "Infused Red Bull into the student lifestyle through co-ordination of projects on university campus and support of student events",
            "Developed and maintain relationships and support of key university bodies and individuals",
            "Seeked opportunities to develop Red Bull’s brand profile, image and credibility on and around campus within the student market",
        ],
    },
    // {
    //     url: "http://www.ucdenver.edu/academics/colleges/medicalschool/centers/WebbWaring/Pages/WagnerLab.aspx",
    //     logoName: "cu_logo.png",
    //     name: "Webb-Warring Lab of Immunology",
    //     location: "University of Colorado, Denver",
    //     position: "Immunology Intern",
    //     time: "Summer 2011",
    //     description: [
    //         "Worked with a team to find a cure for Type 1 Diabetes in mice by examining the roles of auto-reactive T-cells in diabetes",
    //         "Studied APC's, CD4's, and V-alpha chains (1-19) to developed a correlation between age of mice and beta-islet configuration",
    //         "Analyzed gel electrophoresis samples to separate protein solution to determine V-alpha chains present in mice pancreas",
    //     ],
    // },
];

export default class Experience extends React.Component {
    public displayName = "Experience";

    public render() {
        return (
            <ContentSection id="experience" title="Experience" icon="line chart">
                <Grid className="stackable vertically padded">
                    {ExperienceItems.map((item, i) => {
                        return <ExperienceItem data={item} key={i} />;
                    })}
                    <Grid.Column className="sixteen wide">
                        <Segment className="piled">
                            <Header>Technical</Header>
                            {TechincalItems.map((item, i) => {
                                return (
                                    <TechincalItem data={item} color={ProgressType[i % ProgressType.length]} key={i} />
                                );
                            })}
                            <Header className="tiny">Tools</Header>
                            <List className="horizontal bulleted link">
                                {Tools.map((item, i) => {
                                    return <Item key={i}>{item}</Item>;
                                })}
                            </List>
                        </Segment>
                    </Grid.Column>
                </Grid>
            </ContentSection>
        );
    }
}

class ExperienceItem extends React.PureComponent<{ data: any }> {
    public displayName = "ExperienceItem";

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

class TechincalItem extends React.PureComponent<{ data: any; color: SemanticCOLORS }> {
    public displayName = "TechincalItem";

    public render() {
        return (
            <Grid>
                <Grid.Column className="three wide">{this.props.data.name}</Grid.Column>
                <Grid.Column className="thirteen wide">
                    <Progress color={this.props.color} percent={this.props.data.progress} />
                </Grid.Column>
            </Grid>
        );
    }
}
