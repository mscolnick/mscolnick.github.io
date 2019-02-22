import React from "react";
import ContentSection from "./ContentSection";
import MSList from "./MSList";

import { Grid, GridColumn, Header, Segment } from "semantic-ui-react";

interface IItem {
    name: string;
    position: string;
    time: string;
    description: string[];
}

const ExItems: IItem[] = [
    {
        name: "Cal Men’s Club Lacrosse Team",
        position: "MCLA D-1 Student Athlete / Lead Web Designer",
        time: "Fall 2012 - 2015",
        description: [
            "Headed website for a three-month long campaign by the team that had raised over $250,000 in funding",
        ],
    },
    {
        name: "Phi Gamma Delta Fraternity",
        position: "Vice President/Treasurer, Scholarship Chair",
        time: "Fall 2012 - 2015",
        description: [
            "Oversaw and budgeted $150,000 and carried out chapter affairs; Promoted scholarship and organized resume workshops",
        ],
    },
    {
        name: "JDRF (Juvenile Diabetes Research Foundation)",
        position: "Team captain for JDRF",
        time: "Summer 2008 - 2011",
        description: [
            "Raised over $10,000 for JDRF’s Walk to Cure Diabetes and received the Golden Sneaker Award for excellence in fundraising",
        ],
    },
];

export default class Extracurricular extends React.Component {
    public displayName = "Extracurricular";

    public render() {
        return (
            <ContentSection id="involvement" title="Involvement" icon="map">
                <Grid className="one column vertically padded">
                    {Array.from(ExItems).map((item, i) => (
                        <ExtracurricularItem data={item} key={i} />
                    ))}
                </Grid>
            </ContentSection>
        );
    }
}

class ExtracurricularItem extends React.Component<{ data: IItem }> {
    public displayName = "ExtracurricularItem";

    public render() {
        return (
            <GridColumn>
                <Segment className="basic clearing">
                    <Header className="right floated small">{this.props.data.time}</Header>
                    <Header className="left floated large">
                        {this.props.data.name}
                        <div className="sub header">{this.props.data.position}</div>
                    </Header>
                </Segment>
                <MSList items={this.props.data.description} />
            </GridColumn>
        );
    }
}
