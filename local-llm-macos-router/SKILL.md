---
name: local-llm-macos-router
description: Route tasks to the best local model according to resources, avoiding loading too many large models on Mac M4 32GB.
---

# Local LLM macOS Router

## Core Guidelines
1. **Model Selection**: Select the appropriate local model depending on the task type (e.g. coding, research, PM, quick checks).
2. **Hardware Constraints**: Optimize configurations for a Mac M4 with 32 GB RAM.
3. **RAM Management**: Avoid loading multiple large models concurrently to prevent swapping and performance drops.
4. **Task Routing**:
   - PM / Architecture: Route to smart local model or cloud if complex.
   - Code: Use specialized coding models.
   - Simple tasks: Use lightweight, fast models.
5. **Cloud Fallback**: Only escalate to cloud models when local processing is insufficient or too slow for the task size.
