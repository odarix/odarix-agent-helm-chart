{{- define "agentEnvs" }}
- name: AGENT_API_TOKEN
  value: {{ required "Agent API-token is required" .Values.apiToken }}
{{ with .Values.agent }}
- name: AGENT_UPDATE_DOMAIN
  value: {{ .updateDomain | quote }}
- name: AGENT_BASE_DOMAIN
  value: {{ .baseDomain | quote }}
- name: AGENT_PRODUCT_NAME
  value: {{ .productName | quote }}
- name: AGENT_COLLECTOR__HOST
  value: {{ .collectorHost | quote }}
- name: AGENT_COLLECTOR__TLS_HOST
  value: {{ .collectorTlsHost | quote }}
- name: AGENT_COLLECTOR__PORT
  value: {{ .collectorPort | quote }}
{{- end }}
{{- end }}