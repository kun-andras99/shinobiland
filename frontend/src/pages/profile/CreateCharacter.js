import React from "react";
// import { useSelector } from "react-redux";
// import { useGetCharactersQuery } from "../../redux/characters/GameCharacterSlice";
import { Helmet } from "react-helmet";
import H1 from "../../components/h1";

export default function CreateCharacter() {
	// const { isLoading, isSuccess, isError, error } = useGetCharactersQuery();

	// const allGameCharacter = useSelector(allGameCharacter);

	// let content;
	// if (isLoading) {
	// 	content = <p>"betöltés"</p>;
	// } else if (isSuccess) {
	// 	content = allGameCharacter.map((characterId) => (
	// 		<li key={characterId}>{characterId}</li>
	// 	));
	// } else if (isError) {
	// 	content = <p>{error}</p>;
	// }

	return (
		<>
			<Helmet>
				<title>ShinobiLand - Karakter létrehozása</title>
			</Helmet>
			<H1>Karakter létrehozása</H1>
			<main> content </main>
		</>
	);
}
