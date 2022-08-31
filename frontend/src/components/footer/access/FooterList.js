import React from "react";
import { Link } from "react-router-dom";

export default function FooterList(props) {
    return (
        props.array.map((value) =>
            <li key={value.id}>
                <Link to={value.to}>{value.content}</Link>
            </li>
        )
    )
}