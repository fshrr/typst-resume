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

- Provisioned and operate a multi-node bare-metal Kubernetes cluster on Proxmox VE, running Talos Linux VMs — an immutable, API-managed OS with no SSH access and zero config drift [infra]
- Managed all VM and LXC provisioning declaratively with OpenTofu and the `bpg/proxmox` provider, enabling reproducible infrastructure state across hosts [infra]
- Deployed ArgoCD for GitOps cluster management — all K8s workloads declared in git, with topology visualization and sync diffs for change tracking [infra]
- Configured Cilium as the CNI with eBPF networking, replacing kube-proxy, enabling Gateway API routing and Hubble network observability [infra]
- Managed secrets using Infisical as source of truth with External Secrets Operator (ESO) syncing into Kubernetes Secrets, replacing manual secret rotation [infra]
- Provisioned ZFS storage pools on Proxmox hosts with virtio/virtiofs passthrough to VMs; deployed Longhorn for replicated app PVs with S3 snapshot backups [infra]
- Deployed unified observability stack — Prometheus + Grafana + Loki + Hubble — covering cluster metrics, workload logs, and eBPF network flows [infra]
- Wired GitHub Actions CI/CD: `tofu plan` on PR open, `tofu apply` on merge — infrastructure changes are gated behind code review [infra]
- Configured Tailscale mesh overlay for zero-trust remote access to cluster services across hosts [infra]
- Configured LXC containers with GPU passthrough (`/dev/dri/renderD128`) for hardware-accelerated media transcoding [infra]
- Self-hosts Open-WebUI backed by local LLM inference, managing persistent volume claims and service configuration on Kubernetes [infra] [ml]
- Automated LXC container bootstrap and configuration with Ansible playbooks [infra]

## Notes
- Talos Linux bullet: stronger signal than old PXE boot for production-grade infra — leads with OS-level discipline, no-SSH, immutability; strong for hardware-adjacent roles (Tenstorrent)
- ArgoCD GitOps bullet: strong for any DevOps/platform role — signals declarative ops maturity
- Cilium bullet: eBPF/networking signal; relevant for network-aware infra and platform roles
- Longhorn + ZFS bullet: covers both storage layers — app PVs and media; relevant for on-prem/bare-metal roles
- ESO/Infisical bullet: production secrets hygiene; niche pick, signals thoughtful ops
- GitHub Actions CI/CD: confirmed in repo (`tofu plan/apply` pipeline)
- GPU passthrough (LXC): relevant for ML infra or hardware-adjacent roles (e.g. Tenstorrent)
- Tailscale bullet: weaker standalone; combine with networking context if needed
- Open-WebUI/LLM bullet: weakest for pure infra roles; use only for ML infra or AI platform roles
- Node count: README says "multiple hosts" — fill in exact count if known
- Removed (inaccurate): netboot.xyz PXE boot (not in current repo), Traefik ingress (not used — Cilium Gateway API replaced it)
