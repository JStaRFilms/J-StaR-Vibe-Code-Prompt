# Web Material Design System Summary

## 1. Overall Theming Architecture

### Theme Structure
The Material Web library provides a comprehensive theming system based on CSS custom properties (CSS variables) and design tokens:

- **Design Tokens** - Standardized values for colors, typography, shapes, elevation, and spacing
- **CSS Custom Properties** - Runtime-configurable theme variables
- **Sass Token System** - Build-time token resolution and validation
- **Component Themes** - Individual component theming through CSS parts and properties

### Core Files
- `tokens/` - Complete design token system with system and component tokens
- `tokens/_md-sys-*.scss` - System-level design tokens (color, typography, shape, elevation)
- `tokens/_md-comp-*.scss` - Component-specific token mappings
- `tokens/versions/v0_192/` - Current token implementation (Material 3 v0.192)
- `sass/` - Sass mixins and functions for theming

### Theme Application
Themes are applied through CSS custom properties with fallback values:

```css
:root {
  --md-sys-color-primary: var(--md-sys-color-primary, #6750a4);
  --md-sys-color-surface: var(--md-sys-color-surface, #fef7ff);
  --md-sys-color-on-surface: var(--md-sys-color-on-surface, #1d1b20);
  /* etc. */
}
```

Components use these tokens through CSS custom properties with component-specific fallbacks.

## 2. Typography System

### Type Scale
Material Web implements the complete Material Design 3 type scale with discrete properties:

#### Display Styles
- **Display Large**: 3.5625rem (57.0px), Regular weight, Brand font, 4rem line-height
- **Display Medium**: 2.8125rem (45.0px), Regular weight, Brand font, 3.25rem line-height
- **Display Small**: 2.25rem (36.0px), Regular weight, Brand font, 2.75rem line-height

#### Headline Styles
- **Headline Large**: 2rem (32.0px), Regular weight, Brand font, 2.5rem line-height
- **Headline Medium**: 1.75rem (28.0px), Regular weight, Brand font, 2.25rem line-height
- **Headline Small**: 1.5rem (24.0px), Regular weight, Brand font, 2rem line-height

#### Title Styles
- **Title Large**: 1.375rem (22.0px), Regular weight, Brand font, 1.75rem line-height
- **Title Medium**: 1rem (16.0px), Medium weight, Plain font, 1.5rem line-height
- **Title Small**: 0.875rem (14.0px), Medium weight, Plain font, 1.25rem line-height

#### Body Styles
- **Body Large**: 1rem (16.0px), Regular weight, Plain font, 1.5rem line-height
- **Body Medium**: 0.875rem (14.0px), Regular weight, Plain font, 1.25rem line-height
- **Body Small**: 0.75rem (12.0px), Regular weight, Plain font, 1rem line-height

#### Label Styles
- **Label Large**: 0.875rem (14.0px), Medium weight, Plain font, 1.25rem line-height
- **Label Medium**: 0.75rem (12.0px), Medium weight, Plain font, 1rem line-height
- **Label Small**: 0.6875rem (11.0px), Medium weight, Plain font, 1rem line-height

### Font Families
- **Brand**: System font stack for display/headline text
- **Plain**: System font stack for body/label text

### Implementation Files
- `tokens/_md-sys-typescale.scss` - Typography token definitions
- `tokens/versions/v0_192/_md-sys-typescale.scss` - Actual token values
- `typography/` - Typography utilities and components

### CSS Custom Properties
Typography tokens are exposed as:
```css
--md-sys-typescale-display-large-font: var(--md-sys-typescale-display-large-font, [value]);
--md-sys-typescale-display-large-size: var(--md-sys-typescale-display-large-size, 3.5625rem);
--md-sys-typescale-display-large-weight: var(--md-sys-typescale-display-large-weight, 400);
--md-sys-typescale-display-large-line-height: var(--md-sys-typescale-display-large-line-height, 4rem);
```

## 3. Color System

### Color Palette
Material Web implements the complete Material 3 color system with semantic roles:

#### Primary Colors
- `--md-sys-color-primary` - Primary brand color (#6750a4 light, #d0bcff dark)
- `--md-sys-color-on-primary` - Content on primary (#ffffff light, #381e72 dark)
- `--md-sys-color-primary-container` - Primary container (#eaddff light, #4f378b dark)
- `--md-sys-color-on-primary-container` - Content on primary container (#21005d light, #eaddff dark)

#### Secondary Colors
- `--md-sys-color-secondary` - Secondary brand color (#625b71 light, #ccc2dc dark)
- `--md-sys-color-on-secondary` - Content on secondary (#ffffff light, #332d41 dark)
- `--md-sys-color-secondary-container` - Secondary container (#e8def8 light, #4a4458 dark)
- `--md-sys-color-on-secondary-container` - Content on secondary container (#1d192b light, #e8def8 dark)

#### Tertiary Colors
- `--md-sys-color-tertiary` - Tertiary accent color (#7d5260 light, #efb8c8 dark)
- `--md-sys-color-on-tertiary` - Content on tertiary (#ffffff light, #492532 dark)
- `--md-sys-color-tertiary-container` - Tertiary container (#ffd8e4 light, #633b48 dark)
- `--md-sys-color-on-tertiary-container` - Content on tertiary container (#31111d light, #ffd8e4 dark)

#### Surface Colors
- `--md-sys-color-surface` - Base surface (#fef7ff light, #141218 dark)
- `--md-sys-color-on-surface` - Content on surface (#1d1b20 light, #e6e1e5 dark)
- `--md-sys-color-surface-variant` - Surface variant (#e7e0ec light, #49454f dark)
- `--md-sys-color-on-surface-variant` - Content on surface variant (#49454f light, #cac4d0 dark)
- **Surface Container Levels**: surface-container, surface-container-high, surface-container-highest, etc.

#### Error Colors
- `--md-sys-color-error` - Error color (#ba1a1a light, #ffb4ab dark)
- `--md-sys-color-on-error` - Content on error (#ffffff light, #690005 dark)
- `--md-sys-color-error-container` - Error container (#ffdad6 light, #93000a dark)
- `--md-sys-color-on-error-container` - Content on error container (#410e0b light, #ffb4ab dark)

#### Outline & Special Colors
- `--md-sys-color-outline` - Outline/border color
- `--md-sys-color-outline-variant` - Variant outline color
- `--md-sys-color-shadow` - Shadow color
- `--md-sys-color-scrim` - Scrim overlay color

### Light & Dark Mode Implementation
Web supports dynamic theming through separate token sets:

**Light Theme Colors** (from `md-sys-color.values-light()`):
- Primary: #6750a4 (purple)
- Surface: #fef7ff (near white)
- On-surface: #1d1b20 (dark gray)
- Error: #ba1a1a (red)

**Dark Theme Colors** (from `md-sys-color.values-dark()`):
- Primary: #d0bcff (light purple)
- Surface: #141218 (dark)
- On-surface: #e6e1e5 (light gray)
- Error: #ffb4ab (light red)

### Implementation Files
- `tokens/_md-sys-color.scss` - Color token system
- `tokens/versions/v0_192/_md-sys-color.scss` - Actual color values
- `tokens/_md-ref-palette.scss` - Reference color palette

### CSS Custom Properties
All colors are exposed as CSS custom properties with fallbacks:
```css
--md-sys-color-primary: var(--md-sys-color-primary, #6750a4);
--md-sys-color-surface: var(--md-sys-color-surface, #fef7ff);
```

## 4. Shape System

### Shape Categories
Material Web defines shape tokens for different corner radius values:

- **Extra Small**: 4px corner radius
- **Small**: 8px corner radius
- **Medium**: 12px corner radius
- **Large**: 16px corner radius
- **Extra Large**: 28px corner radius
- **Full**: 9999px (fully rounded)

### Corner Treatments
Uses CSS `border-radius` with design tokens. Supports both uniform and individual corner values.

### Implementation Files
- `tokens/_md-sys-shape.scss` - Shape token definitions
- `tokens/versions/v0_192/_md-sys-shape.scss` - Actual shape values

### CSS Custom Properties
Shape tokens are exposed as:
```css
--md-sys-shape-corner-small: var(--md-sys-shape-corner-small, 8px);
--md-sys-shape-corner-medium: var(--md-sys-shape-corner-medium, 12px);
--md-sys-shape-corner-large: var(--md-sys-shape-corner-large, 16px);
```

## 5. Spacing and Layout

### Standard Units
Web uses a pixel-based spacing system with design tokens:
- **4px** - Base unit for small spacing
- **8px** - Medium spacing
- **16px** - Large spacing
- **24px** - Extra large spacing

### Layout Guidelines
- Uses CSS Grid and Flexbox for layouts
- Spacing tokens for consistent margins and padding
- Touch targets follow 48px minimum accessibility guidelines
- Component-specific spacing values (leading-space, trailing-space, etc.)

### Implementation Files
- Component-specific spacing defined in token files
- `tokens/_md-comp-*.scss` - Component spacing tokens

## 6. Example Component Analysis

### Material Filled Button
The Material Web Filled Button component consumes design tokens as follows:

- **Typography**: Uses `--md-sys-typescale-label-large-*` tokens for text styling (14px, Medium weight)
- **Color**: Uses `--md-sys-color-primary` for container background, `--md-sys-color-on-primary` for text/icon
- **Shape**: Uses `--md-sys-shape-corner-full` (9999px) for fully rounded corners
- **Spacing**: Uses component-specific spacing tokens (24px leading/trailing, 16px with icons)
- **Elevation**: Uses elevation tokens for shadow depth and state changes

**Implementation**: `tokens/_md-comp-filled-button.scss`, `button/internal/_filled-button.scss`

### Material Card (Outlined)
The Material Web Outlined Card component consumes design tokens as follows:

- **Typography**: Inherits typography tokens from theme for content
- **Color**: Uses `--md-sys-color-surface` for background, `--md-sys-color-outline` for border
- **Shape**: Uses `--md-sys-shape-corner-medium` (12px) for corner radius
- **Elevation**: Uses minimal elevation (0dp) for outlined style

**Implementation**: `tokens/_md-comp-outlined-card.scss`

Both components follow the Material Web design system by using CSS custom properties that reference the design tokens, ensuring consistent theming and runtime customization capabilities.
