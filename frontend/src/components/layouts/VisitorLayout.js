import React, { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import { Outlet } from "react-router-dom";
import Logout from "../../pages/profile/Logout";
import Footer from "../footer";
import ScrollToTop from "../scroll/Top";
import SiteMenu from "../site-menu/index";

export default function VisitorLayout(props) {
	const isLoggedIn = useSelector((state) => state.auth.isLoggedIn);
	return (
		<>
			{isLoggedIn && (
				<>
					<SiteMenu />
					<Logout />
				</>
			)}
			<ScrollToTop />
			<Outlet />
			{props.children}
			<Footer />
		</>
	);
}
