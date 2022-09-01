import React from "react";
import { useDispatch } from "react-redux";
import { authActions } from "../../../../redux/auth-slice";

export default function Login() {
	const dispatch = useDispatch();
	const handleLogin = (e) => {
		e.preventDefault();
		dispatch(authActions.login());
	};
	return (
		<form action="#" id="login-container" onSubmit={handleLogin}>
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
				<input
					id="input"
					type="password"
					name="password"
					placeholder="********"
				/>
			</label>
			<input id="loginput" type="submit" value="Bejelentkezés" />
		</form>
	);
}
