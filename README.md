# ARAP

ARAP is an Android anti-analysis technology detector based on **Androguard**.

---

## Usage

1. **Prepare APKs**:
   - Place the APKs you want to analyze in the `apks` directory.
   - Rename the APK files to their expected **SHA-256** values.

2. **Preprocessing**:
   - Run `Pretreatment.py` to preprocess the APKs.

3. **Analysis**:
   - Run `ARAP.py` to perform the analysis.

4. **Results**:
   - The analysis results are stored in the newly generated `output_xxx` directory.

---

## Dynamic Analysis in ARAP

In the default configuration of ARAP, the dynamic analysis phase uses **Monkey** to randomly explore the GUI of Android apps. This is because, at the current stage, ARAP's dynamic analysis is primarily focused on **US** and **PPA** techniques, and does not default to more complex GUI exploration algorithms.

### Enhancing ARAP Performance

To further enhance the performance of ARAP, you can replace the default **Monkey** exploration tool with **Delm**, a novel GUI exploration algorithm proposed by Hu et al. Delm leverages Android's deep links to improve code coverage, making it a powerful alternative for GUI exploration.

You can easily integrate Delm into ARAP by invoking the `process_apk` function in `call_dynamic.py` during the dynamic analysis phase.

### About Delm

Delm is a state-of-the-art algorithm designed to improve GUI exploration coverage by integrating deep links. For more details about Delm, please refer to the following:

- **GitHub Repository**: [https://github.com/huhanGitHub/guidedExplore](https://github.com/huhanGitHub/guidedExplore)
- **Original Paper**:  
  > **Enhancing GUI Exploration Coverage of Android Apps with Deep Link-Integrated Monkey**  
  > Han Hu, Han Wang, Ruiqi Dong, Xiao Chen, Chunyang Chen  
  > *ACM Transactions on Software Engineering and Methodology (TOSEM)*, 2024.  
  > Publisher: ACM New York, NY.  
  > DOI: [https://arxiv.org/pdf/2305.05198.pdf](https://arxiv.org/pdf/2305.05198.pdf)

By integrating Delm, ARAP can achieve significantly higher code coverage in dynamic analysis, enhancing the overall analysis effectiveness.

---

## APK Analysis Reports

APK analysis reports are in the master branch.

---

## AOSP Compatibility

ARAP matching custom AOSP is available at:  
[Download AOSP](https://drive.google.com/drive/folders/12ewC9p7cd_23I8Qgd-s8KyRsociIhMFJ?usp=drive_link).

---

## What Are Anti Runtime Analysis Techniques?

Android Anti Runtime Analysis (ARA) techniques refer to a set of technical methods or approaches employed in Android applications to protect them from dynamic runtime analysis attacks. **Note:** Obfuscation, as a common anti-static analysis technique, is not within the scope of our research.

---

## ARA Techniques

ARA techniques serve different purposes based on the developer's intent:
- **Benign developers**: Use ARA to protect intellectual property, prevent reverse engineering, and deter malicious behavior.
- **Malicious developers**: Employ ARA to conceal malicious activities, evade detection, and enhance persistence.

---

### Anti-Debugging (AD)

#### 1. Using Timing Check (UTC)
Detects debuggers based on execution speed differences.

#### 2. Using Signals (US)
Detects debugging by checking if the application captures SIGTRAP signals.

#### 3. Using TracerPID (UTP)
Checks if the `TracerPID` value in `/proc/PID/status` is non-zero.

#### 4. Preempt Ptrace API (PPA)
Prevents external debuggers by attaching the application to itself.

#### 5. Anti-Dumping (ADU)
Prevents dumping the application's code using event monitoring (e.g., Inotify).

#### 6. Debuggable and Debugger Features (DDF)
Uses Android APIs (`isDebuggerConnected`, `waitingForDebugger`) to detect debugger presence.

#### 7. Using Breakpointset Structure (UBS)
Blocks debugging by manipulating the breakpoint structure.

#### 8. Altering Debugger Memory (ADM)
Manipulates debugger behavior by modifying global VM state variables.

---

### Virtual Environment Detection (VED)

#### 1. Emulator Detection (ED)
- **Device Identifier (DI)**: Detects emulators by checking Android ID.
- **Current Build (CB)**: Checks build parameters for emulator patterns.
- **Telephony Manager (TM)**: Examines missing or invalid telephony data.
- **Hardware Components (HC)**: Inspects hardware info for inconsistencies.
- **Emulator Related Strings (ERS)**: Searches for emulator-specific strings or files.
- **Sensor Information (SI)**: Detects fixed/random sensor data in emulators.
- **CPU Performance (CSBD, TBCBD, MVBD)**: Detects differences in emulator CPU behavior.

#### 2. App-Level Virtualization Detection (ALVD)
Detects virtualized environments by examining file paths, shared UIDs, ports, or hooking behavior.

---

### Anti-Tampering (AT)

#### 1. Signature Checking (SC)
Verifies the app's digital signature for integrity.

#### 2. Code Integrity Checking (CIC)
Compares runtime hash values of code files against expected values.

#### 3. SafetyNet Attestation (SA)
Uses Google's SafetyNet API or Play Integrity API for tamper detection.

#### 4. Installer Verification (IV)
Ensures the app is installed from trusted sources.

---

### Anti-Hooking (AH)

#### 1. Xposed
Detects Xposed environment through system file checks.

#### 2. Frida
Detects Frida environment by searching for core components like `fridaserver`.

---

### Root Detection (RD)

#### 1. Check Installed Packages (CIP)
Checks for root tools like `su`, SuperSU, Magisk.

#### 2. Check Shell Commands Execution (CSCE)
Attempts to execute root-only commands to detect rooting.

#### 3. Check Build Tag and System Properties (CBTSP)
Examines build tags and system properties for root indications.

#### 4. Directory Permissions (DP)
Inspects permissions of sensitive directories.

---

## Term List

| Comprehensive Expression                    | Abbreviation  |
|--------------------------------------------|---------------|
| Anti-Debugging                              | AD            |
| Using Timing Check                          | UTC           |
| Using Signals                               | US            |
| Using TracerPID                             | UTP           |
| Preempt Ptrace API                          | PPA           |
| Anti-Dumping                                | ADU           |
| Debuggable and Debugger Features           | DDF           |
| Using Breakpointset Structure               | UBS           |
| Altering Debugger Memory                    | ADM           |
| Virtual Environment Detection               | VED           |
| Emulator Detection                          | ED            |
| Device Identifier                           | DI            |
| Current Build                               | CB            |
| Telephony Manager                           | TM            |
| Hardware Composition                        | HC            |
| Emulator Related Strings                    | ERS           |
| Sensor Information                          | SI            |
| Context Switch Based Detection              | CSBD          |
| Translation Block Cache Based Detection     | TBCBD         |
| Misaligned Vectorization Based Detection    | MVBD          |
| App-Level Virtualization Detection          | ALVD          |
| File Path                                   | FP            |
| Share UID                                   | SU            |
| Port Detection                              | PD            |
| Code Injection and Hooking                  | CIH           |
| Anti-Tampering                              | AT            |
| Signature Checking                          | SC            |
| Code Integrity Checking                     | CIC           |
| SafetyNet Attestation                       | SA            |
| Installer Verification                      | IV            |
| Root Detection                              | RD            |
| Check Installed Packages                    | CIP           |
| Check Shell Commands Execution              | CSCE          |
| Check Build Tag and System Properties       | CBTSP         |
| Directory Permissions                       | DP            |

---


