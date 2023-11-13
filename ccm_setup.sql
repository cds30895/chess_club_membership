-- TABLES

CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE
);

CREATE TABLE meetings (
    id SERIAL PRIMARY KEY,
    date_of_meeting DATE DEFAULT CURRENT_DATE NOT NULL,
);


-- BRIDGE TABLES

CREATE TABLE members_meetings (
    member_id INT NOT NULL,
    meeting_id INT NOT NULL,
    PRIMARY KEY (member_id, meeting_id)
);


-- FOREIGN KEYS

ALTER TABLE members_meetings
ADD CONSTRAINT fk_members_meetings_members
FOREIGN KEY (member_id)
REFERENCES members (id);

ALTER TABLE members_meetings
ADD CONSTRAINT fk_members_meetings_meetings
FOREIGN KEY (meeting_id)
REFERENCES meetings (id);