import { eq } from "drizzle-orm";
import { poolInitialized } from "./db/schema/Listener"; 
import { types, db, App, middlewares } from "@duneanalytics/sim-idx"; 


const app = App.create();
app.use("*", middlewares.authentication);

app.get("/*", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(poolInitialized)
      .limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

export default app;
