# iOS Material Design System Summary

## 1. Overall Theming Architecture

### Theme Structure
The Material Components for iOS library provides a theming system based on the `MDCContainerScheme` protocol, which encapsulates all design tokens:

- **MDCContainerScheme** - Core container for color, typography, and shape schemes
- **MDCSemanticColorScheme** - Color definitions for different UI elements
- **MDCTypographyScheme** - Typography scale definitions
- **MDCShapeScheme** - Shape and corner radius definitions

### Core Files
- `components/schemes/Container/src/MDCContainerScheme.h/.m` - Main container scheme implementation
- `components/schemes/Color/src/MDCSemanticColorScheme.h/.m` - Color scheme definitions
- `components/schemes/Typography/src/MDCTypographyScheme.h/.m` - Typography scheme definitions
- `components/schemes/Shape/src/MDCShapeScheme.h/.m` - Shape scheme definitions

### Theme Application
Themes are applied by creating an `MDCContainerScheme` instance and assigning it to components:

```objc
MDCContainerScheme *scheme = [[MDCContainerScheme alloc] init];
scheme.colorScheme = [MDCSemanticColorScheme defaultScheme];
scheme.typographyScheme = [MDCTypographyScheme defaultScheme];
scheme.shapeScheme = [MDCShapeScheme defaultScheme];

// Apply to button
button.applyTheme(withScheme: scheme);
```

## 2. Typography System

### Type Scale
Material Components for iOS implements the Material Design type scale with system fonts:

#### Display Styles (Headline 1-6)
- **Headline 1**: 96pt, Light weight
- **Headline 2**: 60pt, Light weight
- **Headline 3**: 48pt, Regular weight
- **Headline 4**: 34pt, Regular weight
- **Headline 5**: 24pt, Regular weight
- **Headline 6**: 20pt, Medium weight

#### Subtitle Styles
- **Subtitle 1**: 16pt, Regular weight
- **Subtitle 2**: 14pt, Regular weight

#### Body Styles
- **Body 1**: 16pt, Regular weight
- **Body 2**: 14pt, Regular weight

#### Other Styles
- **Caption**: 12pt, Regular weight
- **Button**: 14pt, Medium weight
- **Overline**: 12pt, Medium weight

### Implementation Files
- `components/schemes/Typography/src/MDCTypographyScheme.h/.m` - Typography scheme definitions
- Font family: System font (San Francisco) with weight variations
- Supports Dynamic Type scaling with `MDCFontScaler`

## 3. Color System

### Color Palette
The iOS implementation uses semantic color naming through `MDCSemanticColorScheme`:

#### Primary Colors
- `primaryColor` - Primary brand color
- `primaryColorVariant` - Variant of primary
- `onPrimaryColor` - Content color on primary

#### Secondary Colors
- `secondaryColor` - Secondary brand color
- `onSecondaryColor` - Content color on secondary

#### Surface Colors
- `surfaceColor` - Background color
- `onSurfaceColor` - Content color on surface
- `backgroundColor` - App background

#### Error Colors
- `errorColor` - Error state color
- `onErrorColor` - Content color on error

### Light & Dark Mode Implementation
iOS supports multiple color scheme defaults:

**Material 2018 Defaults (Light)**:
- Primary: System blue
- Secondary: System cyan
- Surface: White
- Background: White
- Error: System red

**Material Dark 2019 Defaults**:
- Primary: Adjusted blue for dark backgrounds
- Secondary: Adjusted cyan for dark backgrounds
- Surface: Dark gray
- Background: Black
- Error: Adjusted red for dark backgrounds

### Implementation Files
- `components/schemes/Color/src/MDCSemanticColorScheme.h/.m` - Color scheme definitions
- `components/schemes/Color/src/MDCLegacyColorScheme.h/.m` - Legacy color schemes

## 4. Shape System

### Shape Categories
iOS Material Components define shape schemes with three categories:

- **Small Component Shape**: For small UI elements (buttons, chips)
- **Medium Component Shape**: For medium UI elements (cards, dialogs)
- **Large Component Shape**: For large UI elements (sheets, bottom sheets)

### Corner Treatments
Uses `MDCShapeCategory` with support for:
- **Rounded corners** (`MDCShapeCornerFamilyRounded`)
- **Cut corners** (`MDCShapeCornerFamilyCut`)

Each category can have different corner sizes and treatments for each of the 4 corners.

### Implementation Files
- `components/schemes/Shape/src/MDCShapeScheme.h/.m` - Shape scheme definitions
- `components/schemes/Shape/src/MDCShapeCategory.h/.m` - Shape category implementation

## 5. Spacing and Layout

### Standard Units
iOS uses a 4pt baseline grid system:
- Small spacing: 4pt
- Medium spacing: 8pt
- Large spacing: 16pt
- Extra large spacing: 24pt+

### Layout Guidelines
Key spacing dimensions include:
- Button padding: 16pt horizontal, variable vertical
- Card margins: 16pt
- Touch targets: 44pt minimum (iOS Human Interface Guidelines)
- Icon sizes: 18-24pt
- Component spacing: 8pt baseline grid

## 6. Example Component Analysis

### Material Button
The Material Button component consumes design system tokens as follows:

- **Typography**: Uses `button` property from `MDCTypographyScheme` (14pt, Medium weight)
- **Color**: Uses `primaryColor` for filled background, `onPrimaryColor` for text
- **Shape**: Uses `smallComponentShape` from `MDCShapeScheme` (typically 4pt rounded corners)
- **Spacing**: Standard button padding with minimum touch target of 44pt

**Implementation**: `components/Buttons/src/MDCButton.h/.m`

### Material Card
The Material Card component consumes design system tokens as follows:

- **Typography**: Inherits typography from container scheme for content
- **Color**: Uses `surfaceColor` for background, `onSurfaceColor` for content
- **Shape**: Uses `mediumComponentShape` from `MDCShapeScheme` (typically 8pt rounded corners)
- **Elevation**: Uses shadow elevation with configurable depth

**Implementation**: `components/Cards/src/MDCCard.h/.m`

Both components follow the iOS Material Design system by implementing theming protocols that accept `MDCContainerScheme` instances, ensuring consistent application of design tokens across the component library.
