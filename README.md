# network-packet-counter
Bash-based network packet monitoring tool using tcpdump

# 🚦 Network Packet Counter

A lightweight **Bash-based network monitoring tool** that captures and counts network packets on a user-specified port for a custom duration using `tcpdump`.

This project demonstrates practical Linux networking, packet inspection, and shell scripting automation concepts used in cybersecurity environments.

---

## 📌 Overview

The Network Packet Counter allows users to monitor traffic on a chosen port and specify how long packets should be captured.
The script then analyzes the captured traffic and displays the total number of packets observed during that time window.

---

## ✨ Features

* Interactive port selection
* Custom capture duration (user-defined runtime)
* Packet capture using `tcpdump`
* Automatic packet counting
* Timeout-controlled monitoring
* Clean terminal output
* Lightweight Linux utility

---

## 🛠️ Technologies Used

* **Bash Scripting**
* **Linux Networking Tools**
* **tcpdump**
* Command-line utilities (`timeout`, `wc`)

---

## ⚙️ Requirements

* Linux OS (Ubuntu / Debian / Kali recommended)
* `tcpdump` installed
* sudo privileges

Install dependency:

```bash
sudo apt install tcpdump
```

---

## ▶️ Usage

Clone the repository:

```bash
git clone https://github.com/mittalsukhansh/network-packet-counter.git
cd network-packet-counter
```

Make script executable:

```bash
chmod +x tcp.sh
```

Run the script:

```bash
sudo ./tcp.sh
```

You will be prompted to enter:

1. Port number to monitor
2. Capture duration (in seconds)

---

## 🧠 How It Works

1. User enters a target port.
2. User specifies capture duration.
3. `tcpdump` captures packets on the selected port.
4. `timeout` stops capture automatically.
5. Output is piped into `wc -l` to count packets.
6. Final packet statistics are displayed.

---

## 📷 Example Output

```
enter the port number - 53
enter capture duration (seconds) - 5

Capturing packets on port 53 for 5 seconds...
packets captured: 34
```

---

## 🎯 Learning Objectives

* Understand packet capturing fundamentals
* Practice Bash scripting automation
* Learn Linux process and timeout control
* Work with real networking tools used in cybersecurity

---

## 🚀 Future Improvements

* Live packet monitoring dashboard
* Save capture logs automatically
* Traffic pattern analysis
* Basic intrusion detection alerts

---

## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

Sukhansh Mittal
GitHub: https://github.com/mittalsukhansh


