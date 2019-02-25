import React from "react";
import { Divider, HeaderContent, Icon } from "semantic-ui-react";

export default class ContentHeader extends React.PureComponent<{ icon: string; title: string }> {
    public displayName = "ContentHeader";

    public render() {
        return (
            <Divider horizontal={true} className="huge header">
                <Icon className={`${this.props.icon}`} />
                <HeaderContent>{this.props.title}</HeaderContent>
            </Divider>
        );
    }
}
