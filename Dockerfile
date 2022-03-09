FROM sonarsource/sonar-scanner-cli:4.7

LABEL version="1.1.0" \
      repository="https://github.com/ptuc/sonarqube-scan-action" \
      homepage="https://github.com/ptuc/sonarqube-scan-action" \
      maintainer="SonarSource" \
      com.github.actions.name="SonarQube Scan" \
      com.github.actions.description="Scan your code with SonarQube to detect Bugs, Vulnerabilities and Code Smells in up to 27 programming languages!" \
      com.github.actions.icon="check" \
      com.github.actions.color="green"

RUN apk add --no-cache openssl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
