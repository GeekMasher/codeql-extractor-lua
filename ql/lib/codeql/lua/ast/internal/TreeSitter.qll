/**
* CodeQL library for LUA
          * Automatically generated from the tree-sitter grammar; do not edit
*/

import codeql.Locations as L

module LUA { 
  /** The base class for all AST nodes */class AstNode extends @lua_ast_node { 
  /** Gets a string representation of this element. */string toString() { result = this.getAPrimaryQlClass() }
  /** Gets the location of this element. */final L::Location getLocation() { lua_ast_node_location(this, result) }
  /** Gets the parent of this element. */final AstNode getParent() { lua_ast_node_parent(this, result, _) }
  /** Gets the index of this node among the children of its parent. */final int getParentIndex() { lua_ast_node_parent(this, _, result) }
  /** Gets a field or child node of this node. */AstNode getAFieldOrChild() { none() }
  /** Gets the name of the primary QL class for this element. */string getAPrimaryQlClass() { result = "???" }
  /** Gets a comma-separated list of the names of the primary CodeQL classes to which this element belongs. */string getPrimaryQlClasses() { result = concat(this.getAPrimaryQlClass(), ",") }
}
  /** A token. */class Token extends @lua_token, AstNode { 
  /** Gets the value of this token. */final string getValue() { lua_tokeninfo(this, _, result) }
  /** Gets a string representation of this element. */final override string toString() { result = this.getValue() }
  /** Gets the name of the primary QL class for this element. */override string getAPrimaryQlClass() { result = "Token" }
}
  /** A reserved word. */class ReservedWord extends @lua_reserved_word, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ReservedWord" }
}
  /** A class representing `arguments` nodes. */class Arguments extends @lua_arguments, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Arguments" }
  /** Gets the `i`th child of this node. */final Expression getChild(int i) { lua_arguments_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_arguments_child(this, _, result)) }
}
  /** A class representing `assignment_statement` nodes. */class AssignmentStatement extends @lua_assignment_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "AssignmentStatement" }
  /** Gets the `i`th child of this node. */final AstNode getChild(int i) { lua_assignment_statement_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_assignment_statement_child(this, _, result)) }
}
  /** A class representing `attribute` nodes. */class Attribute extends @lua_attribute, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Attribute" }
  /** Gets the child of this node. */final Identifier getChild() { lua_attribute_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_attribute_def(this, result)) }
}
  /** A class representing `binary_expression` nodes. */class BinaryExpression extends @lua_binary_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "BinaryExpression" }
  /** Gets the node corresponding to the field `left`. */final Expression getLeft() { lua_binary_expression_def(this, result, _, _) }
  /** Gets the node corresponding to the field `operator`. */final string getOperator() { exists(int value | lua_binary_expression_def(this, _, value, _) | ((result = "%") and (value = 0)) or ((result = "&") and (value = 1)) or ((result = "*") and (value = 2)) or ((result = "+") and (value = 3)) or ((result = "-") and (value = 4)) or ((result = "..") and (value = 5)) or ((result = "/") and (value = 6)) or ((result = "//") and (value = 7)) or ((result = "<") and (value = 8)) or ((result = "<<") and (value = 9)) or ((result = "<=") and (value = 10)) or ((result = "==") and (value = 11)) or ((result = ">") and (value = 12)) or ((result = ">=") and (value = 13)) or ((result = ">>") and (value = 14)) or ((result = "^") and (value = 15)) or ((result = "and") and (value = 16)) or ((result = "or") and (value = 17)) or ((result = "|") and (value = 18)) or ((result = "~") and (value = 19)) or ((result = "~=") and (value = 20))) }
  /** Gets the node corresponding to the field `right`. */final Expression getRight() { lua_binary_expression_def(this, _, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_binary_expression_def(this, result, _, _)) or (lua_binary_expression_def(this, _, _, result)) }
}
  /** A class representing `block` nodes. */class Block extends @lua_block, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Block" }
  /** Gets the `i`th child of this node. */final AstNode getChild(int i) { lua_block_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_block_child(this, _, result)) }
}
  /** A class representing `bracket_index_expression` nodes. */class BracketIndexExpression extends @lua_bracket_index_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "BracketIndexExpression" }
  /** Gets the node corresponding to the field `field`. */final Expression getField() { lua_bracket_index_expression_def(this, result, _) }
  /** Gets the node corresponding to the field `table`. */final AstNode getTable() { lua_bracket_index_expression_def(this, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_bracket_index_expression_def(this, result, _)) or (lua_bracket_index_expression_def(this, _, result)) }
}
  /** A class representing `break_statement` tokens. */class BreakStatement extends @lua_token_break_statement, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "BreakStatement" }
}
  /** A class representing `chunk` nodes. */class Chunk extends @lua_chunk, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Chunk" }
  /** Gets the `i`th child of this node. */final AstNode getChild(int i) { lua_chunk_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_chunk_child(this, _, result)) }
}
  /** A class representing `comment` nodes. */class Comment extends @lua_comment, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Comment" }
  /** Gets the node corresponding to the field `content`. */final CommentContent getContent() { lua_comment_def(this, result, _) }
  /** Gets the node corresponding to the field `end`. */final ReservedWord getEnd() { lua_comment_end(this, result) }
  /** Gets the node corresponding to the field `start`. */final string getStart() { exists(int value | lua_comment_def(this, _, value) | ((result = "--") and (value = 0)) or ((result = "[[") and (value = 1))) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_comment_def(this, result, _)) or (lua_comment_end(this, result)) }
}
  /** A class representing `comment_content` tokens. */class CommentContent extends @lua_token_comment_content, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "CommentContent" }
}
  class Declaration extends @lua_declaration, AstNode { 
}
  /** A class representing `do_statement` nodes. */class DoStatement extends @lua_do_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "DoStatement" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_do_statement_body(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_do_statement_body(this, result)) }
}
  /** A class representing `dot_index_expression` nodes. */class DotIndexExpression extends @lua_dot_index_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "DotIndexExpression" }
  /** Gets the node corresponding to the field `field`. */final Identifier getField() { lua_dot_index_expression_def(this, result, _) }
  /** Gets the node corresponding to the field `table`. */final AstNode getTable() { lua_dot_index_expression_def(this, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_dot_index_expression_def(this, result, _)) or (lua_dot_index_expression_def(this, _, result)) }
}
  /** A class representing `else_statement` nodes. */class ElseStatement extends @lua_else_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ElseStatement" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_else_statement_body(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_else_statement_body(this, result)) }
}
  /** A class representing `elseif_statement` nodes. */class ElseifStatement extends @lua_elseif_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ElseifStatement" }
  /** Gets the node corresponding to the field `condition`. */final Expression getCondition() { lua_elseif_statement_def(this, result) }
  /** Gets the node corresponding to the field `consequence`. */final Block getConsequence() { lua_elseif_statement_consequence(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_elseif_statement_def(this, result)) or (lua_elseif_statement_consequence(this, result)) }
}
  /** A class representing `empty_statement` tokens. */class EmptyStatement extends @lua_token_empty_statement, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "EmptyStatement" }
}
  /** A class representing `escape_sequence` tokens. */class EscapeSequence extends @lua_token_escape_sequence, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "EscapeSequence" }
}
  class Expression extends @lua_expression, AstNode { 
}
  /** A class representing `expression_list` nodes. */class ExpressionList extends @lua_expression_list, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ExpressionList" }
  /** Gets the node corresponding to the field `value`. */final Expression getValue(int i) { lua_expression_list_value(this, i, result) }
  /** Gets the `i`th child of this node. */final Expression getChild(int i) { lua_expression_list_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_expression_list_value(this, _, result)) or (lua_expression_list_child(this, _, result)) }
}
  /** A class representing `false` tokens. */class False extends @lua_token_false, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "False" }
}
  /** A class representing `field` nodes. */class Field extends @lua_field, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Field" }
  /** Gets the node corresponding to the field `name`. */final AstNode getName() { lua_field_name(this, result) }
  /** Gets the node corresponding to the field `value`. */final Expression getValue() { lua_field_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_field_name(this, result)) or (lua_field_def(this, result)) }
}
  /** A class representing `for_generic_clause` nodes. */class ForGenericClause extends @lua_for_generic_clause, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ForGenericClause" }
  /** Gets the `i`th child of this node. */final AstNode getChild(int i) { lua_for_generic_clause_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_for_generic_clause_child(this, _, result)) }
}
  /** A class representing `for_numeric_clause` nodes. */class ForNumericClause extends @lua_for_numeric_clause, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ForNumericClause" }
  /** Gets the node corresponding to the field `end`. */final Expression getEnd() { lua_for_numeric_clause_def(this, result, _, _) }
  /** Gets the node corresponding to the field `name`. */final Identifier getName() { lua_for_numeric_clause_def(this, _, result, _) }
  /** Gets the node corresponding to the field `start`. */final Expression getStart() { lua_for_numeric_clause_def(this, _, _, result) }
  /** Gets the node corresponding to the field `step`. */final Expression getStep() { lua_for_numeric_clause_step(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_for_numeric_clause_def(this, result, _, _)) or (lua_for_numeric_clause_def(this, _, result, _)) or (lua_for_numeric_clause_def(this, _, _, result)) or (lua_for_numeric_clause_step(this, result)) }
}
  /** A class representing `for_statement` nodes. */class ForStatement extends @lua_for_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ForStatement" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_for_statement_body(this, result) }
  /** Gets the node corresponding to the field `clause`. */final AstNode getClause() { lua_for_statement_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_for_statement_body(this, result)) or (lua_for_statement_def(this, result)) }
}
  /** A class representing `function_call` nodes. */class FunctionCall extends @lua_function_call, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "FunctionCall" }
  /** Gets the node corresponding to the field `arguments`. */final Arguments getArguments() { lua_function_call_def(this, result, _) }
  /** Gets the node corresponding to the field `name`. */final AstNode getName() { lua_function_call_def(this, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_function_call_def(this, result, _)) or (lua_function_call_def(this, _, result)) }
}
  /** A class representing `function_declaration` nodes. */class FunctionDeclaration extends @lua_function_declaration, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "FunctionDeclaration" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_function_declaration_body(this, result) }
  /** Gets the node corresponding to the field `name`. */final AstNode getName() { lua_function_declaration_def(this, result, _) }
  /** Gets the node corresponding to the field `parameters`. */final Parameters getParameters() { lua_function_declaration_def(this, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_function_declaration_body(this, result)) or (lua_function_declaration_def(this, result, _)) or (lua_function_declaration_def(this, _, result)) }
}
  /** A class representing `function_definition` nodes. */class FunctionDefinition extends @lua_function_definition, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "FunctionDefinition" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_function_definition_body(this, result) }
  /** Gets the node corresponding to the field `parameters`. */final Parameters getParameters() { lua_function_definition_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_function_definition_body(this, result)) or (lua_function_definition_def(this, result)) }
}
  /** A class representing `goto_statement` nodes. */class GotoStatement extends @lua_goto_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "GotoStatement" }
  /** Gets the child of this node. */final Identifier getChild() { lua_goto_statement_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_goto_statement_def(this, result)) }
}
  /** A class representing `hash_bang_line` tokens. */class HashBangLine extends @lua_token_hash_bang_line, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "HashBangLine" }
}
  /** A class representing `identifier` tokens. */class Identifier extends @lua_token_identifier, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Identifier" }
}
  /** A class representing `if_statement` nodes. */class IfStatement extends @lua_if_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "IfStatement" }
  /** Gets the node corresponding to the field `alternative`. */final AstNode getAlternative(int i) { lua_if_statement_alternative(this, i, result) }
  /** Gets the node corresponding to the field `condition`. */final Expression getCondition() { lua_if_statement_def(this, result) }
  /** Gets the node corresponding to the field `consequence`. */final Block getConsequence() { lua_if_statement_consequence(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_if_statement_alternative(this, _, result)) or (lua_if_statement_def(this, result)) or (lua_if_statement_consequence(this, result)) }
}
  /** A class representing `label_statement` nodes. */class LabelStatement extends @lua_label_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "LabelStatement" }
  /** Gets the child of this node. */final Identifier getChild() { lua_label_statement_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_label_statement_def(this, result)) }
}
  /** A class representing `method_index_expression` nodes. */class MethodIndexExpression extends @lua_method_index_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "MethodIndexExpression" }
  /** Gets the node corresponding to the field `method`. */final Identifier getMethod() { lua_method_index_expression_def(this, result, _) }
  /** Gets the node corresponding to the field `table`. */final AstNode getTable() { lua_method_index_expression_def(this, _, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_method_index_expression_def(this, result, _)) or (lua_method_index_expression_def(this, _, result)) }
}
  /** A class representing `nil` tokens. */class Nil extends @lua_token_nil, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Nil" }
}
  /** A class representing `number` tokens. */class Number extends @lua_token_number, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Number" }
}
  /** A class representing `parameters` nodes. */class Parameters extends @lua_parameters, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "Parameters" }
  /** Gets the node corresponding to the field `name`. */final Identifier getName(int i) { lua_parameters_name(this, i, result) }
  /** Gets the child of this node. */final VarargExpression getChild() { lua_parameters_child(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_parameters_name(this, _, result)) or (lua_parameters_child(this, result)) }
}
  /** A class representing `parenthesized_expression` nodes. */class ParenthesizedExpression extends @lua_parenthesized_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ParenthesizedExpression" }
  /** Gets the child of this node. */final Expression getChild() { lua_parenthesized_expression_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_parenthesized_expression_def(this, result)) }
}
  /** A class representing `repeat_statement` nodes. */class RepeatStatement extends @lua_repeat_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "RepeatStatement" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_repeat_statement_body(this, result) }
  /** Gets the node corresponding to the field `condition`. */final Expression getCondition() { lua_repeat_statement_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_repeat_statement_body(this, result)) or (lua_repeat_statement_def(this, result)) }
}
  /** A class representing `return_statement` nodes. */class ReturnStatement extends @lua_return_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "ReturnStatement" }
  /** Gets the child of this node. */final ExpressionList getChild() { lua_return_statement_child(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_return_statement_child(this, result)) }
}
  class Statement extends @lua_statement, AstNode { 
}
  /** A class representing `string` nodes. */class String extends @lua_string__, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "String" }
  /** Gets the node corresponding to the field `content`. */final StringContent getContent() { lua_string_content(this, result) }
  /** Gets the node corresponding to the field `end`. */final ReservedWord getEnd() { lua_string_end(this, result) }
  /** Gets the node corresponding to the field `start`. */final ReservedWord getStart() { lua_string_start(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_string_content(this, result)) or (lua_string_end(this, result)) or (lua_string_start(this, result)) }
}
  /** A class representing `string_content` nodes. */class StringContent extends @lua_string_content, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "StringContent" }
  /** Gets the `i`th child of this node. */final EscapeSequence getChild(int i) { lua_string_content_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_string_content_child(this, _, result)) }
}
  /** A class representing `table_constructor` nodes. */class TableConstructor extends @lua_table_constructor, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "TableConstructor" }
  /** Gets the `i`th child of this node. */final Field getChild(int i) { lua_table_constructor_child(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_table_constructor_child(this, _, result)) }
}
  /** A class representing `true` tokens. */class True extends @lua_token_true, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "True" }
}
  /** A class representing `unary_expression` nodes. */class UnaryExpression extends @lua_unary_expression, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "UnaryExpression" }
  /** Gets the node corresponding to the field `operand`. */final Expression getOperand() { lua_unary_expression_def(this, result, _) }
  /** Gets the node corresponding to the field `operator`. */final string getOperator() { exists(int value | lua_unary_expression_def(this, _, value) | ((result = "#") and (value = 0)) or ((result = "-") and (value = 1)) or ((result = "not") and (value = 2)) or ((result = "~") and (value = 3))) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_unary_expression_def(this, result, _)) }
}
  /** A class representing `vararg_expression` tokens. */class VarargExpression extends @lua_token_vararg_expression, Token { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "VarargExpression" }
}
  class Variable extends @lua_variable, AstNode { 
}
  /** A class representing `variable_declaration` nodes. */class VariableDeclaration extends @lua_variable_declaration, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "VariableDeclaration" }
  /** Gets the child of this node. */final AstNode getChild() { lua_variable_declaration_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_variable_declaration_def(this, result)) }
}
  /** A class representing `variable_list` nodes. */class VariableList extends @lua_variable_list, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "VariableList" }
  /** Gets the node corresponding to the field `attribute`. */final Attribute getAttribute(int i) { lua_variable_list_attribute(this, i, result) }
  /** Gets the node corresponding to the field `name`. */final Variable getName(int i) { lua_variable_list_name(this, i, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_variable_list_attribute(this, _, result)) or (lua_variable_list_name(this, _, result)) }
}
  /** A class representing `while_statement` nodes. */class WhileStatement extends @lua_while_statement, AstNode { 
  /** Gets the name of the primary QL class for this element. */final override string getAPrimaryQlClass() { result = "WhileStatement" }
  /** Gets the node corresponding to the field `body`. */final Block getBody() { lua_while_statement_body(this, result) }
  /** Gets the node corresponding to the field `condition`. */final Expression getCondition() { lua_while_statement_def(this, result) }
  /** Gets a field or child node of this node. */final override AstNode getAFieldOrChild() { (lua_while_statement_body(this, result)) or (lua_while_statement_def(this, result)) }
}
}

