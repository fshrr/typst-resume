# Homelab

---
name: Homelab
dates: 2023 — Present
type: Personal Infrastructure
---

## Tag Legend
- [infra] — systems, K8s, provisioning, networking, IaC
- [ml] — model work, pipelines, GPU, training/inference
- [product] — user-facing, business outcomes, scale metrics
- [api] — service/API design and implementation
- [leadership] — coordination, ownership, cross-team

---

## Bullets

- Provisioned and manage a multi-node bare-metal Kubernetes cluster on Proxmox VE — covering node lifecycle, storage provisioning, and rolling cluster upgrades [infra]
- Automated bare-metal node provisioning with netboot.xyz PXE boot, eliminating manual OS installation across cluster nodes [infra]
- Automated cluster configuration and service deployment with Ansible playbooks and Terraform/OpenTofu modules, maintaining fully reproducible infrastructure state [infra]
- Configured Traefik ingress with Tailscale mesh overlay for zero-trust service routing and secure remote access across the cluster [infra]
- Deployed Prometheus/Grafana observability stack with custom dashboards for cluster health, node utilization, and workload alerting [infra]
- Provisioned ZFS storage pools with NFS fileshare for persistent cluster storage across nodes [infra]
- Managed secrets across services using Infisical, replacing plaintext config and manual secret rotation [infra]
- Self-hosts Ollama for local LLM inference and a FOSS service stack, managing persistent volume claims and service configuration [infra] [ml]
- Automated cluster CI/CD with GitHub Actions for service deployment and config validation [infra]

## Notes
- PXE boot bullet is a strong bare-metal signal — lead with it for hardware-adjacent infra roles (e.g. Tenstorrent)
- ZFS + NFS = storage layer; relevant for on-prem/bare-metal roles
- Infisical = secrets management; niche pick, signals production-grade thinking
- Ollama bullet weakest for pure infra roles; strongest for ML infra roles
- GitHub Actions bullet: add only if you actually wired it to the homelab (confirm)
- Node count: fill in exact number if you remember
