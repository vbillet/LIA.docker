#!/bin/bash
if [ ! -d "$OLLAMA_MODELS" ]; then
    echo ***********************************************************************
    echo * INSTALLATION DE MISTRAL                                             *
    echo ***********************************************************************
    ollama serve & 
    sleep 10
    ollama pull mistral
else
    echo ***********************************************************************
    echo * DEMARRAGE DE MISTRAL                                                *
    echo ***********************************************************************
    ollama serve & \
fi

jupyter lab --generate-config
jupyter lab --ip="0.0.0.0" --port=8080 --allow-root