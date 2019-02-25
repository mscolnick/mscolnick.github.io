import React from "react";
import ContentSection from "./ContentSection";

import { Embed, Grid } from "semantic-ui-react";

export default class Extras extends React.Component {
    public displayName = "Extras";

    public render() {
        return (
            <ContentSection id="extras" title="Extras" icon="wizard">
                <Grid className="two column centered">
                    <Grid.Column className="ten wide">
                        <Embed url="https://sketchfab.com/models/c2f52cc573354c7bbcd7743133ae77ea/embed" init={true} />
                    </Grid.Column>
                </Grid>
            </ContentSection>
        );
    }
}
