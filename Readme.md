# **San Fransisco Bikeshare : Customer Analysis**

![Bikeshare](https://user-images.githubusercontent.com/101962147/161291601-927db25c-b203-49c1-a3e9-6d9442d25f49.jpg)

Project ini adalah sebuah study case dari sebuah mini course oleh RevoU. Pada project ini saya melakukan analisis terhadap permasalahan yang ada pada perusahaan _bike sharing program_ yang ada di San Fransisco dengan menggunakan Google BigQuery dan Google Data Studio.

<br/>

<hr>

## **Problem Definition**
**Define the problem**

- Bagaimana tren dari jumlah perjalanan (number of trips) vs rata-rata durasi perjalanan (average trip duration)?

- Jenis pelanggan apa yang merupakan penghasil pendapatan terbesar kami?

  - Segmen pelanggan mana yang paling sering menjadi pengguna layanan kami?

  - Segmen pelanggan mana yang memiliki durasi perjalanan paling lama?


<br/>

**Define the Scope**

Data yang dianalisa adalah data tahun 2017-2018

<br/>

<hr>

## **Dataset Brief**

Dataset yang digunakan pada project kali adalah 'bigquery-public-data.san_fransisco_bikeshare.bikeshare_trips' dengan jumlah raw data sebanyak 1.947.419 data.

**Table Schema**

![Skema Tabel](https://user-images.githubusercontent.com/101962147/161291832-248c806f-604e-4d74-952b-5756a762e5ff.png)

<br/>

**Table Info**

![Info Tabel](https://user-images.githubusercontent.com/101962147/161342124-12066009-ac9a-4ac8-89de-f6cb238e9f75.png)

<br/>

<hr>

## **Data Processing**

Dibuat query di Google BigQuery untuk mengambil data relevan yang dibutuhkan untuk menyelesaikan permasalahan perusahaan.

```SQL
SELECT 
trip_id,
duration_sec, 
start_date,
subscriber_type,
member_gender 
FROM `bigquery-public-data.san_francisco_bikeshare.bikeshare_trips` 
WHERE start_date > '2017-01-01'
ORDER BY start_date ASC;
```

Query tersebut akan menghasilkan output sebagai berikut :

![Query Result](https://user-images.githubusercontent.com/101962147/161292181-87c1da69-b244-42d1-97a6-90ca777f8379.png)

<Br/>

<Hr>

## **Data Visualization**
Selanjutnya hasil query di atas akan diolah dengan menggunakan Google Data Studio.

1. _Number of Trips vs Average Trip Duration_

![Grafik 1](https://user-images.githubusercontent.com/101962147/161293046-a5f1a55f-8a40-41ec-ab10-7fef936052d2.png)

- Jumlah perjalanan (number of trips) cenderung meningkat sejak awal 2018, namun rata-rata durasi perjalanan dalam menit (average trip duration in minute) mengalami penurunan.
- Sejak pembukaan layanan kembali pada Juni 2017, perusahaan ini telah mendapatkan banyak jumlah perjalanan dan telah mencapai +-130.000 pada April 2018, dimana terjadi pertumbuhan jumlah perjalanan sebesar 17% dibanding bulan sebelumnya.

<Br>

2. _Number of Trips per Customer Segment_

![Grafik 2](https://user-images.githubusercontent.com/101962147/161293100-26c02cc3-6f0b-4665-9bec-e81e949120b1.png)


<Br/>

3. _Average Trip Duration in Minute per Customer Segment_

![Grafik 3](https://user-images.githubusercontent.com/101962147/161293149-12afe616-83a9-4bbc-b07e-c1191c5a6df0.png)

- Subcriber menyumbang 82% dari keseluruhan total perjalanan dari 2017-2018, meskipun mereka bukan pengguna dengan durasi perjalanan tertinggi.
- Tim pemasaran disarankan berfokus untuk menargetkan subscriber laki-laki, dan juga memikirkan strategi baru untuk menarik minat subscriber perempuan.
- Tim produk disarankan untuk membuat update wajib bagi para pengguna agar mengisi data jenis kelamin, sehingga segmentasi berdasar jenis kelamin akan menjadi lebih baik. Hal tersebut akan membantu dalam penentuan strategi pemasaran baru yang lebih efektif dan efisien.
