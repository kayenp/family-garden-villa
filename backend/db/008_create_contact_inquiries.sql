CREATE TABLE IF NOT EXISTS contact_inquiries (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	listing_id uuid REFERENCES listings(id) ON DELETE SET NULL,
	first_name text NOT NULL,
	last_name text NOT NULL,
	email text NOT NULL,
	phone text NOT NULL,
	subject text NOT NULL,
	message text NOT NULL,
	created_at timestamptz DEFAULT now()
)