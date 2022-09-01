// import { createSelector, createEntityAdapter } from "@reduxjs/toolkit";
// import { apiSlice } from "../api/apiSlice";

// const characterAdapter = createEntityAdapter({
// 	selectId: (character) => character.id,
// });

// const initialState = characterAdapter.getInitialState();

// export const extendedApiSLice = apiSlice.injectEndpoints({
// 	endpoints: (builder) => ({
// 		getGameCharacters: builder.query({
// 			query: () => "/users",
// 			transformResponse: (responseData) => {
// 				let min = 1;
// 				const loadedGameCharacters = responseData.map((character) => {
// 					return character;
// 				});
// 				return characterAdapter.setAll(
// 					initialState,
// 					loadedGameCharacters
// 				);
// 			},
// 			providesTags: (result, error, arg) => [
// 				{
// 					type: "Character",
// 					id: "LIST",
// 				},
// 				...result.ids.map((id) => ({ type: "Character", id })),
// 			],
// 		}),
// 	}),
// });

// export const { useGetCharactersQuery } = extendedApiSLice;

// export const selectCharactersResult =
// 	extendedApiSLice.endpoints.getGameCharacters.select();

// const selectCharactersData = createSelector(
// 	selectCharactersResult,
// 	(characterResult) => characterResult.data
// );

// export const { selectAll: selectAllCharacters } = characterAdapter.getSelectors(
// 	(state) => selectCharactersData(state) ?? initialState
// );
