def analyze_log(log):
    if "failed login" in log:
        return "Issue: Authentication failure | Fix: Check MFA or password"

    if "device not compliant" in log:
        return "Issue: Device compliance | Fix: Sync device with MDM"

    if "service down" in log:
        return "Issue: Service outage | Fix: Check Azure service health"

    return "No issue detected"


# Demo test
log = "failed login from user"
print(analyze_log(log))