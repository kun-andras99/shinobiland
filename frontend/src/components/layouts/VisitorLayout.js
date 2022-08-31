import React, { useEffect, useState } from "react";
import { Outlet } from "react-router-dom";
// import Logout from "../../pages/profile/Logout";
import Footer from "../footer";
import ScrollToTop from "../scroll/Top";
import SiteMenu from "../site-menu/index";

export default function VisitorLayout(props) {
    const [user, setUser] = useState(() => {
        const saved = localStorage.getItem("user");
        const initialValue = JSON.parse(saved);
        return initialValue || "";
    });
    useEffect(() => {
        localStorage.setItem("user", JSON.stringify(user));
    }, []);
    return (
        <>
            <SiteMenu />
            {/* <Logout /> */}
            <ScrollToTop />
            <Outlet />
            {props.children}
            <Footer />
        </>
    )
}