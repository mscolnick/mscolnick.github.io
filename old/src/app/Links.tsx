import React from "react";
import ContentSection from "./ContentSection";

import { List } from "semantic-ui-react";

export default class Links extends React.Component {
    public displayName = "Links";

    public render() {
        return (
            <ContentSection id="links" title="Links" icon="linkify">
                <List>
                    <List.Item>
                        <List.Header>Media</List.Header>
                        <List>
                            <List.Item
                                type="link"
                                href="http://denver.cbslocal.com/2012/08/15/teenage-diabetic-works-to-find-cure/"
                            >
                                <List.Icon name="arrow right" />
                                {`Teenage Diabetic Works To Find Cure For Disease`}
                            </List.Item>
                            <List.Item
                                type="link"
                                href="http://www.bloomberg.com/news/articles/2016-03-22/credit-suisse-cia-funded-palantir-build-joint-compliance-firm"
                            >
                                <List.Icon name="arrow right" />
                                {`Credit Suisse, CIA-Funded Palantir to Target Rogue Bankers`}
                            </List.Item>
                        </List>
                    </List.Item>
                    <List.Item>
                        <List.Header>Works</List.Header>
                        <List>
                            <List.Item type="link" href="https://www.ocf.berkeley.edu/~scolnick/StockAnalysis/">
                                <List.Icon name="arrow right" />
                                {`Stock Analysis`}
                            </List.Item>
                            <List.Item type="link" href="https://datalessapp.github.io/">
                                <List.Icon name="arrow right" />
                                {`Dataless`}
                            </List.Item>
                        </List>
                    </List.Item>
                </List>
            </ContentSection>
        );
    }
}
