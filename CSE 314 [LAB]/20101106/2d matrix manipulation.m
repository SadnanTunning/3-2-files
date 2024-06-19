% Create Marks Table and Scale it down to 50.
% Calculate the total marks of Najib.
% Show the mean, sum marks by subject and students.
% Add database [71,61,51,50,41] to core marks table. Then scale it to 50. Then remove it.
% Show the marks of Noor, Najib and Sumaiya.


noor=[91,92,93];
najib=[81,82,83];
mouno=[71,72,73];
bithi=[61,62,63];
sumaiya=[51,52,53];



fprintf("Marks table: %g\n");
array=[noor; najib; mouno; bithi; sumaiya]



fprintf("After marks converted to 50's scale: %g\n");
array=[array/100]*50



total_mark_najib=sum(array(2,:))


stmean=mean(array');
fprintf("Mean of each student: \n");
disp(stmean');

sbmean=mean(array);
fprintf("Mean of each subject: \n");
disp(sbmean);


fprintf("Total marks of each student (Noor, Najib, Mouno, Bithi, Sumaiya) : \n");
disp(subject_total = sum(array(:,:)'));

fprintf("Total marks obtained (OOP1, OOP2 and Algorithm): \n");
disp(subject_total = sum(array(:,:)));



fprintf("Database added: %g\n");
array=[[array],[71; 61; 51; 50; 41]]
fprintf("Database scaled down to 50: %g\n");
array(:,4)=(array(:,4)/100)*50
fprintf("Database removed: %g\n");
array=array(:,1:3)

array2 = [array(1,:);array(2,:);array(5,:)];
fprintf("Marks of Noor, Najib and Sumaiya= \n");
disp(array2);

