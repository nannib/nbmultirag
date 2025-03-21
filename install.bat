@echo off
setlocal EnableDelayedExpansion
set KMP_DUPLICATE_LIB_OK=TRUE

:: =====================================================
:: 1. Scarica ed installa Tesseract-OCR-w64 (ultima versione)
:: =====================================================
echo Vuoi scaricare ed installare Tesseract-OCR-w64 (ultima versione)? (S/N)
set /p ansTesseract=
if /I "!ansTesseract!"=="S" (
    echo Scaricando Tesseract-OCR-w64...
    powershell -Command "Invoke-WebRequest -Uri 'https://digi.bib.uni-mannheim.de/tesseract/tesseract-ocr-w64-setup-5.3.1.20230401.exe' -OutFile 'TesseractInstaller.exe' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'"
    echo Installazione in corso...
    start /wait TesseractInstaller.exe /SILENT
    del TesseractInstaller.exe
    echo Tesseract installato.
) else (
    echo Salto installazione Tesseract.
)
echo.

:: =====================================================
:: 2. Scarica ed installa Ollama
:: =====================================================
echo Vuoi scaricare ed installare Ollama? (S/N)
set /p ansOllama=
if /I "!ansOllama!"=="S" (
    echo Scaricando Ollama...
    powershell -Command "Invoke-WebRequest -Uri 'https://ollama.com/download/OllamaSetup.exe' -OutFile 'OllamaInstaller.exe' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'"
    echo Installazione in corso...
    start /wait OllamaInstaller.exe /S
    del OllamaInstaller.exe
    echo Ollama installato.
    
    :: Chiede se installare il modello llama3.2
    echo Vuoi installare il modello llama3.2? (S/N)
    set /p ansLlama=
    if /I "!ansLlama!"=="S" (
        echo Avvio dell'installazione del modello llama3.2...
        ollama run llama3.2:latest
    ) else (
        echo Salto installazione modello llama3.2.
    )
) else (
    echo Salto installazione Ollama.
)
echo.

:: =====================================================
:: 3. Scarica ed installa FFmpeg
:: =====================================================
echo Vuoi scaricare ed installare FFmpeg? (S/N)
set /p ansFFmpeg=
if /I "!ansFFmpeg!"=="S" (
    echo Scaricando FFmpeg...
    powershell -Command "Invoke-WebRequest -Uri 'https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip' -OutFile 'ffmpeg.zip' -UserAgent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'"
    
    echo Estrazione in corso...
    powershell -Command "Expand-Archive -Path 'ffmpeg.zip' -DestinationPath 'ffmpeg_temp'"
    move "ffmpeg_temp\ffmpeg-*-essentials_build" "C:\ffmpeg" >nul 2>&1
    rmdir /s /q ffmpeg_temp
    
    echo Aggiunta di C:\ffmpeg\bin al PATH...
    setx PATH "%PATH%;C:\ffmpeg\bin"
    
    echo.
    echo Attenzione:
    echo 1. Riavvia il sistema per applicare le modifiche al PATH.
    echo 2. Se C:\ffmpeg\bin non esiste, controlla manualmente la cartella estratta.
    del ffmpeg.zip
) else (
    echo Salto installazione FFmpeg.
)
echo.

echo Operazione completata.
pause
endlocal

