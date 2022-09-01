import React from "react";
import { Link } from "react-router-dom";

export default function SubmenuList(props) {
	return (
		<ul>
			{props.array?.map((value) => (
				<Link key={value.id} to={value.to}>
					{value.content}
				</Link>
			))}
		</ul>
	);
}
