CREATE TABLE IF NOT EXISTS listing_photos (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	listing_id uuid NOT NULL REFERENCES listings(id) ON DELETE CASCADE,
	url text,
	sort_order smallint,
	created_at timestamptz DEFAULT now()
)