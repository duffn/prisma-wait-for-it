FROM prismagraphql/prisma:1.34.10

ENV DATABASE localhost:5432

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

ENTRYPOINT /wait-for-it.sh "$DATABASE" -- /bin/sh -c /app/start.sh
