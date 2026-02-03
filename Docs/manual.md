# Benutzerhandbuch: Checkout Pro Lokal Testen

Hier ist eine Schritt-für-Schritt-Anleitung, um Checkout Pro auf deinem Windows-PC zu starten.

## Voraussetzungen
Stelle sicher, dass du ein Terminal (PowerShell oder Eingabeaufforderung) im Projektordner geöffnet hast:
`E:\Vibe Coding with Antigravity\Checkout-Pro-Antigravity`

### WICHTIG: Entwicklermodus aktivieren
Damit die App auf Windows gebaut werden kann (wegen Verknüpfungen/Symlinks), muss der **Entwicklermodus** in Windows aktiviert sein.
1. Suche in Windows nach "Entwicklereinstellungen" oder führe `start ms-settings:developers` aus.
2. Schalte den "Entwicklermodus" auf **EIN**.
3. Bestätige die Warnmeldung.

## Schritt 1: Abhängigkeiten installieren
Führe diesen Befehl aus, um alle benötigten Pakete zu laden:
```powershell
flutter pub get
```

## Schritt 2: Datenbank-Code generieren
Da wir eine lokale Datenbank (Isar) nutzen, muss der Code einmalig generiert werden:
```powershell
flutter pub run build_runner build --delete-conflicting-outputs
```
*Hinweis: Dies kann 1-2 Minuten dauern.*

## Schritt 3: App starten
Starte die App als natives Windows-Programm:
```powershell
flutter run -d windows
```

## Fehlersuche
*   **Fehler "symlink support":** Siehe oben "WICHTIG: Entwicklermodus aktivieren".
*   **Fehler "build_runner":** Wenn Schritt 3 Fehler anzeigt, wiederhole Schritt 2.
*   **Fehler "Device not found":** Stelle sicher, dass "Windows" als Gerät verfügbar ist (prüfe mit `flutter devices`).

Viel Spaß beim Testen!
