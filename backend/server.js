require("dotenv").config();
const express = require("express");
const app = require("./src/app");
const path = require("path");

/**
 * APP ROUTES
 * ----------------------------------------
 */
const userRoute = require("./src/routes/UserRoutes");
app.use("/api", userRoute);

/**
 * DEPLOYMENT
 * ----------------------------------------
 */
__dirname = path.resolve();
if (process.env.NODE_ENV !== "development") {
    const p = path.join(__dirname, 'frontend/build/index.html');
    console.log(p);
    app.use(express.static(path.join(__dirname, 'frontend/build')));

    app.get('*', (req, res) => {
        res.sendFile(path.resolve(__dirname, 'frontend', 'build', 'index.html'))
    })
} else {
    app.get('/', (req, res) => {
        res.send("RUN");
    })
}

/**
 * START APP BASE
 * ----------------------------------------
 */
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Started ${PORT}`);
})