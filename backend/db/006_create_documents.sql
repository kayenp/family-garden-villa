CREATE TABLE IF NOT EXISTS documents (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	application_id uuid NOT NULL REFERENCES applications(id) ON DELETE CASCADE,
	doc_type text NOT NULL, -- government_id | pay_stub | other --
	file_name text NOT NULL,
	storage_path text NOT NULL,
	mime_type text NOT NULL,
	created_at timestamptz DEFAULT now()
)

CREATE INDEX IF NOT EXISTS idx_documents_application_id ON documents (application_id)