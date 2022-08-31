import React from "react";
import { Helmet } from "react-helmet";
import { Link } from "react-router-dom";
import H1 from "../../components/h1";

export default function NotFound() {
    return (
        <>
            <Helmet>
                <title>ShinobiLand - 404 - Nem található!</title>
            </Helmet>
            <H1>404 - Nem található</H1>
            <main>
                <p>A keresett oldal nem található</p>
                <p>Vissza a <Link to="/">Kezdőlapra</Link></p>
            </main>
        </>
    )
}