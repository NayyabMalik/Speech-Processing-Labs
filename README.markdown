# Speech Processing Labs

This repository contains my speech processing lab reports from the National University of Modern Languages, Islamabad, submitted as part of the Faculty of Engineering & Computer Science coursework under the supervision of Mam Iqra Nasem. The labs cover fundamental concepts and practical implementations in speech and signal processing, using tools like MATLAB and Python. The work includes signal analysis, Z-transforms, filter design, cepstrum analysis, neural network-based classification, text-to-speech conversion, and speech recognition techniques such as MFCC feature extraction and isolated word recognition.

## Lab Reports

The `lab_reports/` folder contains PDF summaries of the lab reports, which provide theoretical foundations and practical implementations for speech processing concepts. The labs are designed to build skills in signal processing, filter design, and machine learning applications for speech analysis and recognition. **Note**: The content is shared with permission for educational purposes and has been summarized to exclude proprietary or sensitive information.

| Lab | Title | Description | Related Files |
| --- | --- | --- | --- |
| Lab 1 | Signal Processing in MATLAB | Introduces basic signal processing techniques in MATLAB, including signal generation, visualization, and basic operations like sampling and quantization. | signal_processing.m |
| Lab 2 | Introduction to Discrete-Time Signal Processing in MATLAB | Covers discrete-time signals, including generation of sequences (e.g., unit step, ramp) and their properties like linearity and time-invariance. | discrete_signals.m |
| Lab 3 | Analysis of Z-Transform in MATLAB | Explores Z-transforms for sequences (e.g., exponential, polynomial) using MATLAB’s symbolic math toolbox, analyzing poles, zeros, and stability. | z_transform.m |
| Lab 4 | Study of Convolution and Discrete Fourier Transform | Implements convolution and Discrete Fourier Transform (DFT) for signal analysis, including manual and FFT-based methods. | convolution_dft.m |
| Lab 5 | FIR Filter Design using MATLAB | Designs Finite Impulse Response (FIR) filters using windowing techniques (e.g., Hamming window) and evaluates frequency responses. | fir_filter.m |
| Lab 6 | Filter FIR Design using FDA TOOL | Uses MATLAB’s Filter Design and Analysis (FDA) Tool to design and analyze FIR filters with specified parameters (e.g., cutoff frequency). | fda_tool_filter.m |
| Lab 7 | Cepstrum Analysis and Homomorphic Deconvolution | Performs cepstrum analysis to separate source and filter components in speech signals, including real cepstrum computation and visualization. | cepstrum_analysis.m |
| Lab 8 | Speech Signal Classification using Different Neural Network Algorithms | Applies neural network algorithms (e.g., ANN, CNN) for speech signal classification, using features like MFCCs. Links to deep learning coursework (Lab 1: ANN_Classification). | speech_classification.ipynb |
| Lab 9 | Text-to-Speech (TTS) - Grapheme-to-Phoneme (G2P) Conversion and Basic Prosodic Modeling | Implements basic TTS, including G2P conversion and prosodic modeling for pitch and duration, using Python or MATLAB. | tts_g2p.py |
| Lab 11 | MFCC for Speech Recognition | Extracts Mel-Frequency Cepstral Coefficients (MFCCs) from audio files for speech recognition, using libraries like `librosa`. Links to deep learning coursework (Lab 11: RNN_Text). | mfcc_extraction.ipynb |
| Lab 10 | Lab Exam | A comprehensive exam covering concepts from Labs 1–9, not included as a separate report. | N/A |

## Repository Structure

```
speech-processing-labs/
├── lab_reports/
│   ├── Lab1_Signal_Processing.pdf
│   ├── Lab2_Discrete_Time_Signals.pdf
│   ├── Lab3_Z_Transform.pdf
│   ├── Lab4_Convolution_DFT.pdf
│   ├── Lab5_FIR_Filter_Design.pdf
│   ├── Lab6_FDA_Tool_Filter.pdf
│   ├── Lab7_Cepstrum_Analysis.pdf
│   ├── Lab8_Speech_Classification.pdf
│   ├── Lab9_TTS_G2P.pdf
│   ├── Lab11_MFCC_Speech_Recognition.pdf
├── notebooks/
│   ├── signal_processing.m
│   ├── discrete_signals.m
│   ├── z_transform.m
│   ├── convolution_dft.m
│   ├── fir_filter.m
│   ├── fda_tool_filter.m
│   ├── cepstrum_analysis.m
│   ├── speech_classification.ipynb
│   ├── tts_g2p.py
│   ├── mfcc_extraction.ipynb
├── README.md
Related Coursework
```

This project complements my deep learning labs, particularly:

- **Lab 1: ANN_Classification** (`deep-learning-labs/lab_manuals/ANN_Classification.pdf`): Covers ANN fundamentals, relevant to Lab 8’s neural network-based speech classification.
- **Lab 11: RNN_Text** (`deep-learning-labs/lab_manuals/RNN_Text.pdf`): Discusses sequence modeling, applicable to Lab 11’s MFCC-based speech recognition.
- **Lab 12+13: LSTM_TimeSeries** (`deep-learning-labs/lab_manuals/LSTM_TimeSeries.pdf`): Relates to time series aspects of speech signal processing.

See the deep-learning-labs repository for details.

## Setup Instructions

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your-username/speech-processing-labs.git
   cd speech-processing-labs
   ```

2. **Install Dependencies**:

   For Python-based labs (Labs 8, 9, 11), install dependencies from `requirements.txt`:

   ```bash
   pip install -r requirements.txt
   ```

   Key libraries include: `librosa`, `numpy`, `matplotlib`, `tensorflow`, `scikit-learn`.

   For MATLAB-based labs (Labs 1–7), ensure MATLAB is installed with the Signal Processing Toolbox.

3. **Prepare Data**:

   - For Lab 11 (MFCC), use audio datasets like TIMIT or LibriSpeech.
   - For Lab 9 (TTS), use text corpora or phoneme dictionaries (e.g., CMU Pronouncing Dictionary).
   - Place datasets in a `data/` folder or update script paths accordingly.

4. **Run Scripts**:

   - **MATLAB Scripts**: Open `.m` files (e.g., `signal_processing.m`) in MATLAB and execute them.

   - **Python Notebooks**: Launch Jupyter Notebook for `.ipynb` files:

     ```bash
     jupyter notebook notebooks/<notebook_name>.ipynb
     ```

   - **Python Scripts**: Run `.py` files (e.g., `tts_g2p.py`) with:

     ```bash
     python notebooks/tts_g2p.py
     ```

5. **View Lab Reports**:

   Open PDFs in `lab_reports/` to review theoretical content and experiment details.

## Usage

- **Labs 1–2**: Generate and analyze basic and discrete-time signals in MATLAB (e.g., sine, step, ramp). Visualize results using plots in `static/images/`.
- **Lab 3**: Compute Z-transforms for sequences like ( x\[n\] = (1/2)^n u\[n\] ) or ( n^4 ). Plot poles and zeros.
- **Lab 4**: Perform convolution and DFT for sequences like ( \[1, 2, 3, 4\] ). Compare manual and FFT-based methods.
- **Labs 5–6**: Design FIR filters using MATLAB’s windowing techniques or FDA Tool. Analyze frequency responses.
- **Lab 7**: Compute real cepstrum for a speech signal and visualize results (e.g., quefrency plots).
- **Lab 8**: Train neural networks (e.g., ANN, CNN) for speech classification using MFCC features.
- **Lab 9**: Implement G2P conversion and prosodic modeling for TTS, generating synthetic speech.
- **Lab 11**: Extract MFCC features from audio files (e.g., vowels ‘a’, ‘e’, ‘i’, ‘o’, ‘u’) and visualize as heatmaps for speech recognition.
- **Lab 10**: Lab exam (not included in repository) covering concepts from Labs 1–9.

## Example

To extract MFCC features (Lab 11) from an audio dataset:

```python
import librosa
import numpy as np
import matplotlib.pyplot as plt

audio_path = "data/vowel_a.wav"
y, sr = librosa.load(audio_path)
mfcc = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=13)
plt.figure(figsize=(10, 4))
librosa.display.specshow(mfcc, x_axis='time')
plt.colorbar()
plt.title('MFCC for Vowel A')
plt.savefig('static/images/mfcc_vowel_a.png')
plt.show()
```

Run in `notebooks/mfcc_extraction.ipynb` after installing `librosa`.

## Future Improvements

- **Lab 8**: Incorporate advanced neural networks (e.g., RNN, LSTM) for better speech classification, linking to `deep-learning-labs/lab_manuals/LSTM_TimeSeries.pdf`.
- **Lab 11**: Add interactive visualizations (e.g., Chart.js) for MFCC heatmaps, as explored in prior work.
- **Lab 9**: Enhance TTS with multilingual phoneme support (e.g., Urdu, Arabic) using IPA standards.
- **Lab 7**: Include homomorphic deconvolution examples with real speech data.
- **Automation**: Create a unified script to run all labs and generate outputs in `static/images/`.

## Notes

- **File Size**: PDFs are compressed, and large files (e.g., audio datasets, visualizations) are managed with Git LFS (`git lfs track "*.pdf" "*.wav" "*.png"`).
- **Permissions**: Lab reports are summarized and shared with permission for educational purposes. Contact Dr. Sajjad Ghuri for original documents.
- **MATLAB Dependency**: Labs 1–7 require MATLAB. Python alternatives can be developed for portability.
- **Datasets**: Use publicly available datasets like TIMIT or LibriSpeech to ensure reproducibility.

## 