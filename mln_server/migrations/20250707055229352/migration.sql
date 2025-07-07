BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "item_infos" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message_attachments" (
    "id" bigserial PRIMARY KEY,
    "itemId" bigint NOT NULL,
    "qty" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message_bodies" (
    "id" bigserial PRIMARY KEY,
    "subject" text NOT NULL,
    "text" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message_table_attachments" (
    "id" bigserial PRIMARY KEY,
    "templateId" bigint NOT NULL,
    "itemId" bigint NOT NULL,
    "qty" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message_templates" (
    "id" bigserial PRIMARY KEY,
    "bodyId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "messages" (
    "id" bigserial PRIMARY KEY,
    "senderId" bigint NOT NULL,
    "reipientId" bigint NOT NULL,
    "bodyId" bigint NOT NULL
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

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "message_table_attachments"
    ADD CONSTRAINT "message_table_attachments_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "message_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "message_table_attachments"
    ADD CONSTRAINT "message_table_attachments_fk_1"
    FOREIGN KEY("itemId")
    REFERENCES "item_infos"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "message_templates"
    ADD CONSTRAINT "message_templates_fk_0"
    FOREIGN KEY("bodyId")
    REFERENCES "message_bodies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "messages"
    ADD CONSTRAINT "messages_fk_0"
    FOREIGN KEY("senderId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "messages"
    ADD CONSTRAINT "messages_fk_1"
    FOREIGN KEY("reipientId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "messages"
    ADD CONSTRAINT "messages_fk_2"
    FOREIGN KEY("bodyId")
    REFERENCES "message_bodies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR mln
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mln', '20250707055229352', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250707055229352', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
