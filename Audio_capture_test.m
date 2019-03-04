myRecording = cell(1,4); 

for i = 1:2
    % Record your voice for 5 seconds.
    recObj = audiorecorder;
    disp('Start speaking.')
    recordblocking(recObj, 5);
    disp('End of Recording.');

    % Play back the recording.
    play(recObj);

    % Store data in double-precision array.
    myRecording{i} = getaudiodata(recObj);

    % Plot the waveform.
    figure('name', 'Test');
    plot(myRecording{i});
end