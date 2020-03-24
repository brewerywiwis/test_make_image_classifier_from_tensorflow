@echo off

:L1
set /p c1="Enter number of classes (1-cats 2-dogs) : "
if %c1%==1 (goto:cat) else if %c1%==2 (goto:dog) else (echo "invalid input" & goto:L1)

:cat
set /p input2="Enter img number (2000-2499): "
python label_image.py --input_mean 0 --input_std 255 --model_file new_mobile_model.tflite --label_file class_labels.txt --image "C:\Users\brewd\Desktop\cats_and_dogs_filtered\validation\cats\cat.%input2%.jpg"
set /p a="please enter to retry"
goto:L1

:dog
set /p input2="Enter img number (2000-2499): "
python label_image.py --input_mean 0 --input_std 255 --model_file new_mobile_model.tflite --label_file class_labels.txt --image "C:\Users\brewd\Desktop\cats_and_dogs_filtered\validation\dogs\dog.%input2%.jpg"
set /p a="please enter to retry"
goto:L1