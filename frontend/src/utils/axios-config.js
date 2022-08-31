import axios from 'axios';

const api = axios.create({
    baseURL: 'http://localhost:5000/api',
    headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json'
    },
});

const api_f = axios.create({
    baseURL: 'http://localhost:3000',
    headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json'
    },
});

export { api, api_f };