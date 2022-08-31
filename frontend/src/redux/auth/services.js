import axiosConfig from "../../utils/axios-config";

class AuthService {
    async login(username, password) {
        const response = await axiosConfig.post(`signin`, {
            username,
            password
        });
        if (response.data.accessToken) {
            localStorage.setItem("user", JSON.stringify(response.data));
        }
        return response.data;
    }

    logout() {
        localStorage.removeItem("user");
    }

    register(username, nickname, email, password) {
        return axiosConfig.post(`signup`, {
            username,
            nickname,
            email,
            password
        })
    }
}

export default new AuthService();