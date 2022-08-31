import React from "react";
import { Link, useNavigate } from "react-router-dom";

export default function SubmenuList(props) {
    const navigate = useNavigate();

    const Logout = () => {
        localStorage.clear();
        navigate("/")
    }
    return (
        <ul>
            {
                props.array?.map((value) =>
                    <>
                        <Link key={value.id} to={value.to} >{value.content}</Link>
                    </>
                )
            }
        </ul>
    )
}