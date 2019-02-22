import * as React from "react"
import Body from "../app/Body"
import {MainLayout} from "../layout"

export default class IndexPage extends React.PureComponent<{}, {}> {
  readonly hello = `Hello`
  public render() {
    return (
      <MainLayout>
        <Body />
      </MainLayout>
    )
  }
}
