import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  await prisma.user.create({
    data: {
      name: "John",
      email: "john@mail.com",
      posts: {
        create: { title: "Hello World" }
      },
      profile: {
        create: { bio: "I like turtles" }
      }
    }
  });

  const allUsers = await prisma.user.findMany({
    include: {
      posts: true,
      profile: true
    }
  });
  console.log(allUsers);
}

main()
  .catch(console.error)
  .finally(async () => {
    await prisma.$disconnect();
  });
