import React from "react";
// import { useLocalStorage } from "../../../../utils/use-local-storage";

export default function Login() {
    // const [user, setUser] = useLocalStorage({ "name": "admin", "role_id": 1 });
    return (
        <form action="#" id="login-container">
            <label>
                <input
                    type="email"
                    id="input"
                    // value={name}
                    // onChange={(e) => setName(e.target.value)}
                    placeholder="e-mail"
                // aria-label="fullname"
                />
                {/* <input id="input" type="email" name="email" placeholder="E-mail cím" /> */}
            </label>
            <label>
                <input id="input" type="password" name="password" placeholder="********" />
            </label>
            <input id="loginput" type="submit" value="Bejelentkezés" />
        </form>
    )
}