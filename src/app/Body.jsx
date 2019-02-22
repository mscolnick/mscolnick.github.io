/*
 * decaffeinate suggestions:
 * DS101: Remove unnecessary use of Array.from
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
import Navigation from "./Navigation"
import Footer from "./Footer"
import About from "./About"
import Education from "./Education"
import Experience from "./Experience"
import Projects from "./Projects"
import Extracurricular from "./Extracurricular"
import Links from "./Links"
import Extras from "./Extras"
import Contact from "./Contact"

import React from "react"

const { Item, Menu } = require("semantic-ui-react");

const Sections = [
  "About",
  "Education",
  "Experience",
  "Projects",
  "Involvement",
  "Links",
  "Contact"
];

export default class Body extends React.Component {
  displayName = "Body";

  render() {
    return (
      <div>
        <Menu className="vertical inverted thin sidebar">
          {Sections.map((section, i) => (
            <Item type="link" key={i} href={`#${section.toLowerCase()}`}>
              {section}
            </Item>
          ))}
        </Menu>
        <Navigation />
        <About />
        <Education />
        <Experience />
        <Projects />
        <Extracurricular />
        <Links />
        <Extras />
        <Contact />
        <Footer />
      </div>
    );
  }
};
