import React from "react";
import ContentHeader from "./ContentHeader";

import { Container, Segment } from "semantic-ui-react";

export default class ContentSection extends React.PureComponent<{ id: string; icon: string; title: string }> {
    public displayName = "Section";

    public render() {
        return (
            <Segment className="basic vertical stripe" id={this.props.id}>
                <Container>
                    <ContentHeader icon={this.props.icon} title={this.props.title} />
                    {this.props.children}
                </Container>
            </Segment>
        );
    }
}
