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
видно разделение образцов между собой, и что-то вроде разделения на группы (в правом нижнем углу отделились b14.5 с b15.5; с 17.5 и c15.5 в правом верхнем углу, b34 отдельно от всех)

ДЗ 3, код в папке src

![image](https://user-images.githubusercontent.com/60537367/199975608-6014a114-d19c-4bfb-8674-d03f67afb50b.png)
чем выше экспрессия, тем ниже вариация

![image](https://user-images.githubusercontent.com/60537367/200163929-5752ba7e-df0a-45ba-a8ab-df629a9301b3.png)

![image](https://user-images.githubusercontent.com/60537367/200163939-5a106992-f90e-463a-9e89-fc322dc23296.png)

![image](https://user-images.githubusercontent.com/60537367/200163953-20092c0d-85c2-49aa-a127-8240ce190af4.png)

![image](https://user-images.githubusercontent.com/60537367/200163964-efee5fd0-3d4e-4108-8d32-27d21dfe978a.png)

![image](https://user-images.githubusercontent.com/60537367/200163972-18c012ca-e7f2-4d1a-8681-77246bb649a9.png)

![image](https://user-images.githubusercontent.com/60537367/200163978-5358e2be-1e00-4a0e-821e-f7bdce63586e.png)


6 кластеров, показывающих разный паттерн экспрессии с возрастом (понижение или повышение экспрессии с возрастом, более сложные траектории)
