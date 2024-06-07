_Author_: @bhashinee \
_Created_: 2024/06/04 \
_Updated_: 2024/06/04 \
_Edition_: Swan Lake 

## Changes introduced through wrapper client

A wrapper client has been introduced because the generated client's APIs do not support pagination in the applicable APIs. This wrapper client is designed to enhance functionality by handling pagination for all APIs that support it.  

The wrapper client is written with the following changes to the APIs that support pagination:
- The `Paging` record is added as an optional input parameter of all APIs that support pagination.
- The users either provide the parameters for the initial call or the `Paging` record if the user wants to retrieve the next page.
