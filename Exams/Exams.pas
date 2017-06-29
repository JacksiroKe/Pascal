Program Kikopey_Examination_System;
Uses Crt;
Var  ClassFile, StudFile, MarkFile : Text; i : integer;
        SelMenu, Classes, Curclass, Sname, Snumber : String;
Procedure RegisterStudents;
    Begin
          ClrScr;
          Writeln;
          Writeln('     EXAMINATION MANAGEMENT SYSTEM');
          Writeln;
          Writeln('     Student Registration');
          Assign(ClassFile, 'C:\pascal\Exams\data\Classes.txt');
          Reset(ClassFile);
          Readln(ClassFile, Classes);
          Close(ClassFile);
          Writeln('     Classes in the System: ',Classes);
          Write('     Select a class:  ');
          Readln(Curclass);
          Writeln;
          Assign(StudFile, 'C:\pascal\Exams\data\Form'+ curclass+'.txt');
          Append(StudFile);
          For i := 1 to 5 do
          Begin
                Writeln('       Student ',i,' details');
                Write('       Full Name  :   ');
                Readln(Sname);
                Write('       Number     :   ');
                Readln(Snumber);
                Writeln(StudFile, Snumber,'     |  ',sname);
                Writeln;
          End;
          Close(StudFile);
    End;
Procedure EnterMarks;
    Var Astudent : array[1..5] of string;
        Mark1, Mark2, Mark3, Mark4, Mark5: integer;
        Mean1, Mean2, Mean3, Mean4, Mean5 : integer;
        Student1, Student2, Student3, Student4, Student5 : string;
    Begin
          ClrScr;
          Writeln;
          Writeln('     EXAMINATION MANAGEMENT SYSTEM');
          Writeln;
          Write('     Enter Student Marks');
          Assign(ClassFile, 'C:\pascal\Exams\data\Classes.txt');
          Reset(ClassFile);
          Readln(ClassFile, Classes);
          Close(ClassFile);
          Writeln('     Classes in the System: ',Classes);
          Writeln('     Select a class:  ');
          Readln(Curclass);
          Assign(StudFile, 'C:\pascal\Exams\data\Form'+ curclass+'.txt');
          Reset(StudFile);
          i := 0;
          Repeat
            i  := i+1;
            Readln(StudFile, Astudent[i]);
          Until Eof(StudFile);
          For i := 1 to 5 do
          Begin
                Writeln('       Marks for:: ',Astudent[i]);
                Write('       Mathematics :   ');
                Readln(Mark1);
                Write('       English     :   ');
                Readln(Mark2);
                Write('       Kiswahili   :   ');
                Readln(Mark3);
                Write('       Biology     :   ');
                Readln(Mark4);
                Write('       Chemistry   :   ');
                Readln(Mark5);
                Writeln(StudFile, Snumber,'     |  ',sname);
                Writeln;
          End;
          Close(StudFile);
          Assign(MarkFile, 'C:\pascal\Exams\data\Marks'+ curclass+'.txt');
          Append(MarkFile);
End;
Procedure ClassReport;
    Begin
          ClrScr;
          Writeln;
          Writeln('     EXAMINATION MANAGEMENT SYSTEM');
          Writeln;
          Writeln('     ClassReport');
          Assign(ClassFile, 'C:\pascal\Exams\data\Classes.txt');
          Reset(ClassFile);
          Readln(ClassFile, Classes);
          Close(ClassFile);
          Writeln('     Classes in the System: ',Classes);
          Write('     Select a class:  ');
          Readln(Curclass);
          Assign(StudFile, 'C:\pascal\Exams\data\Marks'+ curclass+'.txt');
          Append(StudFile);
          For i := 1 to 5 do
          Begin
                Writeln('       Student ',i,' details');
                Write('       Full Name  :   ');
                Readln(Sname);
                Write('       Number     :   ');
                Readln(Snumber);
                Writeln(StudFile, Snumber,'     |  ',sname);
                Writeln;
          End;
          Close(StudFile);
End;
Procedure SystemDashboard;
Begin
        Textbackground(green);
        Textcolor(black);
        ClrScr;
        Writeln;
        Writeln('       EXAMINATION MANAGEMENT SYSTEM');
        Writeln;
        Writeln('                  System Dashboard');
        Writeln;
        Writeln('       A.      Register Students.');
        Writeln('       B.      Enter Students Marks.');
        Writeln('       C.      View Class Report.');
        Writeln('       D.      Quit.');
        Writeln;
        Write('       ');
        Readln(SelMenu);
        If (SelMenu = 'A') Or (SelMenu = 'a') Then
                RegisterStudents
        Else If (SelMenu = 'B') Or (SelMenu = 'b') Then
                EnterMarks
        Else If (SelMenu = 'C') Or (SelMenu = 'c') Then
                ClassReport
        End;

Begin
      SystemDashboard;
      SystemDashboard;
      SystemDashboard;
      Readln;
End.



















