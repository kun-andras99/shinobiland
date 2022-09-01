import React, { useEffect, useState } from "react";
import { useDispatch } from "react-redux";
import { authActions } from "../../redux/auth-slice";
// import H1 from "../../components/h1";

export default function Logout() {
	const dispatch = useDispatch();
	const handleLogout = (e) => {
		e.preventDefault();
		dispatch(authActions.logout());
	};
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

	const cls = visible ? "visible-logout" : "hidden-logout";
	return (
		<>
			<button className={"logout-button " + cls} onClick={handleLogout}>
				<h2>↪</h2>
			</button>
		</>
	);
}
