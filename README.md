
# CompanyManagementApp
--
### 1. Şirket Kayıt
- CompanyManagementApp, şirket ismi, kuruluş yılı ve bütçe ile şirket oluşturulan bir uygulamadır. Uygulamada, şirkete çalışan eklenebilir, çalışanlar listelenebilir, bütçeye gelir & gider eklenebilir ve bütçeden maaşlar ödenebilir.
- Küçük cihazlarda da çalışabilmesi için (en küçük iPhoneSE 3rd Gen) textField'lara tıklandığında klavye açılırken ekran yukarı hareket eder.

<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/202916045-f55b2bb0-9fb4-4468-8321-4629deec41d7.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916051-8696f399-18ce-4c2e-a698-ff6ceda6b578.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916053-d3333e01-2422-4665-beda-d83fc30a1162.png" alt="drawing" width="250"/></td>  
</tr>
</table>
</div>

- Şirket kayıt ekranından, ImagePickerController ile galeriden logo seçimi yapılır.
- Şirket adı, bütçe ve kuruluş yılı bilgileri girilerek create ile şirket oluşturulur.

### 2. Şirket Detay
<div align="center">
<td><img src="https://user-images.githubusercontent.com/96587699/202916054-43afbb67-8784-431e-b302-79cebd6a0d5e.png" alt="drawing" width="250"/></td>  
</div>

- Şirket detay sayfasında görseldeki şekilde detay bilgiler gösterilir.
- Çalışan sayısı ve toplam maaş alanları, çalışan eklendikten sonra güncellenir.
- Gelir ve gider eklemeleri bu sayfadan yapılabilir.
- Yeni çalışan ekleme ve çalışan listeleme sayfalarına geçiş yapılabilir.

### 3. Çalışan Ekleme
<div align="center">
<td><img src="https://user-images.githubusercontent.com/96587699/202916091-63d92330-2513-419a-a27f-8e10b38c617d.png" alt="drawing" width="250"/></td>  
</div>

- Çalışan adı, title, yaş, id, medeni hal bilgileri girildikten sonra text editleme işlemi bitince maaş otomatik hesaplanır.
- Title ve medeni hal PickerView'den seçilir. 
- PickerView ilk açıldığında ilk index default olarak seçilmiş gelir.

### 4. Çalışan Listeleme
<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/202916064-826f03f6-f997-4d9e-8112-40127a19ee25.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916065-a03ff0d7-910d-4479-81d0-9e4fad7892d4.png" alt="drawing" width="250"/></td>  
</tr>
</table>
</div>

- Listeleme ekranında, çalışanlar, yaş, medeni hal, id, maaş ve title'ları ile listelenir.
- Çalışanlar isimlerine göre aratılabilir. Aratma case insensitive olarak gerçekleşir.
- Aratma yapılırken ilk harfler yazıldıkça listeleme anlık güncellenir.

### 5. Uyarılar
<div align="center">
<table>
<tr>
<td><img src="https://user-images.githubusercontent.com/96587699/202916069-8f05766a-22ea-416e-b586-756981d31e71.png" alt="drawing" width="250"/></td>   
<td><img src="https://user-images.githubusercontent.com/96587699/202916138-69e1fb21-1dbe-48e0-b2b3-065cc4f5459a.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916142-8120238d-4d99-4baf-901c-28eea397b443.png" alt="drawing" width="250"/></td>  
</tr>
</table>
</div>

Bazı örnek uyarılar yukarıdaki görsellerde mevcuttur.
#### Diğer Uyarılar
- **Boşluklar doldurulmadığında:** "Please make sure you fill in the blanks correctly."
- **Numeric alanlar doldurulmadığında veya non numeric doldurulduğunda:** "Please make sure you enter a value. The value you enter must be numeric."
- **Age ve id numeric doldurulmadığında:** "Age and Id should be integer." 
- **Aynı id'li çalışan eklenmek istendiğinde:** "There is already an employee with id: \(employeeId). Please try another id."
- **Bütçe gider eklemeye yetersiz ise:** "There is not enough money to pay expense. Please add income to budget case."
- **Çalışan maaşları ödendiğinde:** "\(totalSalary.formattedWithSeparator)₺ employee salaries are paid. Remaining budget: \(budget.formattedWithSeparator)₺."
- **Maaşlara yeterli bütçe yoksa:** "There is not enough money to pay salaries. Please add income to budget case."
- **Çalışan yokken maaş ödenmek istendiğinde:** "There is no employee to pay salary."
