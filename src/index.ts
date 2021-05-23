import { fastify } from 'fastify';

const app = fastify({ logger: true })

app.get('/', (req, res) => {
    res.send({ hello: 'world' })
})


const start = async () => {
    try {
        await app.listen(3000, '0.0.0.0')
    } catch (error) {
        app.log.error(error)
        process.exit(1);
    }
}

start()