import React from "react";
import { Icon, Item, List, ListContent } from "semantic-ui-react";

export default class MSList extends React.Component<{ items: any[] }> {
    public displayName = "MSList";

    public render() {
        return (
            <List className="relaxed">
                {this.props.items.map((d, i) => (
                    <Item key={i}>
                        <Icon className="plus teal" />
                        <ListContent>
                            <div dangerouslySetInnerHTML={{ __html: d }} />
                        </ListContent>
                    </Item>
                ))}
            </List>
        );
    }
}
