CREATE TABLE IF NOT EXISTS listing_photos (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	listing_id uuid NOT NULL REFERENCES listings(id) ON DELETE CASCADE,
	url text NOT NULL,
	sort_order smallint DEFAULT 0,
	created_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_listing_photos_listing_id ON listing_photos (listing_id)