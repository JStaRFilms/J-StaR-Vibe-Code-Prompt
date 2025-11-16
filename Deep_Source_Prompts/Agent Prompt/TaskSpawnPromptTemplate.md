# 🎯 **Task Spawn Prompt Template**
*Reusable template for creating detailed task prompts that spawn independent agents*

---

## 📋 **Task Overview**
[Replace with specific task description]

**Objective:** [Clear, measurable goal]
**Scope:** [What's included/excluded]
**Timeline:** [Expected completion time]
**Priority:** [High/Medium/Low]

---

## 🔍 **Current State Analysis**

### 📁 **Project Structure**
```
[Include relevant project structure]
```

### 📊 **Current Implementation Status**
- ✅ **Completed:** [List what's already done]
- 🔄 **In Progress:** [List current work]
- ❌ **Pending:** [List what needs to be done]
- 🚨 **Blockers:** [List any obstacles]

### 🔗 **Dependencies & Relationships**
- **Depends on:** [Other components/features]
- **Used by:** [Components that depend on this]
- **Related files:** [List all relevant files]

---

## 📋 **Detailed Requirements**

### 🎯 **Functional Requirements**
1. **[REQ-001]** [Specific requirement with acceptance criteria]
2. **[REQ-002]** [Specific requirement with acceptance criteria]
3. **[REQ-003]** [Specific requirement with acceptance criteria]

### 🎨 **Design Requirements**
1. **[DES-001]** [UI/UX requirements]
2. **[DES-002]** [Styling requirements]
3. **[DES-003]** [Responsive requirements]

### 🔧 **Technical Requirements**
1. **[TECH-001]** [Technical specification]
2. **[TECH-002]** [Performance requirements]
3. **[TECH-003]** [Security requirements]

---

## 📚 **Implementation Guide**

### 🏗️ **Architecture Decisions**
[Document key architectural choices and why they were made]

### 📝 **Code Patterns to Follow**
```typescript
// Example patterns and conventions
interface ComponentProps {
  // Required props
  required: string;
  // Optional props
  optional?: string;
}

// Component structure
const ComponentName: React.FC<ComponentProps> = ({
  required,
  optional
}) => {
  // Implementation
};
```

### 🔗 **Integration Points**
- **API Endpoints:** [List endpoints to integrate with]
- **External Services:** [List external dependencies]
- **Internal Components:** [List components to integrate with]

---

## ✅ **Success Criteria**

### Code Quality
- [ ] **TypeScript Compliance:** All components properly typed
- [ ] **Linting:** Passes all ESLint rules
- [ ] **Testing:** Unit tests with >80% coverage
- [ ] **Documentation:** Comprehensive TSDoc comments

### Performance
- [ ] **Bundle Size:** < [X]KB increase
- [ ] **Runtime:** < [X]ms load time
- [ ] **Memory:** No memory leaks
- [ ] **Accessibility:** WCAG 2.1 AA compliance

### Functionality
- [ ] **Core Features:** All requirements implemented
- [ ] **Edge Cases:** Error handling for all scenarios
- [ ] **Cross-browser:** Works in target browsers
- [ ] **Mobile:** Responsive across all breakpoints

### User Experience
- [ ] **Intuitive:** Easy to understand and use
- [ ] **Accessible:** Screen reader compatible
- [ ] **Performant:** Smooth interactions
- [ ] **Consistent:** Matches design system

---

## 📖 **Documentation Requirements**

### 📄 **Feature Documentation** (`docs/features/[FeatureName].md`)
```markdown
# Feature: [Feature Name]

## 1. Overview
[Purpose and goals]

## 2. Architecture
[Technical architecture and data flow]

## 3. API Reference
[Props, interfaces, and usage examples]

## 4. Implementation Details
[Key implementation decisions]

## 5. Usage Examples
[Code samples for different scenarios]

## 6. Testing
[Testing strategies and examples]

## 7. Maintenance
[Update procedures and troubleshooting]
```

### 💻 **Code Documentation**
- [ ] **TSDoc Comments:** All public interfaces and functions
- [ ] **Inline Comments:** Complex logic explanations
- [ ] **README Updates:** Installation and usage instructions
- [ ] **Changelog:** Document breaking changes

---

## 🧪 **Quality Assurance**

### Pre-Implementation Checklist
- [ ] **Requirements Review:** All requirements understood
- [ ] **Design Review:** UI/UX approved
- [ ] **Technical Review:** Architecture approved
- [ ] **Dependencies:** All dependencies available

### Implementation Checklist
- [ ] **Code Standards:** Follows project conventions
- [ ] **Security:** No security vulnerabilities
- [ ] **Performance:** Meets performance targets
- [ ] **Accessibility:** WCAG compliance verified

### Testing Checklist
- [ ] **Unit Tests:** All functions tested
- [ ] **Integration Tests:** Component interactions tested
- [ ] **E2E Tests:** User workflows tested
- [ ] **Cross-browser:** Tested in all target browsers

### Deployment Checklist
- [ ] **Build:** Successful production build
- [ ] **Linting:** No linting errors
- [ ] **Type Check:** No TypeScript errors
- [ ] **Bundle Analysis:** Size within limits

---

## 🚨 **Emergency Procedures**

### If Implementation Breaks
1. **Immediate Rollback:** Revert to last working version
2. **Error Analysis:** Check console for specific errors
3. **Dependency Check:** Verify all imports are correct
4. **Type Check:** Run TypeScript compiler for issues

### If Performance Issues
1. **Bundle Analysis:** Check for unnecessary imports
2. **Image Optimization:** Verify Next.js Image usage
3. **Re-rendering:** Check for unnecessary re-renders
4. **Lazy Loading:** Implement for heavy components

### If User Feedback Issues
1. **A/B Testing:** Compare with previous version
2. **Analytics Review:** Check user behavior metrics
3. **Heatmap Analysis:** Identify usability issues
4. **User Interviews:** Gather qualitative feedback

---

## 📋 **Task Breakdown**

### Phase 1: Planning & Setup
- [ ] **Task Analysis:** Understand requirements and scope
- [ ] **Architecture Design:** Design technical solution
- [ ] **File Structure:** Create necessary directories and files
- [ ] **Dependencies:** Install required packages

### Phase 2: Core Implementation
- [ ] **Component Creation:** Build main components
- [ ] **Logic Implementation:** Add business logic
- [ ] **Styling:** Implement responsive design
- [ ] **Integration:** Connect with existing systems

### Phase 3: Enhancement & Optimization
- [ ] **Performance Optimization:** Improve loading and runtime
- [ ] **Accessibility:** Add ARIA labels and keyboard support
- [ ] **Error Handling:** Implement comprehensive error boundaries
- [ ] **Edge Cases:** Handle all possible scenarios

### Phase 4: Testing & Documentation
- [ ] **Unit Testing:** Test individual functions and components
- [ ] **Integration Testing:** Test component interactions
- [ ] **Documentation:** Create comprehensive guides
- [ ] **Code Review:** Self-review and improvements

### Phase 5: Deployment & Monitoring
- [ ] **Build Verification:** Ensure production build works
- [ ] **Performance Monitoring:** Set up performance tracking
- [ ] **Error Monitoring:** Implement error tracking
- [ ] **User Feedback:** Monitor user satisfaction

---

## 🔧 **Tools & Resources**

### Development Tools
```bash
# Code Quality
npm run lint          # ESLint checking
npm run type-check    # TypeScript validation
npm run test         # Run test suite
npm run build        # Production build

# Performance
npm run analyze      # Bundle analysis
npm run lighthouse   # Performance audit

# Development
npm run dev          # Development server
npm run storybook    # Component library
```

### External Resources
- **Design System:** [Link to design system]
- **API Documentation:** [Link to API docs]
- **Component Library:** [Link to existing components]
- **Style Guide:** [Link to style guidelines]

---

## 📞 **Communication Protocol**

### Progress Updates
- **Daily Standup:** Brief progress update
- **Blocker Alerts:** Immediate notification of obstacles
- **Milestone Completion:** Notification when phases complete
- **Final Delivery:** Comprehensive delivery summary

### Feedback Integration
- **Code Review:** Address all review comments
- **User Testing:** Incorporate user feedback
- **Performance Data:** Adjust based on metrics
- **Stakeholder Input:** Consider all stakeholder requirements

---

## 🎯 **Final Deliverables**

### Code Deliverables
- [ ] **Source Code:** Complete implementation
- [ ] **Tests:** Comprehensive test suite
- [ ] **Documentation:** User and developer guides
- [ ] **Build Artifacts:** Production-ready build

### Documentation Deliverables
- [ ] **Feature Documentation:** `docs/features/[FeatureName].md`
- [ ] **API Documentation:** Complete API reference
- [ ] **Usage Examples:** Code samples and tutorials
- [ ] **Troubleshooting Guide:** Common issues and solutions

### Quality Assurance Deliverables
- [ ] **Test Results:** Test coverage and results
- [ ] **Performance Report:** Before/after metrics
- [ ] **Accessibility Audit:** WCAG compliance report
- [ ] **Security Review:** Security assessment results

---

## 📈 **Success Metrics**

### Quantitative Metrics
- **Performance:** [Target metrics]
- **Bundle Size:** [Target size]
- **Test Coverage:** [Target percentage]
- **Load Time:** [Target time]

### Qualitative Metrics
- **User Satisfaction:** [Target score]
- **Code Quality:** [Target score]
- **Maintainability:** [Target score]
- **Accessibility:** [Target compliance level]

---

## 🚀 **Next Steps**

1. **Review this prompt** and ensure all requirements are clear
2. **Ask clarifying questions** if anything is unclear
3. **Begin implementation** following the outlined phases
4. **Provide regular updates** on progress and any blockers
5. **Deliver final results** with comprehensive documentation

---

*This template ensures consistent, high-quality task execution with clear expectations, comprehensive documentation, and measurable success criteria.*
