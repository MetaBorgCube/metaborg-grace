# Spoofax-based implementation of the Grace Language with support for Layout-sensitive syntax


### Grace Language

http://gracelang.org/


### Spoofax 

http://metaborg.org/spoofax/

### Layout Sensitivity Rules

 - Statements must be indented by at least two spaces inside `methods`, `classes`, `traits` and `objects`.
 - Statements in a list must be aligned. 
 - Elements in a line that is further indented in a list of statements belong to the previous statement.
 - Statements may end with `;` or a newline.
 
#### Bugs:

 - The top-level list of statements needs to end with an extra newline.
 
 - Statements that end with an identifier as an expression currently need to end with a `;`. This is due to the specification of layout inside lists and optionals (as Identifiers can be followed by an optional `Part`).
 
 - Layout constraints do not integrate properly with error recovery. Sometimes, a parse error can only be noticed when transforming the program (Show AST). For example, the program
 
         class foo {
          def x = 1
         + 2; 
         }

violates the constraints, and error recovery simply fails to produce an AST - which sometimes is not reflected in the editor.
 
 - The custom layout is currently a hack, as it produces AST nodes. Furthermore, it might produce some conflicts when used in combination with lists and optionals, as internally, these productions use the general layout. 
 
#### Future improvements:

 - Have the definition of a custom (and local) layout as part of SDF3 and supported by JSGLR - the question this custom layout interacts with other productions.
 - Make layout constraints more declarative and part of SDF3 templates.
 - Maybe change the general layout excluding newlines and have a custom layout that includes them (using it in productions that spam multiple lines) and see how it influences the current solution .  
 - Integrate error recovery and the layout sensitive parser.
