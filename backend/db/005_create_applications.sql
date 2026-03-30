CREATE TABLE IF NOT EXISTS applications (
	(id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	listing_id uuid NOT NULL REFERENCES listings(id) ON DELETE RESTRICT,
	status text DEFAULT 'pending', -- pending | approved | denied --
	manager_notes text),
	
	(first_name text NOT NULL,
	last_name text NOT NULL,
	date_of_birth date NOT NULL,
	phone text NOT NULL,
	email text NOT NULL),

	(current_address text NOT NULL,
	current_city text NOT NULL,
	current_state varchar(2) NOT NULL,
	current_zip varchar(10) NOT NULL,
	residence_duration text NOT NULL,
	current_rent integer NOT NULL, -- in cents --
	landlord_name text NOT NULL,
	landlord_phone text NOT NULL,
	reason_for_leaving text NOT NULL),

	(employer_name text NOT NULL,
	employer_phone text NOT NULL,
	employment_duration text NOT NULL,
	monthly_income integer NOT NULL, -- in cents --
	additional_income text),

	(occupant_count smallint NOT NULL,
	occupant_details text[] NOT NULL,
	pets text),

	(legal_name text,
	agreed_at timestamptz,
	created_at timestamptz DEFAULT now(),
	updated_at timestamptz DEFAULT now()),
)

CREATE INDEX IF NOT EXISTS idx_applications_status ON applications (status);
CREATE INDEX IF NOT EXISTS idx_applications_listing_id ON applications (listing_id)