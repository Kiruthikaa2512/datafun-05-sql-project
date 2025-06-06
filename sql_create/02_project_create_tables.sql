-- Create the issues table
CREATE TABLE issues (
    task_id TEXT PRIMARY KEY, -- Prefixed ID as the primary key (e.g., TASK_001)
    description TEXT NOT NULL, -- Issue description on the task (mandatory field)
    category TEXT NOT NULL,         -- Issue Category's on task (optional field)
    created_date INTEGER,         -- Date of task created (mandatory field)
    status TEXT            -- Status of the issue (optional)
);

-- Create the analysis table
CREATE TABLE analysis (
    analysis_id TEXT PRIMARY KEY, -- Prefixed ID as the primary key (e.g., ANALYSIS_001)
    task_id TEXT, -- Foreign key linking to issues
    type_of_analysis TEXT, -- Type of analysis performed (mandatory field)
    root_cause TEXT,    -- Root cause identified (optional field)
    resolution TEXT,    -- Resolution provided (optional field)
    resolution_date TEXT,  -- Date of resolution (optional field)
    FOREIGN KEY (task_id) REFERENCES issues (task_id) -- Relationship with issues
);