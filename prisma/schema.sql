CREATE TABLE "public"."user" (
	id int GENERATED ALWAYS AS IDENTITY,
	name text,
	email text,

	PRIMARY KEY (id),
	UNIQUE (email)
);

CREATE TABLE "public"."Post" (
	id int GENERATED ALWAYS AS IDENTITY,
	title text NOT NULL,
	"createdAt" timestamptz NOT NULL DEFAULT now(),
	content text,
	published boolean NOT NULL DEFAULT false,
	"authorId" int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY ("authorId") REFERENCES "public"."User"(id)
);

CREATE TABLE "public"."Profile" (
	id int GENERATED ALWAYS AS IDENTITY,
	bio text,
	"userId" int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY ("userId") REFERENCES "public"."User"(id)
);
