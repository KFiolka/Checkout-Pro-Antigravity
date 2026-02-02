# Architecture - Checkout Pro

## Tech Stack
*   **Framework:** Flutter
*   **State Management:** Riverpod
*   **Database:** Isar (Local-only)
*   **Storage:** Offline-First (No Cloud)
*   **UI System:** Glassmorphism / Dark Mode (via Stitch)

## Design Principles
1.  **Zero Latency:** Everything happens locally. No loading states for network.
2.  **Thumb Zone Navigation:** All interactive elements at the bottom.
3.  **High Contrast:** Legible from a distance.
4.  **Privacy by Design:** No user data leaves the device.

## Components
*   **Logic Layer:** Plain Dart classes for X01, Cricket, and Bot AI.
*   **Data Layer:** Isar Schemas and Services.
*   **UI Layer:** Modular Flutter Widgets (Atomic Design).
