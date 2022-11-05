# HSE_seq_HW_1-3

ДЗ 1, ссылка на colab - https://colab.research.google.com/drive/1_pBgEL96_vn7PuyUweNt-XKYlUFh0iyQ#scrollTo=BzZHNtAYHNOt

<img width="1101" alt="Снимок экрана 2022-10-31 в 12 03 46" src="https://user-images.githubusercontent.com/60537367/198971223-4128b0c3-e6c3-4b4c-b84c-907689887459.png">
результаты анализа multiqc (полный отчет доступен в папке data)



ДЗ 2, сслыка на colab - https://colab.research.google.com/drive/1FccKS6JuA5soXx2bLgfknbX47WoZkg5m#scrollTo=hP7lY_nTL1iA
(часть с R приложена в папке src)

<img width="1375" alt="Снимок экрана 2022-11-04 в 11 39 47" src="https://user-images.githubusercontent.com/60537367/199929503-13b9466f-13db-4dff-8dd7-01adbc176b8a.png">

![image](https://user-images.githubusercontent.com/60537367/199970885-a8d4ab8c-8369-48bc-a0d3-3708c68ce752.png)

можно заметить, что в целом получились высокие значения корреляции. образцы разделимы кластерами во времени (b34 и c34 сильнее похожи друг на друга, чем на ту же ткань, но раньше), при малой разнице во времени ткань имеет большее значение(b17.5 и b20, b14.5 и b15.5)

<img width="253" alt="Снимок экрана 2022-11-05 в 15 51 28" src="https://user-images.githubusercontent.com/60537367/200120773-24771688-a805-48e0-b104-658d5e9ed483.png">

![image](https://user-images.githubusercontent.com/60537367/199929395-60e8cb54-122f-4124-9c51-9346e6d3037e.png)
видно разделение образцов между собой, и некоторые группы (в правом нижнем углу отделились b14.5 с b15.5; с 17.5 и c15.5 в правом верхнем углу, остальные  образцы ближе к ним, b34 отдельно от всех)

ДЗ 3, код в папке src

![image](https://user-images.githubusercontent.com/60537367/199975608-6014a114-d19c-4bfb-8674-d03f67afb50b.png)
чем выше экспрессия, тем ниже вариация

![image](https://user-images.githubusercontent.com/60537367/199975905-5ab61550-8210-428d-a7ea-09b43a4eb6b8.png)

![image](https://user-images.githubusercontent.com/60537367/199975927-66e938f9-8f5f-48e7-9554-27093ac4ecc6.png)

![image](https://user-images.githubusercontent.com/60537367/199975951-bcd4ec0d-0536-4269-af45-5884422b7077.png)

![image](https://user-images.githubusercontent.com/60537367/199975972-7ccdd216-5dca-47eb-8d3f-f45ce94850a9.png)

![image](https://user-images.githubusercontent.com/60537367/199975988-61ecc8eb-894e-4728-8d3c-e72c468a4ea3.png)

![image](https://user-images.githubusercontent.com/60537367/199976008-192bfbba-9b39-46dd-99f8-28ce64d0fb23.png)

6 кластеров, показывающих разный паттерн экспрессии с возрастом (понижение или повышение экспрессии с возрастом, более сложные траектории, и даже некий паттерн роста в одной ткани при падении во второй)
