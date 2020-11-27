# Prisma Test

## Installation

```ts
$ yarn add -D @prisma/cli typescript ts-node @types/node
```

## Quickstart

1. Run the migration manually in `prisma/schema.sql`.
2. Run `npx prisma introspect`
3. Run `npx prisma generate`
4. Setup the client at `index.ts`
5. npx ts-node index.ts

## Thoughts

- when running prisma command, there's a warning that the current version is deprecated. The steps to upgrade does not work
- naming convention for database is using `PascalCase` for table name, and `camelCase` for column name. Should be fine if it's standardized, but existing tables might not benefit from it.
