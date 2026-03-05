FROM python:3.14-slim

WORKDIR /workspace

RUN pip install --no-cache-dir \
    jupyter \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    xgboost \
    torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
