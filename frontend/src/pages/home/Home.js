import React from "react";
import { Helmet } from "react-helmet";
import { useSelector } from "react-redux";
import H1 from "../../components/h1";
import AuthContainer from "../../components/pages/home/AuthContainer";

export default function Home() {
	const isLoggedIn = useSelector((state) => state.auth.isLoggedIn);
	return (
		<>
			<Helmet>
				<title>ShinobiLand - Kezdőlap</title>
			</Helmet>
			<H1>Kezdőlap</H1>
			<main>
				<p>
					Ez a Naruto MMORPG Online játék a Naruto Anime sorozat egy
					fanoldala, ahol próbáljuk visszaadni az Anime nyújtotta
					élményt egy kattintós játékon keresztül, kisebb
					játékélménybeli változásokkal és átalakításokkal.
				</p>
				<p>
					Ahhoz hogy el tudd kezdeni a játékot- először regisztrálnod
					kell, utána bejelentkezned, majd egy karaktert létrehoznod.
					Ne aggódj, ha csak egy kedvenc karaktered van, itt esélyt
					kapsz arra hogy akár 3 karakterrel is játszhatsz egyszerre!
				</p>
				{!isLoggedIn && <AuthContainer />}
				{isLoggedIn && (
					<>
						<p>
							Fejleszd karaktered statisztikáit, járd ki az
							akadémiát, eddz, harcolj, küzdj! Szerezz
							lakhelyednek minél több becsületpontot hogy tudjatok
							vásárolni különböző faluvédelmi és támadási
							eszközöket, fejlesszétek falutok statisztikáit,
							menjetek csapat küldetésekre barátaiddal, küzdj meg
							más klántaggal a vérvonal jutsujaikért, alapíts
							klánt a háború kezdetéhez, vásárolj jutsut és
							felszerelést; majd fejleszd azokat hogy minél
							erősebbek legyenek, és egyszerűen legyél te a
							legerősebb Shinobi!
						</p>
					</>
				)}
				<p>
					Még ennyi sem elég? Tekintsd meg kis montázs
					gyűjteményünkben weboldalunk tartalmát, mely által döntési
					lehetőséget hagyunk karakter létrehozásához új
					játékosainknak.
				</p>
				<p>Készen állsz a kihívásra?</p>
			</main>
		</>
	);
}
