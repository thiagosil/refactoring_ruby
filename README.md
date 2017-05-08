
Week 1 - Foreword - Ch 1, pg 7

Foreword . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . xiii
Preface . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .xv

Chapter 1: Refactoring, a First Example . . . . . . . . . . . . . . . . . . . . . . . 1
The Starting Point. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
The First Step in Refactoring . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 6
Decomposing and Redistributing the Statement Method . . . . . . . . . . . . . . 7
Replacing the Conditional Logic on Price Code with Polymorphism . . . . 32
Final Thoughts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 50
Chapter 2: Principles in Refactoring . . . . . . . . . . . . . . . . . . . . . . . . . 51
Where Did Refactoring Come From? . . . . . . . . . . . . . . . . . . . . . . . . . . . . 51
Defining Refactoring. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 52
Why Should You Refactor?. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 54
When Should You Refactor?. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 57
Why Refactoring Works . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 60
What Do I Tell My Manager?. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 61
Indirection and Refactoring . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 61
Problems with Refactoring . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 63
Refactoring and Design. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 67
It Takes A While to Create Nothing . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 69
Refactoring and Performance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70
Optimizing a Payroll System . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 71



viii Contents
Chapter 3: Bad Smells in Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 73
Duplicated Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 74
Long Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 74
Large Class . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
Long Parameter List . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76
Divergent Change . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 77
Shotgun Surgery . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 78
Feature Envy. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 78
Data Clumps. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79
Primitive Obsession . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79
Case Statements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 80
Parallel Inheritance Hierarchies . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 81
Lazy Class. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 81
Speculative Generality. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 81
Temporary Field . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82
Message Chains . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82
Middle Man . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 83
Inappropriate Intimacy . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 83
Alternative Classes with Different Interfaces. . . . . . . . . . . . . . . . . . . . . . . 83
Incomplete Library Class . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
Data Class . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
Refused Bequest . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 84
Comments . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 85
Metaprogramming Madness . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 86
Disjointed API . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 86
Repetitive Boilerplate . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 86
Chapter 4: Building Tests . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 87
The Value of Self-Testing Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 87
The Test::Unit Testing Framework . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 88
Developer and Quality Assurance Tests . . . . . . . . . . . . . . . . . . . . . . . . . . 91
Adding More Tests . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 92

Chapter 5: Toward a Catalog of Refactorings. . . . . . . . . . . . . . . . . . 97
Format of the Refactorings . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 97
Finding References . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 99
Chapter 6: Composing Methods . . . . . . . . . . . . . . . . . . . . . . . . . . . 101
Extract Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 102
Inline Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 108
Inline Temp. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110
Replace Temp with Query. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 111
Replace Temp with Chain. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 114
Introduce Explaining Variable. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 117
Split Temporary Variable . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 121
Remove Assignments to Parameters . . . . . . . . . . . . . . . . . . . . . . . . . . . . 124
Replace Method with Method Object. . . . . . . . . . . . . . . . . . . . . . . . . . . 127
Substitute Algorithm. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 131
Replace Loop with Collection Closure Method . . . . . . . . . . . . . . . . . . . 133
Extract Surrounding Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 135
Introduce Class Annotation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 139
Introduce Named Parameter . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 142
Remove Named Parameter . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 147
Remove Unused Default Parameter. . . . . . . . . . . . . . . . . . . . . . . . . . . . . 150
Dynamic Method Definition . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 152
Replace Dynamic Receptor with Dynamic Method
Definition . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 158
Isolate Dynamic Receptor . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 160
Move Eval from Runtime to Parse Time . . . . . . . . . . . . . . . . . . . . . . . . . 165
Chapter 7: Moving Features Between Objects. . . . . . . . . . . . . . . . . 167
Move Method. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 167
Move Field . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 172
Extract Class. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 175
Inline Class . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 179
Hide Delegate . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 181
Remove Middle Man . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 185



x Contents
Chapter 8: Organizing Data . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 187
Self Encapsulate Field . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 188
Replace Data Value with Object . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 191
Change Value to Reference . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 194
Change Reference to Value . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 198
Replace Array with Object . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 201
Replace Hash with Object . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 206
Change Unidirectional Association to Bidirectional . . . . . . . . . . . . . . . . 210
Change Bidirectional Association to Unidirectional . . . . . . . . . . . . . . . . 213
Replace Magic Number with Symbolic Constant . . . . . . . . . . . . . . . . . . 217
Encapsulate Collection . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 219
Replace Record with Data Class . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 224
Replace Type Code with Polymorphism . . . . . . . . . . . . . . . . . . . . . . . . . 225
Replace Type Code with Module Extension . . . . . . . . . . . . . . . . . . . . . . 232
Replace Type Code with State/Strategy . . . . . . . . . . . . . . . . . . . . . . . . . . 239
Replace Subclass with Fields . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 251
Lazily Initialized Attribute . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 255
Eagerly Initialized Attribute . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 257
Chapter 9: Simplifying Conditional Expressions . . . . . . . . . . . . . . . 261
Decompose Conditional . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 261
Recompose Conditional . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 264
Consolidate Conditional Expression . . . . . . . . . . . . . . . . . . . . . . . . . . . . 265
Consolidate Duplicate Conditional Fragments . . . . . . . . . . . . . . . . . . . . 268
Remove Control Flag . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 269
Replace Nested Conditional with Guard Clauses . . . . . . . . . . . . . . . . . . 274
Replace Conditional with Polymorphism . . . . . . . . . . . . . . . . . . . . . . . . 279
Introduce Null Object. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 284
Introduce Assertion. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 292
Chapter 10: Making Method Calls Simpler. . . . . . . . . . . . . . . . . . . 297
Rename Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 298
Add Parameter . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 300



Contents xi
Remove Parameter . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 302
Separate Query from Modifier . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 303
Parameterize Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 307
Replace Parameter with Explicit Methods . . . . . . . . . . . . . . . . . . . . . . . 310
Preserve Whole Object . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 313
Replace Parameter with Method. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 317
Introduce Parameter Object . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 320
Remove Setting Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 324
Hide Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 327
Replace Constructor with Factory Method . . . . . . . . . . . . . . . . . . . . . . . 328
Replace Error Code with Exception . . . . . . . . . . . . . . . . . . . . . . . . . . . . 332
Replace Exception with Test . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 337
Introduce Gateway . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 341
Introduce Expression Builder . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 346
Chapter 11: Dealing with Generalization . . . . . . . . . . . . . . . . . . . . 353
Pull Up Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 353
Push Down Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 356
Extract Module. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 357
Inline Module . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 362
Extract Subclass . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 363
Introduce Inheritance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 368
Collapse Heirarchy . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 371
Form Template Method . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 372
Replace Inheritance with Delegation. . . . . . . . . . . . . . . . . . . . . . . . . . . . 386
Replace Delegation with Hierarchy. . . . . . . . . . . . . . . . . . . . . . . . . . . . . 389
Replace Abstract Superclass with Module. . . . . . . . . . . . . . . . . . . . . . . . 392
Chapter 12: Big Refactorings . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 397
The Nature of the Game . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 397
Why Big Refactorings Are Important . . . . . . . . . . . . . . . . . . . . . . . . . . . 398
Four Big Refactorings . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 398
Tease Apart Inheritance . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 399



xii Contents
Convert Procedural Design to Objects . . . . . . . . . . . . . . . . . . . . . . . . . . 405
Separate Domain from Presentation . . . . . . . . . . . . . . . . . . . . . . . . . . . . 406
Extract Hierarchy . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 412
Chapter 13: Putting It All Together. . . . . . . . . . . . . . . . . . . . . . . . . 417
