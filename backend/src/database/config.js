const { Sequelize } = require("sequelize");

const sequelize = new Sequelize({
    host: "localhost",
    username: "root",
    password: "",
    port: 3306,
    database: "shinobiland",
    dialect: "mysql",
    define: {
        underscored: false,
        freezeTableName: false,
        charset: 'utf8',
        dialectOptions: {
            collate: 'utf8_general_ci'
        },
    },
    timestamps: false,
    sync: { force: true },
    pool: {
        max: 5,
        idle: 30000,
        acquire: 60000,
    }
})

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

async function connect() {
    try {
        await sequelize.authenticate();
        console.log('OK');
    } catch (error) {
        console.error('Not connect: ', error);
    }
}

connect();

module.exports = db;