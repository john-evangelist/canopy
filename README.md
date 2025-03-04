# Canopy

Canopy is an edge-optimized, distributed feature flag system designed for low-latency environments. It enables fine-grained feature control with dependency-based flag resolution and real-time synchronization.

## 🚀 Planned Features

### Core Functionality
- **Dependency-Based Flags** – Flags can depend on other flags, ensuring hierarchical control.
- **Change History Without Hard Deletes** – Flag changes are stored instead of hard deleting, allowing auditability.
- **Multi-Tenancy & Segmentation** – Flags are scoped per project and environment (e.g., dev, staging, production).

### Edge Optimization
- **Edge Node Caching** – Flags are cached locally with a configurable TTL.
- **Resilient Network Handling** – Edge nodes serve cached flags during network partitions and refresh on reconnection.
- **Conflict Resolution** – Nodes accept the latest event and resolve inconsistencies via CRDT-based mechanisms.

### Sync Mechanisms
- **Hybrid Sync Approach**
  - **Primary:** Phoenix.PubSub for real-time updates.
  - **Fallback:** Periodic polling in case of missed updates.

### API & Storage
- **PostgreSQL for Flag Storage** – Ensures consistency and scalability.
- **ETS for Fast Caching** – Optimized for quick lookups.
- **gRPC API for Flag Retrieval** – High-performance client-server communication.

## 📌 Project Status
🚧 **Work in progress** – Canopy is currently in early development. Features listed above are **planned** but not yet implemented.

## 💡 Contributing
Interested in contributing? Feel free to open issues, suggest improvements, or discuss ideas!

## 📜 License
TBD – The license will be defined as the project matures.

