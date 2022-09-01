import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import { menuLinks } from "../../constants/menu-links";
import MenuList from "./access/MenuList";

export default function SiteMenu() {
	const [menuH, setMenuH] = useState(null);

	const getMenuHeight = () => {
		const desktopMenu = document.getElementById("desktop-menu");
		const elem = desktopMenu?.getBoundingClientRect();
		const half = elem?.height / 2;
		setMenuH(half);
	};

	useEffect(() => {
		getMenuHeight();
	}, [menuH]);

	const [position, setPosition] = useState(window.pageYOffset);
	const [visible, setVisible] = useState(true);
	useEffect(() => {
		const handleScroll = () => {
			let moving = window.pageYOffset;

			setVisible(position > moving);
			setPosition(moving);
		};
		window.addEventListener("scroll", handleScroll);
		return () => {
			window.removeEventListener("scroll", handleScroll);
		};
	});

	const cls = visible ? "visible-elem" : "hidden-elem";

	return (
		<nav
			id="desktop-menu"
			style={{
				top: "calc(50% - " + menuH + "px",
			}}
			className={cls}>
			<section className="desktop-menu">
				<ul className="desktop-menu-ul">
					<MenuList array={menuLinks} />
				</ul>
			</section>
		</nav>
	);
}
