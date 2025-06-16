# The Proxy Pattern (A structural design pattern)
The Proxy structural design pattern manages and controls access to objects by hiding them behind intermediaries known as proxies.

* Provides controlled access to objects
* Delays expensive creation and initialization
* Protects sensitive resources from unauthorized access

The Proxy Pattern enables controlled access to an object through a placeholder.

## Remote Proxy
* Acts as a local placeholder for remote resource
* Optimizes complex network operations

## Virtual Proxy
* Manages expensive resources used frequently
* Improves system performances and reduces memory usage
* Postpones the creation of heavyweight objects

## Protective Proxy
* Limits access to sensitive objects
* Performs necessary checks before delegating requests to protected objects.


## How it works
* Provides the same interface as the original object
* Directs client calls to the real object
* Performs additional functions


## Pitfalls(mistake by developer)
* Bypassing the Proxy and directly access the RealSubjects objects


# Conclusion
The Proxy design pattern is critical for efficient resource management and controlled access to objects.
