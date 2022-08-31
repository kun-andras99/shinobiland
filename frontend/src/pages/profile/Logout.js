import React, { useEffect, useState } from "react";
import { Helmet } from "react-helmet";
import { useNavigate } from "react-router-dom";
// import H1 from "../../components/h1";

export default function Logout() {
    const navigate = useNavigate()
    // useEffect(() => {
    //     console.log(navigate);
    //     localStorage.removeItem("name");
    //     localStorage.removeItem("user");
    //     navigate('/');
    // }, []);
    const [position, setPosition] = useState(window.pageYOffset)
    const [visible, setVisible] = useState(true)
    useEffect(() => {
        const handleScroll = () => {
            let moving = window.pageYOffset

            setVisible(position > moving);
            setPosition(moving)
        };
        window.addEventListener("scroll", handleScroll);
        return (() => {
            window.removeEventListener("scroll", handleScroll);
        })
    })

    const cls = visible ? "visible-logout" : "hidden-logout";
    return (
        <>
            <button className={"logout-button " + cls} onClick={() => navigate('/')}>
                <h2>↪</h2>
            </button>
        </>
    )
}