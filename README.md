# Installation process
```bash
helm install -n odarix odarix oci://registry.odarix.com/charts/odarix --create-namespace --version 0.4.3 --set apiToken=YOUR_API_TOKEN
```

or 

```bash
helm pull --untar oci://registry.odarix.com/charts/odarix --version 0.4.3
```
then edit values.yaml and install chart with the command:

```bash
helm upgrade -n odarix odarix odarix/ --create-namespace
```