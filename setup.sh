#!/bin/bash

# BloomWatch SpaceApps 2025 - Development Environment Setup Script
# This script sets up the complete development environment for the project

echo "🚀 Setting up BloomWatch SpaceApps 2025 development environment..."

# 1. إنشاء هيكل المجلدات الرئيسي
echo "📁 Creating project directories: backend, frontend, data, docs"
mkdir -p backend frontend data docs

# 2. إنشاء ملف requirements.txt في مجلد backend بالمكتبات المطلوبة
echo "📋 Creating backend/requirements.txt with required dependencies"
cat > backend/requirements.txt <<EOL
fastapi
uvicorn[standard]
rasterio
numpy
gdal
matplotlib
pillow
EOL

# 3. إنشاء بيئة بايثون افتراضية داخل مجلد backend
echo "🐍 Creating Python virtual environment in backend/venv"
python3 -m venv backend/venv

# 4. تفعيل البيئة الافتراضية وتثبيت المكتبات من requirements.txt
echo "📦 Installing dependencies in virtual environment"
source backend/venv/bin/activate
pip install --upgrade pip
pip install -r backend/requirements.txt
deactivate

# 5. إنشاء ملف .env.example في مجلد المشروع الرئيسي مع متغيرات البيئة الأساسية
echo "⚙️  Creating .env.example with environment variables"
cat > .env.example <<EOL
# متغيرات بيئة التطبيق - Application Environment Variables
API_HOST=127.0.0.1
API_PORT=8000

# Database Configuration (if needed)
# DATABASE_URL=sqlite:///./bloomwatch.db

# External APIs (add your keys here)
# SATELLITE_API_KEY=your_api_key_here
EOL

# 6. إنشاء ملف .gitignore وحجب ملفات البيئة وvenv
echo "🔒 Creating .gitignore to exclude sensitive files"
cat > .gitignore <<EOL
# Environment files
.env

# Virtual environments
backend/venv/
venv/
__pycache__/
*.pyc
*.pyo
*.pyd

# IDE files
.vscode/
.idea/
*.swp
*.swo

# OS files
.DS_Store
Thumbs.db

# Data files (optional - uncomment if needed)
# data/*.csv
# data/*.json
EOL

echo "✅ Development environment setup completed successfully!"
echo "📝 Next steps:"
echo "   1. Copy .env.example to .env and configure your settings"
echo "   2. Activate virtual environment: source backend/venv/bin/activate"
echo "   3. Start developing your BloomWatch application!"
