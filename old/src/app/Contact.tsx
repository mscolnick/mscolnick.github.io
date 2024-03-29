import React from "react";
import ContentSection from "./ContentSection";
import MSList from "./MSList";

import { Grid, GridColumn } from "semantic-ui-react";

const SocialItems = [
    { name: "email", link: "mailto:mscolnick@gmail.com" },
    { name: "linkedin", link: "https://www.linkedin.com/in/mscolnick" },
    { name: "github", link: "https://github.com/mscolnick" },
    { name: "quora", link: "http://www.quora.com/Myles-Scolnick" },
    // { name: "twitter", link: "https://twitter.com/TheMylesFiles" },
    // { name: "skype", link: "skype:MylesScolnick?call" },
];

const ContactInfo = [
    <>
        Email: <a href="mailto:mscolnick@gmail.com">mscolnick@gmail.com</a>
    </>,
];

export default class Contact extends React.Component {
    public displayName = "Contact";

    public render() {
        return (
            <ContentSection id="contact" title="Contact" icon="mail">
                <Grid className="two column middle aligned stackable vertically padded">
                    <GridColumn>
                        <MSList items={ContactInfo} />
                    </GridColumn>
                    <GridColumn>
                        {Array.from(SocialItems).map((s, i) => (
                            <a className={`${s.name}-hover social-slide`} href={s.link} key={i} />
                        ))}
                    </GridColumn>
                </Grid>
            </ContentSection>
        );
    }
}
