# Simple Cloud Function to demonstrate bug in GCP

### Steps to reproduce

Login to your GCP project in your CLI and type `./deploy.sh`

After that, go to GCP Console -> Logging, and select your function.
It may take a minute or so, and then you should see logs of your function execution.
It just says that it has started and crashed, but no anything else.

Normally it logs your info level log and then shows stack trace. Not anymore.

This is very critical bug because

1. It makes hard to debug errors
2. You don't notice easily if your Cloud Function has crashed!
3. You don't get emails anymore about your Cloud Function crashes even though you subscribe to GCP Cloud Function errors

Our team noticed it first in 28th April 2020.
