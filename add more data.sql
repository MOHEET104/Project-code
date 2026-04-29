USE basketball_db;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE matches;
TRUNCATE TABLE players;
TRUNCATE TABLE teams;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO teams (team_name, city, conference, wins, losses) VALUES
('Lakers', 'Los Angeles', 'Western', 25, 15),
('Celtics', 'Boston', 'Eastern', 30, 10),
('Bulls', 'Chicago', 'Eastern', 20, 20),
('Warriors', 'Golden State', 'Western', 28, 12),
('Heat', 'Miami', 'Eastern', 22, 18),
('Nets', 'Brooklyn', 'Eastern', 18, 22),
('Bucks', 'Milwaukee', 'Eastern', 26, 14),
('Suns', 'Phoenix', 'Western', 24, 16),
('Nuggets', 'Denver', 'Western', 27, 13),
('Clippers', 'Los Angeles', 'Western', 21, 19);

INSERT INTO players (player_name, team_id, position, jersey_number, points_per_game, assists_per_game, rebounds_per_game) VALUES
('LeBron James', 1, 'Forward', 23, 28.5, 8.2, 7.8),
('Anthony Davis', 1, 'Center', 3, 25.1, 3.1, 12.5),
('Austin Reaves', 1, 'Guard', 15, 15.9, 5.5, 4.3),
('Jayson Tatum', 2, 'Forward', 0, 27.3, 4.5, 8.1),
('Jaylen Brown', 2, 'Guard', 7, 23.4, 3.6, 5.5),
('Al Horford', 2, 'Center', 42, 12.1, 2.8, 6.9),
('Zach LaVine', 3, 'Guard', 8, 24.8, 4.2, 4.6),
('DeMar DeRozan', 3, 'Forward', 11, 21.5, 4.7, 4.1),
('Nikola Vucevic', 3, 'Center', 9, 17.8, 3.4, 11.2),
('Stephen Curry', 4, 'Guard', 30, 29.4, 6.1, 5.1),
('Klay Thompson', 4, 'Guard', 11, 21.9, 2.4, 3.9),
('Draymond Green', 4, 'Forward', 23, 8.5, 6.8, 7.2),
('Jimmy Butler', 5, 'Forward', 22, 22.1, 5.3, 5.8),
('Bam Adebayo', 5, 'Center', 13, 19.4, 3.2, 10.4),
('Tyler Herro', 5, 'Guard', 14, 20.8, 4.5, 5.1),
('Mikal Bridges', 6, 'Forward', 1, 19.6, 3.6, 4.5),
('Ben Simmons', 6, 'Guard', 10, 8.2, 6.1, 6.8),
('Giannis Antetokounmpo', 7, 'Forward', 34, 31.1, 5.7, 11.8),
('Damian Lillard', 7, 'Guard', 0, 24.3, 7.4, 4.4),
('Brook Lopez', 7, 'Center', 11, 12.5, 1.8, 5.1),
('Kevin Durant', 8, 'Forward', 35, 27.1, 5.0, 6.6),
('Devin Booker', 8, 'Guard', 1, 27.8, 6.9, 4.5),
('Bradley Beal', 8, 'Guard', 3, 18.2, 5.0, 4.2),
('Nikola Jokic', 9, 'Center', 15, 26.4, 9.0, 12.4),
('Jamal Murray', 9, 'Guard', 27, 21.2, 6.5, 4.1),
('Michael Porter Jr', 9, 'Forward', 13, 16.7, 1.9, 7.4),
('Kawhi Leonard', 10, 'Forward', 2, 23.7, 3.6, 6.1),
('Paul George', 10, 'Forward', 13, 22.6, 3.8, 5.4),
('James Harden', 10, 'Guard', 1, 16.6, 8.6, 5.1);

INSERT INTO matches (home_team_id, away_team_id, match_date, match_time, home_score, away_score, status, venue) VALUES
(1, 2, '2025-01-15', '19:30:00', 108, 115, 'completed', 'Crypto.com Arena'),
(3, 4, '2025-01-18', '20:00:00', 98, 112, 'completed', 'United Center'),
(5, 6, '2025-01-20', '19:00:00', 105, 99, 'completed', 'Kaseya Center'),
(7, 8, '2025-01-22', '20:30:00', 118, 110, 'completed', 'Fiserv Forum'),
(9, 10, '2025-01-25', '19:00:00', 122, 108, 'completed', 'Ball Arena'),
(2, 7, '2025-01-28', '20:00:00', 130, 118, 'completed', 'TD Garden'),
(4, 1, '2025-02-01', '19:30:00', 115, 109, 'completed', 'Chase Center'),
(8, 9, '2025-02-03', '20:00:00', 104, 118, 'completed', 'Footprint Center'),
(1, 4, '2025-02-20', '20:30:00', 0, 0, 'upcoming', 'Crypto.com Arena'),
(2, 5, '2025-02-22', '19:30:00', 0, 0, 'upcoming', 'TD Garden'),
(3, 6, '2025-02-24', '20:00:00', 0, 0, 'upcoming', 'United Center'),
(7, 9, '2025-02-26', '19:00:00', 0, 0, 'upcoming', 'Fiserv Forum'),
(8, 10, '2025-02-28', '20:30:00', 0, 0, 'upcoming', 'Footprint Center'),
(1, 7, '2025-03-02', '19:30:00', 0, 0, 'upcoming', 'Crypto.com Arena'),
(4, 2, '2025-03-05', '20:00:00', 0, 0, 'upcoming', 'Chase Center'),
(5, 9, '2025-03-08', '19:00:00', 0, 0, 'upcoming', 'Kaseya Center');