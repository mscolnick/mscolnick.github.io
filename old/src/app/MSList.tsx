import React from "react";
import { Icon, List } from "semantic-ui-react";

export default class MSList extends React.PureComponent<{ items: React.ReactNode[] }> {
    public displayName = "MSList";

    public render() {
        return (
            <List relaxed={true}>
                {this.props.items.map((d, i) => (
                    <List.Item key={i}>
                        <Icon name="plus" color="teal" />
                        <List.Content>{d}</List.Content>
                    </List.Item>
                ))}
            </List>
        );
    }
}
