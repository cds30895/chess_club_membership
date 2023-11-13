#### Chess Club Membership
Author: Chris Smith
Description: This app is intended to manage membership information for a chess club with a SQLite database.  It should store member names and contact emails as well as attendance records for meetings.

### Tables and Bridge Tables
## Members
The members table will contain member's first name, last name, and email, as well as a SERIAL type id PRIMARY KEY.

## Meetings
The meetings table will contain the date of the meeting as well as a SERIAL type id PRIMARY KEY

## Members_Meetings
The members_meetings bridge table will contain member_id and meeting_id, FOREIGN KEYed to the id PRIMARY KEY of their respective tables.