import React, { useEffect, useState } from "react";
import { Helmet } from "react-helmet";
import H1 from "../../components/h1";
import AuthContainer from "../../components/pages/home/AuthContainer";

export default function Home() {
    return (
        <>
            <Helmet>
                <title>ShinobiLand - Kezdőlap</title>
            </Helmet>
            <H1>Kezdőlap</H1>
            <main>
                <p>Ez a Naruto MMORPG Online játék a Naruto Anime sorozat egy fanoldala, ahol próbáljuk visszaadni az Anime nyújtotta élményt egy kattintós játékon keresztül, kisebb játékélménybeli változásokkal és átalakításokkal.</p>
                <p>Ahhoz hogy el tudd kezdeni a játékot- először regisztrálnod kell, utána bejelentkezned, majd egy karaktert létrehoznod. Ne aggódj, ha csak egy kedvenc karaktered van, itt esélyt kapsz arra hogy akár 3 karakterrel is játszhatsz egyszerre!</p>
                <AuthContainer />
                <p>Még ennyi sem elég? Tekintsd meg kis montázs gyűjteményünkben weboldalunk tartalmát, mely által döntési lehetőséget hagyunk karakter létrehozásához új játékosainknak.</p>
                <p>Készen állsz a kihívásra?</p>
            </main>
        </>
    )
}