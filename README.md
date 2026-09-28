# إسناد — منصة العلم والمصدر

محرك بحث أكاديمي حي (ملف HTML واحد بلا تبعيات) يستعلم من OpenAlex وCrossref وSemantic Scholar وPubMed وDOAJ
وGoogle Books وInternet Archive وفهرس تراث محلي، مع روابط مباشرة إلى Google Scholar ودار المنظومة والمكتبة الشاملة،
وسلة مراجع وتصدير (APA / MLA / Chicago / IEEE / Vancouver / Harvard / BibTeX / RIS).

## الإعداد
في أعلى السكربت داخل `index.html` كائن `CONFIG`:
- `openalexKey`: مفتاح OpenAlex المجاني (https://openalex.org/settings/api). بدونه تعمل حصة يومية صغيرة جدًا (~0.10$).
  مع المفتاح ~1$ يوميًا، أي نحو 1000 عملية بحث. **المفتاح داخل صفحة عامة يراه الجميع وتُستهلك حصته من كل الزوار.**
- `mailto`: بريد اختياري لتعريف الطلبات لدى Crossref/OpenAlex.

## النشر
يُنشر تلقائيًا على GitHub Pages عند الدفع إلى `main` (Settings → Pages → Source: GitHub Actions).
