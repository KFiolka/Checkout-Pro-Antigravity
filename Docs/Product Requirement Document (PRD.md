# Product Requirement Document (PRD): Checkout Pro (Offline Edition)

**Version:** 1.1 (Strict Offline)
**Datum:** 03.02.2026
**Typ:** Mobile Application (Mobile First)
**Architektur:** Standalone / Local-Only
**Zielplattform:** iOS & Android (Cross-Platform)

## 1. Executive Summary
"Checkout Pro" ist ein autarkes Mobile-First-Tool für Darts-Spieler. Die App funktioniert zu 100% offline, speichert alle Daten ausschließlich auf dem Gerät und benötigt keinerlei Internetverbindung. Der Fokus liegt auf Datenschutz, sofortiger Reaktionszeit (Zero Latency) und spezialisierten Trainingsmodulen.

## 2. Technische Architektur & Constraints
*   **Entwicklungsumgebung:** Google Antigravity (Windows 11 Host).
*   **Framework:** Flutter (bevorzugt) oder React Native.
*   **Design-System:** Generierung via **Google Stitch** (MCP).
*   **Netzwerk:** **Deaktiviert.** Keine HTTP-Requests, keine Analytics-SDKs, keine externen APIs.
*   **Datenbank:** Eingebettete lokale Datenbank (Empfehlung: **Isar** oder **Hive**).
*   **Assets:** Alle Icons, Schriftarten und Bilder müssen lokal im App-Bundle liegen (keine CDNs).

## 3. UI/UX Design Guidelines (Stitch Instructions)
*   **Layout-Philosophie:** "Thumb Zone" Design (Bedienung unten, Anzeige oben).
*   **Theme:** "Deep Focus" Dark Mode (OLED Black Backgrounds, Neon Akzente: Cyan/Magenta/Lime).
*   **Lesbarkeit:** Hoher Kontrast für Ablesbarkeit aus 2-3 Metern Entfernung.
*   **Input-Feedback:** Sofortiges visuelles Feedback bei Tastendruck (Ripple-Effekt), aber *kein* Audio.

## 4. Funktionale Anforderungen (Features)

### 4.1. Core Gameplay & Input (MVP)
*   **Eingabe-Modi:**
    *   *Simple Mode:* Großer Nummernblock für Score-Eingabe.
    *   *Pro Mode:* Dartboard-Sektoren oder Tasten-Grid für Single-Dart-Tracking (Wichtig für Statistik).
*   **Korrektur:** Undo-Button für den letzten Wurf (lokaler Stack).
*   **System-Integration:** Wake Lock (Bildschirm bleibt an).
*   **Checkout-Logik:** Hardcodierte Berechnungstabelle für Finishes < 170 (Algorithmisch gelöst, keine Datenbankabfrage nötig).

### 4.2. Spielmodi (Lokale Logik)
*   **X01:** 301, 501, 701 (Single/Double/Master Out).
*   **Cricket:** Standard Ruleset.
*   **Spielerverwaltung:** Lokale Profile (Name, Avatar aus lokalen Assets).

### 4.3. Trainings-Suite
*   **Bob’s 27:** Logik für Punktestand-Berechnung.
*   **Around the Clock:** 1-20 + Bull Tracking.
*   **121 Challenge:** Finish-Training Logik.
*   **JDC Challenge:** Lokale Implementierung des Scoresheets.

### 4.4. Offline Dartbot
*   **KI-Engine:** Lokaler Algorithmus (keine Cloud-AI).
*   **Logik:** Berechnet Würfe basierend auf Wahrscheinlichkeiten (Gaussian Distribution) um das Ziel herum.
*   **Stufen:** Fest einstellbarer Average oder adaptive Anpassung an den User-Average der aktuellen Session.

### 4.5. Lokale Statistiken
*   **Berechnung:** On-Device Berechnung aller Metriken (3-Dart-Avg, First-9-Avg, Checkout %).
*   **Speicherung:** Persistente Speicherung der Match-Historie in der lokalen DB.
*   **Visualisierung:** Rendering von Graphen/Heatmaps direkt auf dem Canvas (keine externen Charting-Bibliotheken, die Webviews nutzen).

## 5. Datenmodell (Local DB Schema)
*   `LocalPlayer`: ID, Name, Offline Stats Cache.
*   `MatchHistory`: ID, Timestamp, GameType, WinnerID, OpponentType (Human/Bot).
*   `LegData`: ID, MatchHistoryID, ScoreLog (JSON oder Relation).