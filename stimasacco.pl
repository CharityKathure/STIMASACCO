get_user_kyc():-
    write('Please enter your full name: '), nl,
    read(ApplicantName),
    write('Hello '), write(ApplicantName), write(, ), nl,
    write('Please enter the following details: '), nl,
    write('1. ID/Passport No.: '), nl,
    read(IDNum),
    write('2. KRA Pin: '), nl,
    read(KraPin),
    write('3. Sacco Membership No: '), nl,
    read(SaccoNo),
    write('4. Email Address: '), nl,
    read(EmailAdd),
    write('5. Phone Number: '), nl,
    read(PhoneNo),
    write('6. Postal Address: '), nl,
    read(PostalAdd),

    nl, write('Details entered: '), nl,
    write('ID Num: '), write(IDNum), nl,
    write('KRA Pin: '), write(KraPin), nl,
    write('Sacco Num:'), write(SaccoNo) , nl,
    write('Email Address: '), write(EmailAdd), nl,
    write('Phone Num: '), write(PhoneNo), nl,
    write('Postal Address: '), write(PostalAdd).


loanType(1, 'School Fees Loan').
loanType(2, 'Microfinance Group Loan').
loanType(3, 'FOSA Loan').
loanType(4, 'Emergency Loan').

get_loans(LoanName) :-
    repeat,
    write('Please select a the loan type prefered:'), nl,
    write_loan_list,
    read(LoanNumber),
    (   loanType(LoanNumber, LoanName)
    ->  write('You selected: '), write(LoanName), nl, !
    ;   write('Not a valid choice, try again...'), nl, fail
    ).
write_loan_list :-
    loanType(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
write_loan_list.

emplType(1, 'Self Employed').
emplType(2, 'Employed').

get_financial_info(EmpName):-
    write('Please select your employment option:'), nl,
    write_employment_types,
    read(EmpNumber),
    (   emplType(EmpNumber, EmpName)
    ->  write('Selected Option is: '), write(EmpName),
        get_self_employed(EmpName),
        nl, !
    ;   write('Not a valid choice, try again...'), nl, fail
    ).
write_employment_types:-
    emplType(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
write_employment_types.

get_self_employed(EmpName):-
    write(EmpName),write(: ), nl,
    write('Type of Business:'), nl,
    read(BussType),
    write('Years of operation: '), nl,
    read(YearsOperating),

    write(BussType),
    write(YearsOperating).

contractType(1, 'Permanent').
contractType(2, 'Temporary').

get_employed(EmploymentContactName):-
    write('Please enter your gross salary: '), nl,
    read(GrossPay),
    write('Please select the employment type:'),
    write_Contracts_list,
    read(EmploymentType),
    (   contractType(EmploymentType, EmploymentContactName)
    ->  write('Selected option: '), write(EmploymentContactName), nl, !
    ;   write('Not a valid choice, try again...'), nl, fail
    ),
    write(GrossPay).

write_Contracts_list:-
    contractType(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
write_Contracts_list.














