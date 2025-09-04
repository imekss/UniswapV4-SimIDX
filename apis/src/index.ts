import { eq, gte, lte, and, sql, desc } from "drizzle-orm";
import { poolInitialized, poolSwap } from "./db/schema/Listener"; 
import { types, db, App, middlewares } from "@duneanalytics/sim-idx"; 

const { Address } = types;
// const zeroAdress = Address.from("0000000000000000000000000000000000000000");

const app = App.create();
app.use("*", middlewares.authentication);


// app.get("/pool-inits", async (c) => {
//   try {
//     const result = await db
//       .client(c)
//       .select()
//       .from(poolInitialized)
//       .limit(5);

//     return Response.json({
//       result: result,
//     });
//   } catch (e) {
//     console.error("Database operation failed:", e);
//     return Response.json({ error: (e as Error).message }, { status: 500 });
//   }
// });



/**
 * GET /hooks/:hook/pools
 * Query params (all optional): chainId, limit, offset
 * Returns the list of pools initialized with this hook (for discovery).
 */
app.get("/hooks/:hook/pools", async (c) => {
  // const client = db.client(c);
  const hookParam = c.req.param("hook")?.toLowerCase();
  const chainId = c.req.query("chainId");
  const limit = Math.min(parseInt(c.req.query("limit") ?? "50", 10), 500);
  const offset = parseInt(c.req.query("offset") ?? "0", 10);

  if (!hookParam || !/^0x[0-9a-f]{40}$/.test(hookParam)) {
    return Response.json({ error: "Invalid hook address" }, { status: 400 });
    }

  const hookAddr = Address.from(hookParam);

  const whereConditions: any[] = [sql`${poolInitialized.hooks} = ${hookAddr}`];
  if (chainId) whereConditions.push(sql`${poolInitialized.chainId} = ${chainId}`);

  const result = await db.client(c)
    .select({
      id: poolInitialized.id,
      chainId: poolInitialized.chainId,
      currency0: poolInitialized.currency0,
      currency1: poolInitialized.currency1,
      fee: poolInitialized.fee,
      tickSpacing: poolInitialized.tickSpacing,
      sqrtPriceX96: poolInitialized.sqrtPriceX96,
      tick: poolInitialized.tick,
      firstSeenBlock: poolInitialized.blockNumber,
      firstSeenTs: poolInitialized.blockTimestamp,
    })
    .from(poolInitialized)
    .where(and(...whereConditions))
    .orderBy(desc(poolInitialized.blockNumber))
    .limit(limit)
    .offset(offset);

  return Response.json({ result: result });
});


export default app;
