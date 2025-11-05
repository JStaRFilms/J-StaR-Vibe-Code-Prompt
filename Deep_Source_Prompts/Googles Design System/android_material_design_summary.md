# Android Material Design System Summary

## 1. Overall Theming Architecture

### Theme Structure
The Material Components for Android library provides a hierarchical theme system with multiple theme families:

- **Theme.Material3** - Modern Material 3 themes with full color schemes
- **Theme.Material3Expressive** - Enhanced Material 3 themes with expressive components
- **Theme.MaterialComponents** - Legacy Material Components themes
- **Theme.MaterialComponents.Light** - Light variant of legacy themes

### Core Theme Files
- `lib/java/com/google/android/material/theme/res/values/themes.xml` - Main theme declarations
- `lib/java/com/google/android/material/theme/res/values/themes_base.xml` - Base theme implementations with component styles
- `lib/java/com/google/android/material/theme/res/values/themes_bridge.xml` - Bridge themes for compatibility

### Theme Attributes
The base themes define comprehensive attribute sets including:
- **Color palettes**: Primary, secondary, tertiary, surface, error, and outline colors
- **Component styles**: Widget styles for buttons, cards, text inputs, etc.
- **Typography**: Text appearance styles for all type scales
- **Shape**: Corner radius and shape appearance definitions
- **Motion**: Animation durations, easing curves, and motion paths
- **Elevation**: Shadow and surface elevation values

### Custom Theme Application
To apply a custom theme:
1. Extend one of the base Material themes in your `styles.xml`
2. Override theme attributes using `<item name="attributeName">value</item>`
3. Apply the theme to your application or activity in `AndroidManifest.xml`

Example:
```xml
<style name="Theme.MyApp" parent="Theme.Material3.Light">
    <item name="colorPrimary">@color/my_primary</item>
    <item name="colorSecondary">@color/my_secondary</item>
</style>
```

## 2. Typography System

### Type Scale
Material 3 defines a comprehensive type scale with 15 text appearances:

#### Display Styles
- **Display Large**: 57sp, Medium weight, -0.00438596 letter spacing, 64sp line height
- **Display Medium**: 45sp, Regular weight, 0 letter spacing, 52sp line height
- **Display Small**: 36sp, Regular weight, 0 letter spacing, 44sp line height

#### Headline Styles
- **Headline Large**: 32sp, Regular weight, 0 letter spacing, 40sp line height
- **Headline Medium**: 28sp, Regular weight, 0 letter spacing, 36sp line height
- **Headline Small**: 24sp, Regular weight, 0 letter spacing, 32sp line height

#### Title Styles
- **Title Large**: 22sp, Regular weight, 0 letter spacing, 28sp line height
- **Title Medium**: 16sp, Medium weight, 0.009375 letter spacing, 24sp line height
- **Title Small**: 14sp, Medium weight, 0.00714286 letter spacing, 20sp line height

#### Body Styles
- **Body Large**: 16sp, Regular weight, 0.03125 letter spacing, 24sp line height
- **Body Medium**: 14sp, Regular weight, 0.01785714 letter spacing, 20sp line height
- **Body Small**: 12sp, Regular weight, 0.03333333 letter spacing, 16sp line height

#### Label Styles
- **Label Large**: 14sp, Medium weight, 0.00714286 letter spacing, 20sp line height
- **Label Medium**: 12sp, Medium weight, 0.04166667 letter spacing, 16sp line height
- **Label Small**: 11sp, Medium weight, 0.04545455 letter spacing, 16sp line height

### Emphasized Variants
Each style has an "Emphasized" variant that uses Medium font weight and adjusted properties for better hierarchy.

### Implementation Files
- `lib/java/com/google/android/material/typography/res/values/styles.xml` - Text appearance definitions
- `lib/java/com/google/android/material/typography/res/values/tokens.xml` - Generated token implementations
- Font families: `sans-serif` (regular) and `sans-serif-medium` (medium weight)

### Theme Integration
Typography is applied through theme attributes:
```xml
<item name="textAppearanceDisplayLarge">@style/TextAppearance.Material3.DisplayLarge</item>
<item name="textAppearanceBodyLarge">@style/TextAppearance.Material3.BodyLarge</item>
<!-- etc. -->
```

## 3. Color System

### Color Palette
Material 3 uses a dynamic color system with semantic color roles:

#### Primary Colors
- `colorPrimary` - Primary brand color
- `colorOnPrimary` - Content color on primary
- `colorPrimaryContainer` - Primary container background
- `colorOnPrimaryContainer` - Content on primary container

#### Secondary Colors
- `colorSecondary` - Secondary brand color
- `colorOnSecondary` - Content color on secondary
- `colorSecondaryContainer` - Secondary container background
- `colorOnSecondaryContainer` - Content on secondary container

#### Tertiary Colors
- `colorTertiary` - Tertiary accent color
- `colorOnTertiary` - Content color on tertiary
- `colorTertiaryContainer` - Tertiary container background
- `colorOnTertiaryContainer` - Content on tertiary container

#### Surface Colors
- `colorSurface` - Base surface color
- `colorOnSurface` - Content on surface
- `colorSurfaceVariant` - Variant surface color
- `colorOnSurfaceVariant` - Content on surface variant
- `colorSurfaceContainer*` - Multiple surface container levels

#### Error Colors
- `colorError` - Error state color
- `colorOnError` - Content on error
- `colorErrorContainer` - Error container background
- `colorOnErrorContainer` - Content on error container

#### Outline Colors
- `colorOutline` - Outline/border color
- `colorOutlineVariant` - Variant outline color

### Light & Dark Mode Implementation
The system provides separate color values for light and dark themes:

**Light Theme Colors** (from `m3_sys_color_light_*`):
- Primary: #6750A4 (purple)
- Secondary: #625B71 (neutral)
- Tertiary: #7D5260 (warm)
- Surface: #FEF7FF (near white)
- Error: #BA1A1A (red)

**Dark Theme Colors** (from `m3_sys_color_dark_*`):
- Primary: #D0BCFF (light purple)
- Secondary: #CCC2DC (light neutral)
- Tertiary: #EFB8C8 (light warm)
- Surface: #141218 (dark)
- Error: #FFB4AB (light red)

### Implementation Files
- `lib/java/com/google/android/material/color/res/values/colors.xml` - Legacy color definitions
- `lib/java/com/google/android/material/color/res/values/tokens.xml` - Material 3 color tokens
- Color references use the `@color/m3_ref_palette_*` format for the base palette

### Dynamic Colors
The library supports dynamic colors that adapt to system themes:
- `Theme.Material3.DynamicColors.Light`
- `Theme.Material3.DynamicColors.Dark`

## 4. Shape System

### Shape Categories
Material 3 defines shape scales with different corner sizes:

- **Extra Small**: 4dp corner radius
- **Small**: 8dp corner radius
- **Medium**: 12dp corner radius
- **Large**: 16dp corner radius
- **Large Increased**: 20dp corner radius
- **Extra Large**: 28dp corner radius
- **Extra Large Increased**: 32dp corner radius
- **Extra Extra Large**: 48dp corner radius

### Corner Treatments
All shapes use rounded corners with the "full corner family" (circular rounding).

### Implementation Files
- `lib/java/com/google/android/material/shape/res/values/tokens.xml` - Shape token definitions
- Shape appearances are defined as styles like `ShapeAppearance.M3.Sys.Shape.Corner.Small`

### Theme Integration
Shapes are applied through theme attributes:
```xml
<item name="shapeAppearanceCornerSmall">@style/ShapeAppearance.M3.Sys.Shape.Corner.Small</item>
<item name="shapeAppearanceCornerMedium">@style/ShapeAppearance.M3.Sys.Shape.Corner.Medium</item>
```

Components reference these through attributes like:
- `shapeAppearance="shapeAppearanceCornerMedium"`
- `shapeAppearanceSmallComponent` (legacy)
- `shapeAppearanceMediumComponent` (legacy)
- `shapeAppearanceLargeComponent` (legacy)

## 5. Spacing and Layout

### Standard Units
The system uses a 4dp baseline grid for spacing:
- Extra small: 4dp
- Small: 8dp
- Medium: 12dp
- Large: 16dp
- Extra large: 20dp+

### Layout Guidelines
Key spacing dimensions include:
- Button padding: 16dp horizontal, 10-16dp vertical
- Card margins: 16dp
- Component touch targets: 48dp minimum
- Icon sizes: 18-24dp
- Stroke widths: 1-2dp for outlines

### Implementation Files
- `lib/java/com/google/android/material/shape/res/values/dimens.xml` - Shape-related dimensions
- `lib/java/com/google/android/material/color/res/values/dimens.xml` - Color-related dimensions
- Various component-specific `dimens.xml` files

### Spacing Attributes
The theme defines spacing through dimension resources:
- `m3_sys_shape_corner_value_*` - Corner radius values
- `mtrl_*` - Legacy Material spacing
- `m3_*` - Material 3 spacing

## 6. Example Component Analysis

### Material Button
The Material Button component consumes design system tokens as follows:

- **Typography**: Uses `?attr/textAppearanceLabelLarge` for text styling (14sp, Medium weight)
- **Color**: Uses `?attr/colorPrimary` for filled button background, `?attr/colorOnPrimary` for text
- **Shape**: Uses `shapeAppearance="@style/ShapeAppearance.M3.Comp.Button.Small.Container.Shape.Round"` (fully rounded)
- **Spacing**: Uses container padding attributes (16dp horizontal, 10dp vertical for small buttons)

**Implementation**: `lib/java/com/google/android/material/button/res/values/styles.xml`

### Material Card
The Material Card component consumes design system tokens as follows:

- **Typography**: Inherits text appearances from theme for content
- **Color**: Uses `?attr/colorSurface` for background, `?attr/colorOnSurface` for content
- **Shape**: Uses `shapeAppearance="?attr/shapeAppearanceCornerMedium"` (12dp corner radius)
- **Elevation**: Uses `cardElevation="@dimen/m3_card_elevation"` for shadow depth

**Implementation**: `lib/java/com/google/android/material/card/res/values/styles.xml`

Both components follow the Material 3 design system by referencing theme attributes rather than hard-coded values, ensuring consistency and theming flexibility.
