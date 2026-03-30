CREATE TABLE IF NOT EXISTS application_events (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	application_id uuid NOT NULL REFERENCES applications(id) ON DELETE CASCADE,
	manager_id uuid NOT NULL REFERENCES users(id) ON DELETE SET NULL,
	from_status text,
	to_status text NOT NULL,
	note text,
	created_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_application_events_application_id ON application_events (application_id)