# Bash Scripts Collection for System Administration

A comprehensive collection of bash scripts for system administration, monitoring, and automation tasks. These scripts demonstrate practical solutions for common DevOps and SysAdmin challenges.

## 📁 Script Categories

### 🔍 System Monitoring & Health Checks

#### **Disk Usage Monitoring**
- **`dfUse.sh`** - Monitors file system usage and alerts when any filesystem exceeds 90% capacity
- **`diskUsage.sh`** - Warns when disk usage exceeds 80% threshold
- **`diskTrack.sh`** - Enhanced disk monitoring with better error handling
- **`fsChecker.sh`** - File system checker with configurable thresholds
- **`fsUse.sh`** - Alternative disk usage monitoring script

#### **Directory Analysis**
- **`dirCheck.sh`** - Analyzes directory contents, counts subdirectories and files
- **`dirChecker.sh`** - Enhanced directory checker with additional validation
- **`dirUsage.sh`** - Directory usage analysis and reporting
- **`sizeChecker.sh`** - File and directory size analysis tool
- **`findFileSize.sh`** - Finds files larger than specified size thresholds

### 🖥️ Process & Service Management

- **`procChecker.sh`** - Checks if specified processes are running and counts instances
- **`serviceCheck.sh`** - Monitors system services, automatically restarts failed services
- **`top5mem.sh`** - Displays top 5 processes by memory usage

### 📊 File Analysis & Processing

#### **Log Analysis**
- **`apacheLog.sh`** - Analyzes Apache log files, shows top 5 IP addresses by request count
- **`logMonitor.sh`** - Real-time log monitoring for ERROR entries
- **`errorCount.sh`** - Counts ERROR entries in log files
- **`errorCount2.sh`** - Enhanced error counting with better feedback
- **`errorCount3.sh`** - Advanced error counting with additional features

#### **File Statistics**
- **`fileChecker.sh`** - Basic file validation and error counting
- **`fileChecker2.sh`** - Comprehensive file analysis (lines, words, characters)
- **`fileAnalyse.sh`** - Advanced file analysis and reporting
- **`fileRead.sh`** - File reading and processing utilities
- **`lineCount.sh`** - Simple line counting utility

### 🌐 Network Administration

#### **Network Scanning**
- **`pingIP.sh`** - Scans IP range (1-254) and identifies live hosts
- **`pingIP2.sh`** - Enhanced IP scanner with better reporting
- **`IPcheck.sh`** - Alternative IP connectivity checker

#### **Port Management**
- **`openPort.sh`** - Checks if specific ports are open on localhost

### 🔧 Development & Utilities

- **`makeScript.sh`** - Creates new executable script files with proper permissions
- **`numPrint.sh`** - Simple number printing utility (demonstrates loop constructs)

## 🚀 Usage Examples

### Monitor Disk Usage
```bash
./dfUse.sh
# Output: Warns if any filesystem exceeds 90% usage
```

### Scan Network Range
```bash
./pingIP.sh 192.168.1
# Scans 192.168.1.1 through 192.168.1.254
```

### Check Service Status
```bash
./serviceCheck.sh nginx /var/log/service.log
# Monitors nginx service and logs status
```

### Analyze Apache Logs
```bash
./apacheLog.sh /var/log/apache2/access.log
# Shows top 5 IP addresses by request count
```

### Check File Statistics
```bash
./fileChecker2.sh document.txt
# Shows lines, words, and character count
```

## 🎯 Use Cases

### **System Administration**
- **Health Monitoring**: Automated disk, process, and service monitoring
- **Alerting**: Early warning systems for resource exhaustion
- **Maintenance**: Automated service recovery and restart procedures

### **Security & Compliance**
- **Network Discovery**: Identify active hosts on network segments
- **Log Analysis**: Monitor for errors and security events
- **Port Scanning**: Verify service availability

### **Operations & DevOps**
- **Infrastructure Monitoring**: Real-time system health checks
- **Automation**: Scripted responses to common issues
- **Reporting**: Generate usage and performance reports

### **Development Support**
- **Environment Setup**: Quick script creation utilities
- **Troubleshooting**: Debug system and application issues
- **Performance Analysis**: Memory and resource usage tracking

## 📋 Prerequisites

- **Bash 4.0+**
- **Standard Unix/Linux utilities**: `awk`, `grep`, `wc`, `sort`, `ping`, `nc`
- **systemctl** (for service management scripts)
- **Appropriate permissions** for system monitoring tasks

## 🔒 Security Notes

- Scripts that modify system state require appropriate privileges
- Network scanning scripts should be used responsibly
- Log monitoring may require read access to system logs
- Service management scripts typically require sudo privileges

## 📈 Skill Level

These scripts demonstrate **intermediate beginner** to **intermediate** bash scripting skills, covering:
- Parameter handling and validation
- Error handling and exit codes
- Text processing and pattern matching
- System command integration
- Loop constructs and conditional logic
- File and process manipulation

Perfect for **System Administrator**, **DevOps Engineer**, or **Infrastructure Analyst** roles requiring automation and monitoring capabilities.

---

*Collection maintained for system administration, monitoring, and DevOps automation tasks.*