import React from "react";
import { footerLinks } from "../../constants/menu-links";
import FooterList from "./access/FooterList";
import SwitchTheme from "./access/SwitchTheme";

export default function Footer() {

    const date = new Date();

    return (
        <footer>
            <section className="footer-container">
                <ul>
                    <FooterList array={footerLinks} />
                </ul>
                <ul>
                    <li>KÓD</li>
                </ul>
                <ul>
                    <li><SwitchTheme /></li>
                    <li>{date.getFullYear()} - rajongók által készített weboldal.</li>
                    <li>Minden karakter és illusztráció jogos tulajdonosa Kishimoto Masashi.</li>
                </ul>
            </section>
        </footer>
    )
}