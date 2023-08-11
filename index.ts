require("dotenv").config()
import express,{Request, Response, NextFunction} from 'express';
import morgan from "morgan";
import cors from "cors";
import helmet from "helmet";
import hpp from "hpp";
// import { Routes } from "./routes"
// import { globalErrorHandler } from "../src/middlewares/error"
const {appDataSource} = require("./src/models/dataSource")

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan("dev"));
app.use(cors());
app.use(helmet());
app.use(hpp());

app.get('/ping', (req:Request, res:Response, next:NextFunction) => {
    res.send('pong');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
	appDataSource
	.initialize()
	.then(() => {
		console.log("Data Source has been initialized!")
	})
	.catch((err: any) => {
		console.error("Error during Data Source initialization:", err)
	});
    console.log(`
        #############################################
        🛡️ Server listening on port: ${PORT}🛡️
        #############################################  
    `);
})