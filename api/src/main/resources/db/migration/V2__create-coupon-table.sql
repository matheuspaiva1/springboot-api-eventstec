
CREATE TABLE coupon2(
        id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
        code VARCHAR(100) NOT NULL,
        discount VARCHAR(250) NOT NULL,
        valid TIMESTAMP NOT NULL,
        event_id UUID,
        FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
);