ALTER TABLE personagens DROP COLUMN id;

ALTER TABLE personagens ADD PRIMARY KEY (ator_atriz);
ALTER TABLE episodios ADD FOREIGN KEY (estrela1) REFERENCES personagens(ator_atriz);
ALTER TABLE episodios ADD FOREIGN KEY (estrela2) REFERENCES personagens(ator_atriz);
ALTER TABLE episodios ADD FOREIGN KEY (estrela3) REFERENCES personagens(ator_atriz);