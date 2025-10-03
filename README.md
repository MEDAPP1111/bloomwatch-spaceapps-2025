# BloomWatch SpaceApps 2025 🌍🔭

A development environment setup for the BloomWatch project - monitoring algal blooms using satellite data for the NASA SpaceApps Challenge 2025.

## 🚀 Quick Setup

This repository includes an automated setup script that configures your entire development environment in one command.

### Prerequisites
- Python 3.8 or higher
- Git
- Unix-like system (Linux/macOS) or WSL on Windows

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/MEDAPP1111/bloomwatch-spaceapps-2025.git
   cd bloomwatch-spaceapps-2025
   ```

2. **Make the setup script executable:**
   ```bash
   chmod +x setup.sh
   ```

3. **Run the setup script:**
   ```bash
   ./setup.sh
   ```

## 📁 Project Structure

After running the setup script, your project will have the following structure:

```
bloomwatch-spaceapps-2025/
├── backend/                 # Backend API and data processing
│   ├── venv/               # Python virtual environment
│   └── requirements.txt    # Python dependencies
├── frontend/               # Frontend application
├── data/                   # Data files and datasets
├── docs/                   # Documentation
├── .env.example            # Environment variables template
├── .gitignore              # Git ignore rules
└── setup.sh                # Automated setup script
```

## 🔧 What the Setup Script Does

1. **Creates project directories:** `backend`, `frontend`, `data`, `docs`
2. **Sets up Python backend:**
   - Creates `requirements.txt` with essential dependencies
   - Creates virtual environment in `backend/venv`
   - Installs all dependencies automatically
3. **Configures environment:**
   - Creates `.env.example` with API configuration templates
   - Sets up `.gitignore` to exclude sensitive files

## 📦 Backend Dependencies

The setup includes these key Python packages:
- **FastAPI** - Modern web framework for APIs
- **Uvicorn** - ASGI server for FastAPI
- **Rasterio** - Geospatial raster data processing
- **NumPy** - Numerical computing
- **GDAL** - Geospatial data abstraction library
- **Matplotlib** - Data visualization
- **Pillow** - Image processing

## ⚙️ Configuration

1. **Copy environment template:**
   ```bash
   cp .env.example .env
   ```

2. **Edit `.env` file with your settings:**
   ```bash
   nano .env
   ```

3. **Activate the virtual environment:**
   ```bash
   source backend/venv/bin/activate
   ```

## 🚀 Next Steps

After setup completion:
1. Configure your API keys in the `.env` file
2. Start developing your satellite data processing backend
3. Build your frontend for data visualization
4. Add your datasets to the `data/` directory

## 🤝 Contributing

This is a SpaceApps Challenge project. Feel free to contribute improvements to the setup process or the overall project structure.

## 📝 License

Open source project for NASA SpaceApps Challenge 2025.

---

**Happy coding! 🚀** Let's monitor those algal blooms and protect our water resources!
