To solve the retain cycle problem, use `weak` properties where appropriate.  A `weak` property doesn't retain the object, preventing the cycle. 

```objectivec
@interface MyClass : NSObject

@property (nonatomic, weak) AnotherClass *anotherObject;

@end
```

Alternatively, you can use techniques like associating objects with a specific lifecycle, or using `__weak` references and managing references more explicitly.  Careful design and understanding of object ownership are crucial for avoiding retain cycles in Objective-C.