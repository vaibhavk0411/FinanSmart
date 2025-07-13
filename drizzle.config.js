export default {
  dialect: "postgresql",
  schema: "./src/utils/schema.jsx",
  out: "./drizzle",
  dbCredentials: {
    url: "postgresql://neondb_owner:npg_M3YEmkep6Bft@ep-bold-wave-a4dfyvaw-pooler.us-east-1.aws.neon.tech/neondb?sslmode=require",
    connectionString:
      "postgresql://neondb_owner:npg_M3YEmkep6Bft@ep-bold-wave-a4dfyvaw-pooler.us-east-1.aws.neon.tech/neondb?sslmode=require",
  },
};