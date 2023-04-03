void main() {
// for nullable types, use ? after the type
int? nullableNum;
print(nullableNum);

// for var and dynamic types, we don't need to use the ? after the type
var varType;
dynamic dynamicType;
print("var: ${varType.runtimeType}");
print("dynamic: ${dynamicType.runtimeType}");

// we can assign null to var and dynamic types
varType = null;
dynamicType = null;
print("after assigning null:");
print("var: ${varType.runtimeType}");
print("dynamic: ${dynamicType.runtimeType}");

// Null aware operator
// (?.), (??), (??=)
print("--------NULL OPERATORS------------");
var obj; // var obj = Num(); if we don't want to assign null to obj
int? number;
if (obj != null) {
number = obj.num;
}
// if we omit the if statement, we get an error
print(number);

// the solution is to use the null aware operator (?.)
number = obj?.num; // this means : if obj is not null, then get the num property of obj otherwise return null
print(number);

// if we want to assign a default value if the value is null, we can use the null aware operator (??)
number = obj?.num ?? 0; // this means : if obj is not null, then get the num property of obj otherwise return 0 instead of null
print(number);

// if we want to assign a default value if the value is null, we can use the null aware operator (??=)
var checkNum;
checkNum ??= 100; // this means : if checkNum is null, then assign 100 to checkNum otherwise do nothing
print(checkNum);
// can be useful when dealing with APIs
}

class Num {
int num = 10;
}