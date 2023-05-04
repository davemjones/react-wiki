## Template URL

https://learn.microsoft.com/en-us/aspnet/core/client-side/spa/react?view=aspnetcore-7.0&tabs=netcore-cli

## Secrets

Create a secrets.env file in the .devcontainer folder.
Contents should include at minimum the following:

```
DEV_CERT_PASSWORD=[your secure password]
DEV_CERT_FILENAME=aspnetapp.pfx
```

## Create dev cert on host

```
dotnet dev-certs https -ep aspnetapp.pfx -p [your secure password]
dotnet dev-certs https --trust
```

## Set ASPNETCORE_DEV_CERT environment variable

Add this environment variable to point to your https cert path.
```
ASPNETCORE_DEV_CERT=[path to .aspnet/dev-certs/https]
```

# Troubleshooting
## OmniSharp
If the OmniSharp server fails to start up, try setting the "Omnisharp: Sdk Path" setting to `/usr/local/dotnet`
