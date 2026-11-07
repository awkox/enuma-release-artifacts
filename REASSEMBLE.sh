#!/bin/bash
cat part_zip_* > lineage-23.2-20261107-UNOFFICIAL-enuma.zip
cat part_boot_* > boot.img
sha256sum -c <(grep -E "zip|boot.img" SHA256SUMS | sed "s|lineage|lineage|") 2>/dev/null || true
sha256sum lineage-23.2-20261107-UNOFFICIAL-enuma.zip boot.img vendor_boot.img
