You are going to implement the **`<PAGE_NAME>` UI** using the mockup at:  
`<MOCKUP_PATH>`

Follow these rules carefully:

1. **Mockup replication**:
    
    - Replicate the mockup exactly as it is, with the exception of the sidebar.
        
    - If the implemented sidebar differs from the mockup sidebar, intelligently copy only the relevant section/tile/icon and insert it gracefully into the correct location.
        
    - Some sidebar sections are hierarchical (e.g. _User Management → Lead Magnet Lab_).
        
        - Clicking the parent (User Management) should take the user to its overview.
            
        - Child sections (Lead Magnet Lab, etc.) should then appear and be directly accessible.
            
2. **Guidelines to follow**:
    
    - Coding: `@/docs/coding_guidelines.md`
        
    - Styling: `@/docs/Styling-in-Next-and-Tailwind-v4.md`
        
    - Responsiveness: `@/docs/features/MobileFirstResponsiveDesign.md`
        
3. **Project context**:
    
    - Read: `@/docs/J StaR Personal Platform PRD.md` (to understand the project scope).
        
    - Routes: `@/docs/AdminPageRoutes.md` (to know where to implement this page).
        
4. **Behavior**:
    
    - If anything is unclear, ask questions before proceeding.


---


You are going to implement the **`<PAGE_NAME>` UI** using the mockup at:  
`<MOCKUP_PATH>`

Follow these rules carefully:

1. **Mockup replication**:
    
    - Replicate the mockup exactly as it is, with the exception of the sidebar.
        
    - If the implemented sidebar differs from the mockup sidebar, intelligently copy only the relevant section/tile/icon and insert it gracefully into the correct location.
        
    - Some sidebar sections are hierarchical (e.g. _User Management → Lead Magnet Lab_).
        
        - Clicking the parent (User Management) should take the user to its overview.
            
        - Child sections (Lead Magnet Lab, etc.) should then appear and be directly accessible.
            
2. **Guidelines to follow**:
	1. All guidelines in one file: '@/docs/combo_guidelines.md'
    
    - Coding: `@/docs/coding_guidelines.md`
        
    - Styling: `@/docs/Styling-in-Next-and-Tailwind-v4.md`
        
    - Responsiveness: `@/docs/features/MobileFirstResponsiveDesign.md`
        
3. **Project context**:
    
    - Read: `@/docs/J StaR Personal Platform PRD.md` (to understand the project scope).
        
    - Routes: `@/docs/AdminPageRoutes.md` (to know where to implement this page).
        
4. **Behavior**:
    
    - If anything is unclear, ask questions before proceeding.


---

You are going to implement the **`<PAGE_NAME>` UI** using the mockup at:
`<MOCKUP_PATH>`

Follow these rules carefully:

1.  **Core Task: Implement Page Content & Integrate Navigation**
    *   **Content Implementation**: Replicate the **main content area** of the page exactly as shown in the mockup.
    *   **Navigation**: **You MUST completely IGNORE the header, sidebar, or any other navigation elements shown in the mockup.** This project uses a new, centralized navigation system. Your task is to integrate this new page into that system, not to build the navigation UI yourself.

2.  **Navigation System Integration**:
    *   The new navigation is managed by the `<SharedNavigation>` and `<AdminNavigation>` components. All navigation links are defined as a list of `NavigationItem` objects.
    *   **Your task**:
        1.  Locate the primary navigation configuration file (e.g., an `adminItems` array in a layout, constants, or navigation-specific file).
        2.  Add a new `NavigationItem` object for `<PAGE_NAME>`.
        3.  Set the `href` property to the correct path, as defined in `@/docs/AdminPageRoutes.md`.
        4.  If `<PAGE_NAME>` is a sub-page of an existing section (e.g., *User Management → Lead Magnet Lab*), place its `NavigationItem` object inside the `children` array of the parent item.
    *   **Reference for the navigation system**: `@/docs/feature_navigation_system.md` *(Assuming you save the new nav logic there)*

3.  **Guidelines to Follow**:
    *   All guidelines in one file: `@/docs/combo_guidelines.md`
    *   Coding: `@/docs/coding_guidelines.md`
    *   Styling: `@/docs/Styling-in-Next-and-Tailwind-v4.md`
    *   Responsiveness: `@/docs/features/MobileFirstResponsiveDesign.md`

4.  **Project Context**:
    *   Read: `@/docs/J StaR Personal Platform PRD.md` (to understand the project scope).
    *   Routes: `@/docs/AdminPageRoutes.md` (this is the source of truth for the page's path).

5.  **Behavior**:
    *   If anything is unclear, especially the location of the navigation configuration, ask questions before proceeding.
