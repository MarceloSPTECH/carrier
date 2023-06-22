CREATE TABLE IF NOT EXISTS BANK_ACCOUNT (
    id UUID PRIMARY KEY,
    account VARCHAR(255),
    agency SMALLINT,
    bank_code SMALLINT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS CARD_HOLDER (
    id UUID PRIMARY KEY,
    client_id UUID UNIQUE,
    credit_analysis_id UUID UNIQUE,
    status VARCHAR(8),
    credit_limit DOUBLE PRECISION,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    bank_account_id UUID,
    FOREIGN KEY (bank_account_id) REFERENCES BANK_ACCOUNT(id)
);