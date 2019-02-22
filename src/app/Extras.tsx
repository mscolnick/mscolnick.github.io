import React from "react";
import ContentSection from "./ContentSection";

import { Embed, Grid, GridColumn } from "semantic-ui-react";

export default class Extras extends React.Component {
    public displayName = "Extras";

    public render() {
        return (
            <ContentSection id="extras" title="Extras" icon="wizard">
                <Grid className="two column centered">
                    <GridColumn className="ten wide">
                        <Embed url="https://sketchfab.com/models/c2f52cc573354c7bbcd7743133ae77ea/embed" init={true} />
                    </GridColumn>
                </Grid>
            </ContentSection>
        );
    }
}
