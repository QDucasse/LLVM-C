; ModuleID = 'sum.bc'
source_filename = "my_module"

define i32 @sum(i32, i32) {
entry:
  %tmp = add i32 %0, %1
  ret i32 %tmp
}
