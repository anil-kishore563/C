FROM binder/base

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libx11-dev \
        xeus-cling=0.11

USER $NB_UID

CMD ["start-notebook.sh"]
