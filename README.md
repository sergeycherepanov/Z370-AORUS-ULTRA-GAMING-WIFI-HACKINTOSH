# Z370 AORUS ULTRA GAMING WIFI HACKINTOSH

|                 |            | 
| --------------- | -------    |
| ![About This Mac](about.png) | ![Wifi](wifi.png)
## Components

| Component       | Price     | Manufacturer  | Model
| --------------- | -------   | ------------- | -----
| CPU             | $344.99   | Intel         | [Core i7-9700K](https://ark.intel.com/content/www/us/en/ark/products/186604/intel-core-i7-9700k-processor-12m-cache-up-to-4-90-ghz.html)
| CPU-Cooler      | $29.99    | Zalman        | [CNPS10X Optima](http://www.zalman.com/contents/products/view.html?no=344)
| Motherboard     | $129.99   | Gigabyte      | [Z370 AORUS ULTRA GAMING WIFI](https://www.gigabyte.com/Motherboard/Z370-AORUS-ULTRA-GAMING-WIFI-rev-10/)
| Memory          | $129.98   | GeIL          | [EVO SPEAR 32GB (4x8GB) DDR4 DRAM 3000MHz C16 (GSB416GB3000C16ADC)](https://www.newegg.com/geil-16gb-288-pin-ddr4-sdram/p/N82E16820158528)
| Storage         | $89.99    | Micron        | [960GB (1TB) 5100 ECO SATA III m.2](https://www.micron.com/products/solid-state-drives/product-lines/5100)
| Video-Card      | $149.99   | ASUS          | [EX-RX570-O4G](https://www.asus.com/Graphics-Cards/EX-RX570-O4G/)
| Case            | $158.02   | EVGA          | [DG-77 Alpine White](https://www.evga.com/products/product.aspx?pn=176-W1-3542-KR)
| PSU             | $54.99    | Seasonic      | [SSR-650GB3](https://seasonic.com/s12iii)
| Case-Fans       | $39.90    | Anidees       | [AI Tesseract 120mm 3pcs RGB](http://anidees.com/product/ai-tesseract-120/)
| WiFi/Bluetooth  | $13.99    | Broadcom      | [BCM94350ZAE](https://ru.aliexpress.com/item/32632959564.html)
|                 |           |               | 
| Total           | $1,141.83 |               | 

## EFI

### drivers/UEFI

| Driver               | Purpose
| -------------------- | ---
| ApfsDriverLoader.efi | Apple File System support
| AptioMemoryFix.efi   | Allows macOS to boot with UEFI
| VBoxHfs.efi          | Allows to boot from USB sticks
| SMCHelper.efi        | 

* When booting from a USB drive (e.g. for an installer), VBoxHfs.efi is required.

### kexts/Other

| Kext               | Purpose
| ------------------ | ---
| [AppleALC.kext](https://github.com/acidanthera/AppleALC)               | Native macOS HD audio for not officially supported codecs
| [FakeSMC.kext](https://github.com/RehabMan/OS-X-FakeSMC-kozlek)        | SMC emulator
| [Lilu.kext](https://github.com/acidanthera/Lilu)                       | Arbitrary kext and process patching on macOS
| [WhateverGreen.kext](https://github.com/acidanthera/WhateverGreen)     | Various patches necessary for certain ATI/AMD/Intel/Nvidia GPUs
| [FakePCIID.kext](https://github.com/RehabMan/OS-X-Fake-PCI-ID)         | Allow returning Fake PCI ID from IOPCIDevice
| [IntelMausiEthernet.kext](https://github.com/Mieze/IntelMausiEthernet) | macOS driver for Intel onboard LAN
| [USBInjectAll.kext](https://github.com/RehabMan/OS-X-USB-Inject-All) | Kext to inject all USB ports for the installed Intel EHCI/XHCI chipset automatically.
| ------------------ | ---
| [BrcmPatchRAM2.kext](https://github.com/RehabMan/OS-X-BrcmPatchRAM) | Broadcom PatchRAM driver for macOS
| BrcmFirmwareData.kext | Part of BrcmPatchRAM2.kext

* USB: All of my USB ports seem to work, my computer can sleep/wake/shutdown. If any of these were not the case, You would need USBInjectAll.kext and ACPI patches produced by usbmap.
