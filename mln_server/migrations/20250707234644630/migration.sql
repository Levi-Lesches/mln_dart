BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "oauth_clients" (
    "id" bigserial PRIMARY KEY,
    "clientID" text NOT NULL,
    "clientName" text NOT NULL,
    "clientSecret" text NOT NULL,
    "imageUrl" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "oauth_codes" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "authCode" text NOT NULL,
    "clientId" bigint NOT NULL,
    "generatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "oauth_tokens" (
    "id" bigserial PRIMARY KEY,
    "accessToken" text NOT NULL,
    "userId" bigint NOT NULL,
    "clientId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "oauth_codes"
    ADD CONSTRAINT "oauth_codes_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "oauth_codes"
    ADD CONSTRAINT "oauth_codes_fk_1"
    FOREIGN KEY("clientId")
    REFERENCES "oauth_clients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "oauth_tokens"
    ADD CONSTRAINT "oauth_tokens_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "oauth_tokens"
    ADD CONSTRAINT "oauth_tokens_fk_1"
    FOREIGN KEY("clientId")
    REFERENCES "oauth_clients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR mln
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mln', '20250707234644630', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250707234644630', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
