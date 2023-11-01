# peer2profit-gui

## **Introduction**
The Peer2Profit is a peer-to-peer network that allows users to earn money by sharing your traffic.

After Peer2Profit stopped providing an official docker image and the last available version stopped working, the only option for Linux is using their GUI application. This image lets you run the official GUI application in a headless container similar to the previous Linux versions.

## **Usage**
```bash
docker run --name peer2profit -e INSTALL_ID=<random uuidv4> -e EMAIL=<email> 1randomdev/peer2profit-gui
```

**\*INSTALL_ID:** This ID is used to identify the instance in your device list and should be kept the same for each installation. You can generate a new UUIDv4 on [UUIDTools.com](https://www.uuidtools.com/v4).

## **Notes**
Unfortunately it's not possible to check the status of a running instance since the new GUI application does not write any logs. With the new client there's also no support for ARM processors.

## **Disclaimer**
This project is not officially affiliated with Peer2Profit.
