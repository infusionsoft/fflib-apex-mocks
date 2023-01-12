# Keap apex-mocks

## Getting Started
1. Clone this repo

2. Create a .sfdx directory, a file named "sfdx-config.json" inside that directory, and update your default devhub email address
```
{
     "defaultdevhubusername": "<your_email>@keap.com"
}
```  

3. Run "createScratchOrg.sh" to create a new scratch org.
```
npm run cci:createScratch
```  

4. One time per repo, you may want to set your default username
```bash
npm run cci:setDefaultScratch
```

That's it, you are ready to work in your scratch org.


