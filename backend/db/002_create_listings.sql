CREATE TABLE IF NOT EXISTS listings (
	id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	title text NOT NULL,
	address text NOT NULL,
	city text NOT NULL,
	state varchar(2) NOT NULL,
	zip varchar(10) NOT NULL,
	neighborhood_id uuid REFERENCES neighborhoods(id) ON DELETE SET NULL,
	bedrooms smallint NOT NULL,
	bathrooms numeric(3,1) NOT NULL,
	sqft integer,
	rent integer NOT NULL, -- monthly, in cents --
	deposit integer NOT NULL, -- in cents --
	lease_term_months smallint DEFAULT 12,
	available_date date,
	description text, 
	features text[],
	floor_plan_url text,
	status text DEFAULT 'active', -- active | unlisted --
	created_at timestamptz DEFAULT now(),
	updated_at timestamptz DEFAULT now()
)