CREATE TABLE IF NOT EXISTS neighborhoods (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	name text NOT NULL UNIQUE,
	slug text NOT NULL UNIQUE,
	description text NULL,
	highlights text[],
	photo_url text,
	map_embed_url text,
	created_at timestamptz 
);

CREATE INDEX IF NOT EXISTS idx_neighborhoods_slug ON neighborhoods (slug);