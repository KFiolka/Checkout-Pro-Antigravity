# Design System: Checkout Pro
**Project ID:** 11343715911920126063

## 1. Visual Theme & Atmosphere
The design system, titled "Deep Focus," is an offline-first, high-contrast interface designed specifically for competitive Darts players. The atmosphere is **futuristic, premium, and utilitarian**, utilizing a pure **OLED Black** base to minimize distractions and maximize legibility in dimly lit environments (like bars or clubs). High-energy **Neon Accents** provide immediate visual feedback and denote hierarchy.

## 2. Color Palette & Roles
*   **OLED Infinite Black (#000000):** The primary background color. Used for all screen bases to provide maximum contrast and power efficiency on OLED displays.
*   **Radiant Neon Cyan (#00FFFF):** The primary brand color. Used for critical information (Remaining Score), primary borders, and active interactive states. It conveys precision and clarity.
*   **Electric Neon Magenta (#FF00FF):** The secondary accent color. Used for tactical suggestions (Checkout Paths), difficulty indicators, and secondary status alerts.
*   **High-Gloss High-Contrast White (#FFFFFF):** Used for secondary labels and data points to ensure readability from a distance of 2-3 meters.
*   **Subtle Muted Charcoal (#1A1A1A):** Used for card backgrounds to provide a slight depth separation from the infinite black base.

## 3. Typography Rules
*   **Primary Font:** **Space Grotesk** (or similar Geometric Sans).
*   **Headers/Scores:** Extra-bold weight with maximized size for scores. Scores should feel "heroic" and dominate the visual hierarchy.
*   **Body/Labels:** Medium weight, all-caps for labels to maintain a professional, data-centric look.
*   **Character Spacing:** Slightly tracked out for labels to enhance readability at small sizes.

## 4. Component Stylings
*   **Buttons:** 
    *   **Shape:** Subtly rounded corners (**Round 8 / 8px radius**).
    *   **Size:** Extra-large (min 60dp height) for reliable touch input.
    *   **Style:** Thick Neon Cyan borders with glowing "Neon" box-shadows. No solid fill for secondary buttons; solid Cyan fill for "Enter" or "Primary Action" buttons.
*   **Cards/Containers:** 
    *   **Shape:** Rounded corners matching button radius.
    *   **Background:** Transparent or 10% opacity white/cyan over OLED black to create a glassmorphism "HUD" effect.
    *   **Elevation:** Flat design with depth achieved via glowing borders rather than traditional shadows.
*   **Inputs/Forms:** 
    *   **Style:** Minimalistic. Focus states are indicated by an intensified neon glow on the border.

## 5. Layout Principles
*   **HUD Strategy:** Information is split into "Display" (Top Half) and "Action" (Bottom Half).
*   **Thumb-Zone Priority:** All high-frequency interactive elements (Undo, Scores, Enter) are pinned to the bottom 40% of the screen.
*   **Whitespace:** Generous padding around the central score to prevent visual clutter and ensure "at-a-glance" status checks.
