BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "message_attachments" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message_attachments" (
    "id" bigserial PRIMARY KEY,
    "itemId" bigint NOT NULL,
    "qty" bigint NOT NULL,
    "messageId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "message_attachments"
    ADD CONSTRAINT "message_attachments_fk_0"
    FOREIGN KEY("itemId")
    REFERENCES "item_infos"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "message_attachments"
    ADD CONSTRAINT "message_attachments_fk_1"
    FOREIGN KEY("messageId")
    REFERENCES "messages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR mln
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mln', '20250707060604173', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250707060604173', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
