import React from "react";

export default function H1(props) {
    return (
        <section className="page-header">
            <section className="page-header-line"></section>
            <section className="page-header-scroll">
                <h1>{props.children}</h1>
            </section>
        </section>
    )
}