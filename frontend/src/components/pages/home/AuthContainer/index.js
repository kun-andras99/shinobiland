import React from "react";
import Register from "./Register";
import Login from "./Login";

export default function AuthContainer() {
    return (
        <section className="auth-container">
            <Login />
            <Register />
            <p>Fejleszd karaktered statisztikáit, járd ki az akadémiát, eddz, harcolj, küzdj! Szerezz lakhelyednek minél több becsületpontot hogy tudjatok vásárolni különböző faluvédelmi és támadási eszközöket, fejlesszétek falutok statisztikáit, menjetek csapat küldetésekre barátaiddal, küzdj meg más klántaggal a vérvonal jutsujaikért, alapíts klánt a háború kezdetéhez, vásárolj jutsut és felszerelést; majd fejleszd azokat hogy minél erősebbek legyenek, és egyszerűen legyél te a legerősebb Shinobi!</p>
        </section>
    )
}