-- Insert records into the issues table
INSERT INTO issues (task_id, description, category, created_date, status) VALUES
('T23465', 'System outage in zone 1', 'Infrastructure', '2024-05-01', 'Closed'),
('T23468', 'Incorrect data on dashboard', 'Data Quality', '2024-05-03', 'Open'),
('T23475', 'Delay in daily ETL process', 'ETL', '2024-05-04', 'In Progress'),
('T23865', 'Frequent login failures', 'Authentication', '2024-05-06', 'Closed'),
('T23363', 'Missing entries in report', 'Reporting', '2024-05-07', 'Open'),
('T23432', 'Deployment failed to include several backend services causing runtime errors in production.', 'Deployment Error', '2025-05-16', 'Closed'),
('T23168', 'Critical bugs were found in the latest release that slipped through due to missing automated tests.', 'Quality Assurance', '2025-05-27', 'Closed'),
('T23482', 'Inconsistent system behavior across environments traced back to differences in config files', 'Configuration Management', '2025-05-28', 'Open'),
('T23861', 'Generated reports contained invalid values due to data corruption during nightly ETL processes.', 'Data Integrity', '2025-05-05', 'In Progress'),
('T23333', 'Feature development was misaligned with business needs due to lack of early stakeholder feedback.', 'Requirements Gathering', '2025-05-05', 'Closed');

-- Insert records into the analysis table
INSERT INTO analysis (task_id, analysis_id, type_of_analysis, root_cause, resolution, resolution_date) VALUES
('T23465', 'A001', '5 Whys', 'Power supply issue', 'Installed UPS', '2025-05-02'),
('T23468', 'A002', 'Fishbone', 'Wrong join logic in query', 'Fixed join conditions', '2025-05-04'),
('T23475', 'A003', 'Pareto', 'Dependency on external API', 'Added retry mechanism', '2025-05-05'),
('T23865', 'A004', 'Root Cause Tree', 'Session timeout misconfig', 'Increased session timeout', '2025-05-07'),
('T23363', 'A005', '5 Whys', 'Scheduled job skipped', 'Rescheduled job', '2025-05-08'),
('T23432', 'A006', 'Fishbone', 'Incomplete deployment', 'Re-deployed with all components verified', '2025-05-17'),
('T23168', 'A007', 'Pareto', 'Lack of test coverage', 'Added unit and integration tests', '2025-05-29'),
('T23482', 'A008', 'Root Cause Tree', 'Configuration drift', 'Standardized and locked configuration', '2025-06-29'),
('T23861', 'A009', 'Root Cause Tree', 'Data corruption during ETL', 'Implemented checksums and validation', '2025-05-07'),
('T23333', 'A010', 'Root Cause Tree', 'Missing stakeholder input', 'Conducted stakeholder review session', '2025-05-07');
-- Note: The task_id in the analysis table should match the task_id in the issues table
--       to maintain referential integrity.