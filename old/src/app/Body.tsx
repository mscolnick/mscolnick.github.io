import About from "./About";
import Contact from "./Contact";
import Education from "./Education";
import Experience from "./Experience";
import Extracurricular from "./Extracurricular";
import Extras from "./Extras";
import Footer from "./Footer";
import Links from "./Links";
import Navigation from "./Navigation";
import Projects from "./Projects";

import React from "react";

import { Item, Menu } from "semantic-ui-react";

const SECTIONS = ["About", "Education", "Experience", "Projects", "Involvement", "Links", "Contact"];

export default class Body extends React.Component {
    public displayName = "Body";

    public render() {
        return (
            <div>
                <Menu vertical={true} inverted={true} className="thin sidebar">
                    {SECTIONS.map((section, i) => (
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
                {/* <Extras /> */}
                <Contact />
                <Footer />
            </div>
        );
    }
}
