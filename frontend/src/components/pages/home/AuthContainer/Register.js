import React from "react";

export default function Register() {
    return (
        <form action="#" id="register-container">
            <label>
                <input id="input" type="text" name="username" placeholder="Felhasználónév" />
            </label>
            <label>
                <input id="input" type="text" name="nickname" placeholder="Nicknév" />
            </label>
            <label>
                <input id="input" type="email" name="email" placeholder="E-mail cím" />
            </label>
            <label>
                <input id="input" type="password" name="password" placeholder="********" />
            </label>
            <label>
                <input id="input" type="password" name="repassword" placeholder="***********" />
            </label>
            <input id="reginput" type="submit" value="Regisztráció" />
        </form>
    )
}