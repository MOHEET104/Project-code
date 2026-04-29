-- Create the database
CREATE DATABASE basketball_db;

-- Use this database
USE basketball_db;

-- Create Teams table
CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    conference VARCHAR(50),
    wins INT DEFAULT 0,
    losses INT DEFAULT 0,
    logo_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Players table
CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    team_id INT,
    position VARCHAR(50),
    jersey_number INT,
    height VARCHAR(20),
    weight VARCHAR(20),
    nationality VARCHAR(100),
    points_per_game DECIMAL(4,1) DEFAULT 0,
    assists_per_game DECIMAL(4,1) DEFAULT 0,
    rebounds_per_game DECIMAL(4,1) DEFAULT 0,
    photo_url VARCHAR(255),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- Create Matches table
CREATE TABLE matches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    match_date DATE NOT NULL,
    match_time TIME NOT NULL,
    home_score INT DEFAULT 0,
    away_score INT DEFAULT 0,
    status VARCHAR(20) DEFAULT 'upcoming',
    venue VARCHAR(100),
    FOREIGN KEY (home_team_id) REFERENCES teams(id),
    FOREIGN KEY (away_team_id) REFERENCES teams(id)
);

-- Insert sample teams data
INSERT INTO teams (team_name, city, conference, wins, losses) VALUES
('Lakers', 'Los Angeles', 'Western', 25, 15),
('Celtics', 'Boston', 'Eastern', 30, 10),
('Bulls', 'Chicago', 'Eastern', 20, 20),
('Warriors', 'Golden State', 'Western', 28, 12),
('Heat', 'Miami', 'Eastern', 22, 18),
('Nets', 'Brooklyn', 'Eastern', 18, 22);

-- Insert sample players data
INSERT INTO players (player_name, team_id, position, jersey_number, points_per_game, assists_per_game, rebounds_per_game) VALUES
('LeBron James', 1, 'Forward', 23, 28.5, 8.2, 7.8),
('Anthony Davis', 1, 'Center', 3, 25.1, 3.1, 12.5),
('Jayson Tatum', 2, 'Forward', 0, 27.3, 4.5, 8.1),
('Jaylen Brown', 2, 'Guard', 7, 23.4, 3.6, 5.5),
('Zach LaVine', 3, 'Guard', 8, 24.8, 4.2, 4.6),
('Stephen Curry', 4, 'Guard', 30, 29.4, 6.1, 5.1),
('Klay Thompson', 4, 'Guard', 11, 21.9, 2.4, 3.9),
('Jimmy Butler', 5, 'Forward', 22, 22.1, 5.3, 5.8);

-- Insert sample matches data
INSERT INTO matches (home_team_id, away_team_id, match_date, match_time, home_score, away_score, status, venue) VALUES
(1, 2, '2025-02-01', '19:30:00', 108, 115, 'completed', 'Crypto.com Arena'),
(3, 4, '2025-02-03', '20:00:00', 98, 112, 'completed', 'United Center'),
(5, 6, '2025-02-05', '19:00:00', 105, 99, 'completed', 'FTX Arena'),
(1, 4, '2025-02-10', '20:30:00', 0, 0, 'upcoming', 'Crypto.com Arena'),
(2, 5, '2025-02-12', '19:30:00', 0, 0, 'upcoming', 'TD Garden'),
(3, 6, '2025-02-14', '20:00:00', 0, 0, 'upcoming', 'United Center');