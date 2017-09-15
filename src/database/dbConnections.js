import Client from 'pg';

const client = new Client({
    user: 'jtwomley3',
    host: 'localhost',
    database: 'merch_it_replica',
    password: 'postgres',
    port: '5432',
});

export default client;