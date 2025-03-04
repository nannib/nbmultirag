![image](https://github.com/user-attachments/assets/8a5d34f1-062e-470d-8960-d24372c7e6ec)  
  

<table border="0"align="center">
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/1f43e592-a560-4e46-90c9-03322d3e233d" width="90" height="90" /> 
    </td>
    <td>
       <h1><b>NbMultiRag - un GPT tutto in LOCALE</b></h1>
    </td>
  </tr>
</table>  
<p align="center">by <a href="https://nannibassetti.com" target="_blank">Nanni Bassetti</a></p>   

[ITALIAN](#ITALIANO)  -  [ENGLISH](#ENGLISH)  

Based on **PYTHON 3.12.4**   
###  ---------------- I tuoi dati rimangono sul tuo computer ---------------   
<a name="ITALIANO"></a>  
## ITALIANO
Un framework in Italiano ed Inglese, che permette di chattare con i propri documenti in RAG, anche multimediali (audio, video, immagini e OCR).  
Il framework è una GUI per chattare con un modello GPT scaricato da OLLAMA, si consiglia LLAMA 3.2 (2Gb) perfettamente performante anche su macchine medie.  
Inoltre, bisogna installare il software Tesseract, per il riconoscimento OCR, si consiglia di scegliere le lingue italiano ed inglese durante l'istallazione.  
NBMultiRag, permette di:
1) Chattare col modello senza RAG.
2) Creare dei workspace personalizzati e configurabili.
3) Indicizzare per il RAG una cartella di documenti di varia tipologia.
4) Interrogare il sistema, che provvederà a trascrivere gli audio e video presenti nei documenti, fare OCR sulle immagini e pure descrivere 10 frame equamente distributi nel video.
5) Si può anche inviare nella chat, tramite upload, un singolo file alla volta ed il sistema provvederà a descriverlo.
6) Al sistema serve la connessione alla rete Internet solo al lancio per scaricare i modelli da HuggingFace, poi si può anche sconnettere il computer.
7) Se si hanno problemi col Tkinter, in Windows il pacchetto arriva con l'istallazione di Python (https://www.python.org/)

## ISTRUZIONI PER SISTEMI WINDOWS  

1) Lanciare il file install.bat
2) Nel framework seguire gli avvisi (es. scaricare un modello).
3) Creare un workspace
4) Scegliere un embedder (di default c'è bert-base-italian-uncased per l'Italiano e bert-base-uncased per l'Inglese.
5) Aggiungere una cartella che contiene i documenti da indicizzare.
6) Aggiornare l'indice.
7) CHATTARE
8) Il programma scarica nella C:\Users\YOUR_USER_NAME\.cache\huggingface\hub i file: models--bert-base-uncased, models--dbmdz--bert-base-italian-uncased, models--Salesforce--blip-image-captioning-base

## Lanciamo il programma:  
1) crea la cartella nbmultirag
2) copia tutto il contenuto di questo repository.
3) crea un enviroment Python: python -m venv nbmultirag
4) Attivare l'environment (per Windows: nbmultirag/Scripts/activate)
5) pip install -r requirements
6) streamlit run nbmultirag.py
# ENGLISH <a id='ENGLISH'></a>
<table border="0" align="center">
<tr>
<td>
<img src="https://github.com/user-attachments/assets/1f43e592-a560-4e46-90c9-03322d3e233d" width="90" height="90" />
</td>
<td>
<h1><b>NbMultiRag - a GPT all LOCAL</b></h1>
</td>
</tr>
</table>  
<p align="center">by <a href="https://nannibassetti.com" target="_blank">Nanni Bassetti</a></p>  


### ---------------- Your data remains on your computer ---------------  

It is an Italian and English framework, which allows you to chat with your documents in RAG, including multimedia (audio, video, images and OCR).
The framework is a GUI to chat with a GPT model downloaded from OLLAMA, we recommend LLAMA 3.2 (2Gb) which performs perfectly even on medium-sized machines.
In addition, you need to install the Tesseract software, for OCR recognition, we recommend choosing Italian and English during installation.
NBMultiRag, allows you to:
1) Chat with the model without RAG.
2) Create custom and configurable workspaces.
3) Index a folder of documents of various types for the RAG.
4) Query the system, which will transcribe the audio and video in the documents, perform OCR on the images and also describe 10 frames equally distributed in the video.
5) You can also send a single file at a time in the chat, via upload, and the system will describe it.
6) The system only needs an Internet connection at launch to download the models from HuggingFace, then you can also disconnect the computer.
7) If you have problems with Tkinter, in Windows the package comes with the Python installation (https://www.python.org/)

## INSTRUCTIONS FOR WINDOWS SYSTEMS

1) Run the install.bat file
2) In the framework follow the prompts (e.g. download a template).
3) Create a workspace
4) Choose an embedder (by default there is bert-base-italian-uncased for Italian and bert-base-uncased for English.
5) Add a folder that contains the documents to be indexed.
6) Update the index.
7) CHAT
8) The program downloads the files to C:\Users\YOUR_USER_NAME\.cache\huggingface\hub: models--bert-base-uncased, models--dbmdz--bert-base-italian-uncased, models--Salesforce--blip-image-captioning-base

## How to run:
1) create the nbmultirag folder
2) copy all the contents of this repository.
3) create a Python environment: python -m venv nbmultirag
4) Activate the environment (for Windows: nbmultirag/Scripts/activate)
5) pip install -r requirements
6) streamlit run nbmultirag.py






