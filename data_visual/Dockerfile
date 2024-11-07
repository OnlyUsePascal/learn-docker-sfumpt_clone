FROM python:3.8

WORKDIR /usr/app
ADD src/requirements.txt ./
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt && \
    useradd -ms /bin/bash -g users sfu && \
    chown -R sfu:users /usr/app
USER sfu

ADD --chown=sfu:users src/ ./

# RUN jupyter trust blog-visuals.ipynb

# ENTRYPOINT ["/bin/bash", "-c"]
# CMD ["/bin/bash", "-c", "ls -la /usr/app"]
# CMD ["/bin/bash", "-c", "sleep 20"]
# CMD ["/bin/bash", "-c", "python3 /usr/app/test.py"]

ENTRYPOINT ["jupyter", "notebook", "--paths='/usr/app'", \
            "--port=8888", "--no-browser", "--ip=0.0.0.0", \
            "--NotebookApp.token=''", "--NotebookApp.password=''", \
            "--allow-root"]
CMD ["blog-visuals.ipynb"]