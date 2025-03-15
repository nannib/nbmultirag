import sys
import os
from streamlit.web import cli as stcli
import streamlit.runtime.scriptrunner.magic_funcs
import streamlit
import json
import requests
import streamlit as st
import faiss
import numpy as np
import pickle
from datetime import datetime
from transformers import AutoTokenizer, AutoModel, BlipProcessor, BlipForConditionalGeneration
import torch
from pypdf import PdfReader
import docx
import openpyxl
from bs4 import BeautifulSoup
from PIL import Image
import pytesseract
import whisper
from moviepy import VideoFileClip
import cv2
from tkinter import Tk, filedialog
from langchain.text_splitter import RecursiveCharacterTextSplitter
import tempfile
from requests.exceptions import ConnectionError

def resolve_path(path):
    resolved_path = os.path.abspath(os.path.join(os.getcwd(),path))
    return resolved_path

def main():
       
    # Imposta gli argomenti per avviare la app Streamlit
    sys.argv = ["streamlit", "run", resolve_path("nbmultirag.py"), "--server.port", "8501", "--global.developmentMode=false"]

    
    # Avvia il CLI di Streamlit e termina l'applicazione al termine
    sys.exit(stcli.main())

if __name__ == '__main__':
    main()

