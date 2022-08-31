import React, { useEffect, useState } from "react";
import { Helmet } from "react-helmet";
import H1 from "../../components/h1";
import {api} from "../../utils/axios-config";

export default function CharacterRanklist() {
    const [characters, setCharacters] = useState([]);

    useEffect(() => {
        api.get('/users', {
            'Content-Type': 'application/json'
        }).then(function (response) {
            setCharacters(response.data.data);
        });
    }, []);

    console.log(characters);
    
    return (
        <>
            <Helmet>
                <title>ShinobiLand - Karakter ranklista</title>
            </Helmet>
            <H1>Karakter ranklista</H1>
            <main>
                    {characters.map((character, key) => {
                        return (
                            <div key={key}>{character.username}</div>
                        )
                    })}
            </main>
        </>
    )
}
                