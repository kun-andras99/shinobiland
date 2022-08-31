import React, { useEffect, useState } from "react";
import SubmenuList from "./SubmenuList";

export default function MenuList(props) {
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

    return (
        props.array.map((value) =>
            <li key={value.id}>
                <span role="button">
                    <img src={value.img} alt="" title="" className={value.class} srcSet="" />
                </span>
                <ul className={visible ? value.eng : value.eng + " hide-menu"}>
                    <li>
                        <section className="submenu-container">
                            <h2>{value.content}</h2>
                            <SubmenuList array={value.submenus} />
                        </section>
                    </li>
                </ul>
            </li>
        )
    )
}