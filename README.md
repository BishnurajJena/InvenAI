# InvenAI 2.0 - AI Automated Inventory Management System

InvenAI is a major-project-ready Inventory Management System with AI automation, smart reorder recommendations, demand forecasting, stock anomaly detection, GST-ready reports, payments simulation, SQLite persistence, and a deployable Python backend.

This upgraded version keeps the project easy to run in college labs while making it more appealing for demo, viva and deployment.

## What Was Upgraded

- Fixed frontend issues that could break execution, including duplicate JavaScript declarations and duplicate HTML IDs/options.
- Added a modern dashboard hero section with inventory risk score, health status and executive AI summary cards.
- Added an AI Action Queue that recommends urgent stock actions, dead-stock review and payment follow-up.
- Added `/api/insights` for backend-driven business intelligence metrics.
- Added `/api/reports/backup.json` for one-click JSON backup export.
- Added production-friendly security headers, cache headers and configurable CORS.
- Added support for cloud platform `PORT` environment variable.
- Added a Deployment Center inside the UI with local, Docker and cloud deployment guidance.
- Added PWA support through `manifest.json` and `service-worker.js` for offline-friendly demo behavior.
- Added improved Dockerfile, Docker Compose healthcheck, persistent volume, `Procfile`, `render.yaml` and `requirements.txt`.
- Removed the bundled SQLite database from the deliverable so the app creates a clean database from seed JSON on first run.

## Tech Stack

- Frontend: HTML, CSS, JavaScript, Chart.js CDN
- Backend: Python standard-library HTTP server
- Database: SQLite
- AI Automation: custom explainable Python algorithms
- Deployment: Docker, Docker Compose, Render/Railway-style process file

## Folder Structure

```text
InvenAI_Upgraded_Project/
├── backend/
│   ├── database/schema.sql
│   ├── data/.gitkeep
│   ├── services/ai_service.py
│   ├── services/csv_service.py
│   ├── tests/test_ai_service.py
│   └── server.py
├── frontend/
│   └── public/
│       ├── index.html
│       ├── style.css
│       ├── app.js
│       ├── manifest.json
│       ├── service-worker.js
│       └── inventory_data_inr.json
├── docs/
│   ├── API_DOCUMENTATION.md
│   ├── DATABASE_SCHEMA.md
│   ├── DEPLOYMENT_GUIDE.md
│   ├── MAJOR_PROJECT_REPORT.md
│   ├── SRS.md
│   ├── TEST_CASES.md
│   ├── UPGRADE_NOTES.md
│   └── USER_MANUAL.md
├── Dockerfile
├── docker-compose.yml
├── Procfile
├── render.yaml
├── requirements.txt
├── run.bat
├── run.sh
└── README.md
```

## How to Run Locally

### Option 1: Run directly with Python

```bash
cd InvenAI_Upgraded_Project
python backend/server.py
```

Open:

```text
http://127.0.0.1:8000
```

### Option 2: Run with Docker

```bash
cd InvenAI_Upgraded_Project
docker compose up --build
```

Open:

```text
http://127.0.0.1:8000
```

## Demo Login API Credentials

The frontend is dashboard-first, but the backend includes a demo login API.

| Role | Email | Password |
|---|---|---|
| Admin | `rajesh@invenai.in` | `admin123` |
| Employee | any seeded non-admin user email | `employee123` |

## Important API Endpoints

| Method | Endpoint | Purpose |
|---|---|---|
| GET | `/api/health` | Check backend status |
| GET | `/api/data` | Get complete dashboard data |
| PUT | `/api/data` | Save complete dashboard data |
| GET | `/api/products` | List products |
| POST | `/api/products` | Add product |
| PUT | `/api/products/{id}` | Update product |
| DELETE | `/api/products/{id}` | Delete product |
| GET | `/api/forecast?model=LinearRegression&ahead=30` | Get AI forecast |
| GET | `/api/recommendations` | Get reorder recommendations |
| GET | `/api/anomalies` | Get stock anomaly alerts |
| GET | `/api/analytics` | Get analytics summary |
| GET | `/api/insights` | Get upgraded AI dashboard insights |
| POST | `/api/automation/reorder-po` | Create purchase orders from AI recommendations |
| GET | `/api/reports/inventory.csv` | Download inventory CSV |
| GET | `/api/reports/backup.json` | Download complete JSON backup |

## Testing

```bash
cd InvenAI_Upgraded_Project
python -m unittest discover backend/tests
```

## Reset Database

The SQLite database is generated automatically in `backend/data/invenai.sqlite3`.

To reset:

```bash
rm backend/data/invenai.sqlite3
python backend/server.py
```

On Windows PowerShell:

```powershell
Remove-Item backend/data/invenai.sqlite3
python backend/server.py
```

## Deployment Notes

- Docker: use `docker compose up --build`.
- Render/Railway-style platforms: use `Procfile` or `render.yaml`.
- The app reads the platform `PORT` variable automatically.
- Keep `backend/data` persistent in production if you want SQLite data to survive redeployments.

## Suggested University Presentation Flow

1. Problem statement: inventory losses due to stock-outs, overstocking, manual billing and delayed reorder decisions.
2. Proposed solution: AI-assisted inventory system with automated forecasting and reorder suggestions.
3. Architecture: frontend dashboard, backend APIs, SQLite database and AI service layer.
4. Demonstration: dashboard risk score, inventory CRUD, forecast, recommendations, order/payment flow and backup export.
5. AI explanation: linear regression, moving average, z-score anomaly detection, ABC classification and risk scoring.
6. Deployment: show local run, Docker setup and cloud-ready configuration.
7. Future scope: barcode scanner, mobile app, supplier portal, real payment gateway, authentication hardening and advanced ML models.
