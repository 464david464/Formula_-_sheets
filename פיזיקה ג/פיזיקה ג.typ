#set text(lang: "he", dir: rtl, size: 9pt, font: ("Assistant", "Arial"))

#set page(margin: 1cm, flipped: true, numbering: "1")

#place(top + center, float: true, scope: "parent")[
  #block(inset: (bottom: 1pt))[
    #text(font: ("Assistant", "Arial"), size: 14pt, weight: "bold")[דף נוסחאות פיזיקה ג תשפ"ו]
  ]
]
// 3. הגדרת 4 עמודות שזורמות מימין לשמאל
#show: columns.with(4, gutter: 5pt)
#set block(spacing: 5pt)

#block(
  fill: gray.lighten(100%), // צבע הרקע של הקופסה
  stroke: 0.5pt + black, // העובי והצבע של המסגרת
  inset: 5pt, // המרווח בין הטקסט למסגרת
  radius: 2pt, // כמה הפינות מעוגלות
)[
  == קבועים

  קבוע פלאנק: #h(1fr) $h = 6.626 times 10^(-34) [ upright(J) dot upright(s) ]$

  קבוע פלאנק המצומצם: #h(1fr) $planck = h / (2 pi) [ upright(J) dot upright(s) ]$

  קבוע בולצמן:#h(1fr)     $k_B = 1.38 times 10^(-23) [ upright(J) / upright(K) ]$

  מהירות האור בריק:#h(1fr) $c = 3 times 10^8 [ upright(m) / upright(s) ]$

  קבוע סטפן-בולצמן:#h(1fr) $sigma = 5.672 times 10^(-8) [ upright(W) / (upright(m)^2 upright(K)^4) ]$

  קבוע וין: #h(1fr) $b = 2.9 times 10^(-3) [ upright(m) dot upright(K) ]$

  מסת האלקטרון:#h(1fr)  $m_e = 9.109 times 10^(-31) [ upright("kg") ]$

  מטען האלקטרון:#h(1fr)  $e = 1.602 times 10^(-19) [ upright(C) ]$

  רדיוס בוהר:#h(1fr)  $a_0 = 0.529 thin angstrom$

  אנרגיית רמת היסוד של המימן:#h(1fr)  $E_0 = 13.6 [ upright("eV") ]$

  מספר אבוגדרו:#h(1fr)  $N_A = 6.022 times 10^{23} [ upright("mol")^(-1) ]$

  == קבועים עבור יחידות $upright("eV")$

  קבוע פלאנק: #h(1fr) $h = 4.136 times 10^(-15) [ upright("eV") dot upright(s) ]$

  קבוע פלאנק המצומצם: #h(1fr) $planck = 6.582 times 10^(-16) [ upright("eV") dot upright(s) ]$

  קבוע בולצמן:#h(1fr)     $k_B = 8.617 times 10^(-5) [ upright("eV") / upright(K) ]$
]



#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == שיווי משקל תרמודינמי

  *התפלגות והסתברות:*

  התפלגות בולצמן: #h(1fr) $P(E) = A e^(-E / (k_B T))$ \
  #text(size: 8pt)[$E$ - אנרגיית המצב, $T$ - טמפרטורה, $k_B$ - קבוע בולצמן, $A$ - קבוע נרמול.]

  תנאי נרמול: #h(1fr) $integral P(E) d E = 1$ \
  #text(size: 8pt)[ההסתברות הכוללת למצוא את החלקיק באחד מכל המצבים האפשריים שווה ל-1.]

  תוחלת של משתנה $x$: #h(1fr) $⟨ x ⟩ = integral_(-oo)^oo x P(x) d x$ \
  #text(size: 8pt)[הערך הממוצע (תוחלת) של משתנה, מחושב בעזרת פונקציית ההתפלגות.]


  ההסתברות למציאת חלקיק בגובה $h$:

  #h(1fr) $P(h) = (m g) / (k_B T) exp(-(m g h) / (k_B T))$ \


  גובה ממוצע של חלקיק בעל מסה $m$: #h(1fr) $⟨ h ⟩ = (k_B T) / (m g)$ \
  #text(size: 8pt)[הגובה הממוצע נמצא ביחס ישר לטמפרטורה $T$ .]

  *עקרון החלוקה השווה וקיבול חום:*

  האנרגיה הממוצעת של חלקיק חופשי במרחב:

  #h(1fr) $⟨ E ⟩ = 3/2 k_B T$ \

  *עבור דרגת חופש אחת*

  האנרגיה הפוטנציאלית הממוצעת של חלקיק:

  #h(1fr) $⟨ E_p ⟩ = 1/2 m omega^2 ⟨ x^2 ⟩ = 1/2 k_B T$ \
  #text(size: 8pt)[תרומה של דרגת חופש פוטנציאלית אחת (כמו קפיץ בציר אחד).]

  האנרגיה הקינטית הממוצעת של חלקיק:

  #h(1fr) $⟨ E_k ⟩ = 1/2 m ⟨ v^2 ⟩ = 1/2 k_B T$ \
  #text(size: 8pt)[תרומה של דרגת חופש קינטית אחת (תנועה בציר אחד).]

  *עקרון החלוקה השווה*: כל איבר באנרגיה התלוי במשתנה בריבוע תורם בממוצע $n/2 k_B T$ \
  #text(
    size: 8pt,
  )[כאשר $n$ הוא מספר דרגות החופש של המערכת. דרגת חופש היא כל דרך בלתי-תלויה שבה החלקיק יכול לאגור אנרגיה. למשל, לחלקיק חופשי יש $n=3$ דרגות חופש כי הוא יכול לנוע ב-3 צירי המרחב ($x, y, z$).]

  הגדרת קיבול חום סגולי: #h(1fr) $C_V = (d E) / (d T)$ \
  #text(size: 8pt)[$C_V$ - קיבול החום. השינוי באנרגיה הפנימית $E$ כתוצאה משינוי בטמפרטורה $T$.]

  קיבול חום לגז: \
  #text(size: 8pt)[חד-אטומי (3 דרגות חופש):] #h(1fr) $C_V = 3/2 R$ \
  #text(size: 8pt)[דו-אטומי (5 דרגות חופש):] #h(1fr) $C_V = 5/2 R$ \
  #text(size: 8pt)[$R$ - קבוע הגזים האוניברסלי, $R = 8.314 [ upright(J) / (upright("mol") dot upright(K)) ]$.]

  חוק דילון-פטי (קיבול חום למוצק):

  #h(1fr) $C_V = 3 N k_B = 3 R$ \
  #text(size: 8pt)[מוצק מתואר כאוסף קפיצים (6 דרגות חופש לאטום). $N$ - מספר החלקיקים.]

  *מספר מצבי תנודה בתיבה:*

  אורכי גל ותדרים מותרים בתיבה חד-מימדית (באורך $L$):

  #h(1fr) $lambda_n = (2 L) / n , quad nu_n = c / (2 L) n$ \
  #text(size: 8pt)[$n$ - מספר טבעי המייצג את מספר חצאי אורך הגל בתיבה.]

  מספר גלים/מצבים מותרים עד תדר $nu$ בתיבה בעלת צלע $L$ (לגל ללא קיטוב): \
  #text(size: 8pt)[בחד-מימד (1D):] #h(1fr) $N_"1D" = n = (2 L) / lambda = (2 L) / c nu$ \

  #text(size: 8pt)[בדו-מימד (2D):] #h(1fr) $N_"2D" = 1/4 pi n^2 = (pi L^2) / lambda^2 = (pi L^2 nu^2) / c^2$ \
  #text(size: 8pt)[בתלת-מימד (3D):]

  #h(1fr) $N_"3D" = 1/8 (4/3 pi n^3) = (4 pi L^3) / (3 lambda^3) = (4 pi L^3 nu^3) / (3 c^3)$ \

  עבור גלים אלקטרומגנטיים בתלת-מימד יש 2 קיטובים, ולכן נכפיל פי 2:

  #h(1fr) $N_"3D, photons"(nu) = 2 times 1/6 pi n^3 = (8 pi L^3 nu^3) / (3 c^3)$ \

  מספר מצבי תנודה ליחידת נפח ותדר (הנגזרת של $N_"3D, photons"$ חלקי הנפח $V=L^3$):

  #h(1fr) $(d N(nu)) / V = (8 pi nu^2) / c^3 d nu$ \
  #text(size: 8pt)[$nu$ - התדר, $c$ - מהירות האור, $V$ - נפח התיבה. מבטא את צפיפות המצבים האפשריים במרחב התלת-מימדי.]

  *קרינת גוף שחור *

  נוסחת ריילי-ג'ינס (צפיפות אנרגיה):

  #h(1fr) $rho(nu) = (8 pi nu^2 k_B T) / c^3 d nu$ \
  #text(
    size: 8pt,
  )[$rho(nu)$ - האנרגיה ליחידת נפח ויחידת תדר. הנוסחה מבוססת על פיזיקה קלאסית ונכשלת בתדרים גבוהים (הקטסטרופה האולטרה-סגולה).]

  נוסחת פלאנק לאנרגיה ממוצעת של אוסצילטור (אטום רוטט בחומר הפולט קרינה):

  #h(1fr) $overline(E) = (h nu) / (e^((h nu) / (k_B T)) - 1)$ \
  #text(
    size: 8pt,
  )[מחליפה את הערך הקלאסי $k_B T$. מניחה שהאטומים בחומר קולטים ופולטים אנרגיה רק במנות בדידות (קוונטות) של $h nu$.]

  צפיפות האנרגיה של קרינת גוף שחור (נוסחת פלאנק המלאה):

  #h(1fr) $rho(nu) = (8 pi h nu^3) / c^3 1 / (e^((h nu) / (k_B T)) - 1) d nu$ \
  #text(
    size: 8pt,
  )[הנוסחה המדויקת, שמתקבלת מהכפלת צפיפות המצבים באנרגיה הממוצעת $overline(E)$, ופותרת את הקטסטרופה האולטרה-סגולה.]

  חוק וין: #h(1fr) $lambda_max = b / T [ upright(m) ]$

  חוק סטפן-בולצמן: #h(1fr) $I = sigma T^4 [ upright(W) / upright(m)^2 ]$
]




#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == האפקט הפוטו-אלקטרי

  קשרי גל בסיסיים: \ #h(1fr) $c = lambda nu quad , quad omega = 2 pi nu quad , quad T = 1/nu quad , quad k = (2 pi) / lambda$ \
  אנרגיה של פוטון: #h(1fr) $E_"ph" = h nu = planck omega = (h c) / lambda$ \
  תנע של פוטון: #h(1fr) $p_"ph" = E_"ph" / c = (h nu) / c = planck k = h / lambda$

  האנרגיה הקינטית של פוטון ($B$ אנרגיית קשר):

  #h(1fr) $E_k = E_"ph" - B$

  תדירות הסף: #h(1fr) $nu = B / h [ upright("Hz") ]$

  מתח עצירה (כאשר $E_k = U_e$): #h(1fr) $V_"stop" = E_k_max / e$
  === המשך: האפקאט הפוטו-אלקטרי
  קשר בין אנרגיה לאורך גל: #h(1fr) $E = 1240 / (lambda[upright("nm")]) [ upright("eV") ]$

  גרף מתח העצירה כתלות בתדר: #h(1fr) $V_0 = (h nu)/e - B/e$
  #image("melicenGraph.png", width: 100%)
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == אפקט קומפטון
  בכל זווית לבד מאפס ניתן למצוא שני אורכי גל . אורך הגל המקורי $lambda_0$ ועוד אורך גל $lambda(theta)$ כאשר $lambda(theta) > lambda_0$


  הפרש אורכי הגל:

  #h(1fr) $lambda_2 - lambda_1 = h / (m_e c) (1 - cos theta)$

  אורך גל קומפטון של האלקטרון:

  #h(1fr) $lambda_C = h / (m_e c) = 0.00243 [ upright("nm") ]$
]
#colbreak()
#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == קרינת רנטגן - X (קרינת בלימה)

  *הסבר:* קרינת X נוצרת כאשר אלקטרונים מואצים דרך מפל מתח $V$ ופוגעים באנודה (מטרה מתכתית). כשהם נבלמים בחומר, הם פולטים פוטונים. האנרגיה המקסימלית של פוטון מתקבלת כאשר כל האנרגיה הקינטית של האלקטרון מומרת לפוטון בודד.

  האנרגיה הקינטית של האלקטרון המואץ: #h(1fr) $E_k = e V$

  אנרגיית פוטון מקסימלית ותדר מקסימלי: #h(1fr) $e V = h nu_max = (h c) / lambda_min$

  אורך גל מינימלי (גבול הספקטרום הרציף):

  #h(1fr) $lambda_min = (h c) / (e V) = (1.24 times 10^4) / V [ upright(angstrom) ]$ \
  #text(size: 8pt)[$V$ הוא מפל המתח, והתוצאה היא באנגסטרם ($10^(-10) m$).]
]


#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == מודל האטום של רתפורד (פיזור חלקיקי $alpha$)

  מרחק התקרבות מינימלי (בהתנגשות חזיתית, $E_k$ אנרגיה קינטית, $q_N = Z e$):

  #h(1fr) $r_min = (k q_alpha q_N) / E_k$

  קשר בין פרמטר פגיעה $b$ לזווית הפיזור $theta$:

  #h(1fr) $b = 1/2 r_min cot(theta / 2) = (k q_alpha q_N) / (m v_0^2) cot(theta / 2)$
  \ $cot alpha = 1/(tan alpha)$

  חתך פעולה דיפרנציאלי לפיזור רתפורד (הסתברות הפיזור):

  #h(1fr) $(d sigma) / (d Omega) = 1/16 ((k q_alpha q_N) / E_k)^2 1 / (sin^4(theta / 2))$
]


#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == מודל בוהר לאטום המימן

  קוונטיזציה של התנע הזוויתי:

  #h(1fr) $L = m v r = n planck$ \
  #text(size: 8pt)[כאשר $n = 1, 2, 3, ...$]

  רדיוס מסלול $n$: #h(1fr) $r_n = (planck^2) / (k e^2 m) n^2 = a_0 n^2$ \
  #text(size: 8pt)[רדיוס בוהר: $a_0 = 0.53 [ upright(angstrom) ]$]

  רמות אנרגיה באטום המימן:

  #h(1fr) $E_n = -E_0 / n^2 = - (m k^2 e^4) / (2 planck^2 n^2) = (-13.6 [ upright("eV") ]) / n^2$ \
  #text(
    size: 8pt,
  )[כאשר $E_0$ היא האנרגיה הקינטית במסלול הראשון: \ $E_0 = (m k^2 e^4) / (2 planck^2) = 13.6 [ upright("eV") ]$.]

  *האנרגיה הקינטית באטום המימן:* \
  #h(
    1fr,
  ) $E_k = p^2/(2m) = (m v)^2 / (2m) = ((n planck) / r_n)^2 / (2m) = (n^2 planck^2) / (2 m r_n^2) = (k e^2) / (2r_n) = \ - E_p / 2 = - E_n$ \
  #text(
    size: 8pt,
  )[$k$ הוא קבוע קולון החשמלי: $k = 9 times 10^9 [ (upright("N") dot upright("m")^2) / upright("C")^2 ]$.]

  נוסחת רידברג (פליטת פוטון במעבר מרמה $n_i$ ל-$n_f$):

  #h(1fr) $1 / lambda = R (1 / n_f^2 - 1 / n_i^2)$ \
  #text(size: 8pt)[קבוע רידברג: $R = 1.097 times 10^(-3) [ upright(angstrom)^(-1) ]$. אנרגיית הפוטון היא $E_i - E_f$.]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == מודל בוהר לאטומים דמויי-מימן (יון עם אלקטרון יחיד)

  עבור גרעין עם $Z$ פרוטונים, נחליף את $e^2$ בנוסחאות ב-$Z e^2$.

  רמות אנרגיה:

  #h(1fr) $E_n = (-13.6 times Z^2) / n^2 [ upright("eV") ]$

  רדיוס מסלול:

  #h(1fr) $r_n = a_0 / Z n^2$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == ניסוי פרנק-הרץ

  #text(
    size: 8pt,
  )[האצת אלקטרונים דרך שפופרת המכילה גז כספית, כאשר לפני אנודת האיסוף מוצב סריג עם מתח מעכב. האלקטרונים מואצים, וכל עוד האנרגיה הקינטית שלהם נמוכה מפוטנציאל העירור הראשון (4.88V), ההתנגשויות אלסטיות והזרם באנודה עולה. כאשר מתח התאוצה מגיע ל-4.88V בדיוק, מתבצעת התנגשות אינאלסטית: האלקטרונים מוסרים לאטומים את מירב האנרגיה שלהם, ונותרים ללא אנרגיה מספקת להתגבר על המתח המעכב. כתוצאה מכך יש נפילה חדה בזרם הנמדד. תופעה זו חוזרת במחזוריות קבועה עבור כל כפולה שלמה של פוטנציאל העירור (4.88V)  מה שמוכיח את קיום רמות האנרגיה הבדידות.]

  הפרש האנרגיה בין הרמות:
  #h(1fr) $Delta E = e V_0 = h nu$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == דואליות גל-חלקיק (קשרי דה-ברויי)

  #h(1fr) $E = planck omega quad , quad p = planck k$ \
  #text(size: 8pt)[ $k$ בביטוי של התנע הוא *מספר הגל* ($k = (2pi)/lambda$)]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == עקרון אי-הוודאות של הייזנברג: \
  אי-ודאות במרחב (מיקום-תנע): #h(1fr) $Delta x Delta p >= planck / 2$ \
  #text(size: 8pt)[אי-הוודאות מוגדרת פורמלית כסטיית התקן הסטטיסטית: $Delta x = sigma_x quad , quad Delta p = sigma_p$] \
  אי-ודאות בזמן (אנרגיה-זמן): #h(1fr) $Delta E Delta t >= planck / 2$ \
  #text(size: 8pt)[כאשר $Delta E = sigma_E$ ו-$Delta t$ הוא הזמן האופייני לשינוי המערכת.]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == משוואות שרדינגר

  הגדרת האנרגיה הכללית:

  #h(1fr) $E = E_k + U = p^2 / (2m) + U$

  *הפעלת אופרטור:* \
  #text(size: 8pt)[הפעלת האופרטור $hat(A)$ מחלצת את הערך הפיזיקלי $a$ שלו (הגודל המדיד): #h(1fr) $hat(A) Psi = a Psi$]

  אופרטור התנע (מקושר לתנועת החלקיק):

  #h(1fr) $hat(p) = -i planck (partial) / (partial x) quad => quad hat(p) Psi = p Psi$

  אופרטור התנע בריבוע (מקושר לאנרגיה הקינטית):

  #h(1fr) $hat(p)^2 = -planck^2 (partial^2) / (partial x^2) quad => quad hat(p)^2 Psi = p^2 Psi$

  אופרטור ההמילטוניאן (מייצג את האנרגיה הכוללת במערכת):

  #h(
    1fr,
  ) $hat(H) = hat(p)^2 / (2m) + U(x) = - planck^2 / (2m) (partial^2) / (partial x^2) + U(x) quad => quad hat(H) Psi = E Psi$

  אופרטור האנרגיה (לפי הזמן):

  #h(1fr) $hat(E) = i planck (partial) / (partial t) quad => quad hat(E) Psi = E Psi$

  משוואת שרדינגר משוויון אופרטורים:

  #h(1fr) $hat(E) Psi = hat(H) Psi$

  פתיחת משוואת שרדינגר:

  #h(1fr) $i planck (partial Psi) / (partial t) = (- planck^2 / (2m) (partial^2) / (partial x^2) + U(x)) Psi$

  === המשוואה התלויה בזמן:

  #h(1fr) $i planck (partial Psi) / (partial t) = - planck^2 / (2m) (partial^2 Psi) / (partial x^2) + U Psi$

  == המשוואה שאינה תלויה בזמן:

  #h(1fr) $E Psi(x) = - planck^2 / (2m) (partial^2 Psi(x)) / (partial x^2) + U(x) Psi(x)$

  *הכללה לתלת-מימד:* \
  אופרטור הלפלסיאן בקואורדינטות כדוריות: \
  #set text(dir: ltr)
  #text(size: 8pt)[
    $nabla^2=1/(r^2) partial/(partial r) (r^2 partial/(partial r)) + 1/(r^2) [1/sin theta partial/(partial theta) (sin theta partial/(partial theta))+1/(sin^2 theta) partial^2/(partial phi^2)]$
  ]
  #set text(dir: rtl)
  אופרטור התנע והתנע בריבוע:\ #h(1fr) $hat(p) = -i planck nabla quad , quad hat(p)^2 = -planck^2 nabla^2$ \
  ההמילטוניאן:\ #h(1fr) $hat(H) = - planck^2 / (2m) nabla^2 + U(r)$ \
  המשוואה התלויה בזמן:\ #h(1fr) $i planck (partial Psi) / (partial t) = - planck^2 / (2m) nabla^2 Psi + U(r) Psi$ \
  המשוואה שאינה תלויה:\ #h(1fr) $nabla^2 Psi(r) = - (2m) / planck^2 (E - U(r)) Psi(r)$

  == תוחלות, סטטיסטיקה והפרדת משתנים

  צפיפות הסתברות (הסיכוי למצוא את החלקיק בנקודה):\
  #text(size: 8pt)[$Psi^*$ הצמוד של- $Psi$]     :
  #h(1fr) $rho(x) = |Psi(x)|^2 = Psi^* Psi$

  הסתברות למצוא את החלקיק בתחום $[a, b]$:

  #h(1fr) $P(a <= x <= b) = integral_a^b |Psi(x)|^2 d x$

  תנאי נרמול (החלקיק חייב להימצא במרחב):

  #h(1fr) $integral_(-oo)^oo |Psi|^2 d x = 1$

  תוחלת של משתנה $x$:

  #h(1fr) $chevron.l x chevron.r = integral_(-oo)^oo x rho(x) d x$

  תוחלת של אופרטור $hat(A)$ :

  #h(1fr) $chevron.l hat(A) chevron.r = integral_(-oo)^oo Psi^* hat(A) Psi d x$

  שונות ($sigma^2$):

  #h(1fr) $Delta A^2 = sigma_A^2 = chevron.l hat(A)^2 chevron.r - chevron.l hat(A) chevron.r^2$

  סטיית תקן (אי-ודאות של גודל מדיד):

  #h(1fr) $Delta A = sigma_A = sqrt(chevron.l hat(A)^2 chevron.r - chevron.l hat(A) chevron.r^2)$

  הפרדת משתנים כללית (מרחב וזמן במצבים עומדים):

  #h(1fr) $Psi(r, t) = psi(r) e^(-i E t / planck)$

  הפרדת משתנים פולרית \(בעזרת הרמוניות ספריות $Y_(ell, m_ell)$):

  #h(1fr) $psi(r, theta, phi) = R_(n, ell)(r) Y_(ell, m_ell)(theta, phi)$

  ההרמוניות הכדוריות (החלק הזוויתי לכל פוטנציאל מרכזי):\
  #h(1fr) 
  #text(size: 8pt)[$Y_ell^(m_ell)(theta, phi) = (-1)^(m_ell) sqrt((2ell+1)/(4pi) ((ell-m_ell)!)/((ell+m_ell)!)) P_ell^(m_ell)(cos theta) e^(i m_ell phi)$] \
  #text(size: 8pt)[*תלויות:* $R_(n, ell)(r)$ הוא החלק הרדיאלי. ההרמוניות הכדוריות מתארות את התפלגות החלקיק הזוויתית (צורת האורביטל במרחב, פולינום לז'נדר $P$).]

  *תנאי שפה כלליים (תקפים תמיד לפונקציית גל):* \
  התאפסות באינסוף (הכרחי לנרמול):\ #h(1fr) $Psi(x) = 0 : lim_(x -> plus.minus oo)$ \
  רציפות הפונקציה : #h(1fr) $Psi(x_0^+) = Psi(x_0^-)$ \
  רציפות הנגזרת : #h(1fr) $Psi'(x_0^+) = Psi'(x_0^-)$ \
  #text(size: 8pt)[*חריג:* הנגזרת אינה רציפה במקום בו הפוטנציאל אינסופי.]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == יישומים חד-מימדיים

  *חלקיק בקופסה (בור פוטנציאל אינסופי באורך $L$):* \
  תנאי שפה: #h(1fr) $psi(0) = psi(L) = 0$ \
  רמות אנרגיה מותרות: #h(1fr) $E_n = (n^2 h^2) / (8 m L^2) = (n^2 pi^2 planck^2) / (2 m L^2)$ \
  פונקציות גל: #h(1fr) $psi_n(x) = sqrt(2/L) sin((n pi x) / L)$ \
  #text(size: 8pt)[$n = 1, 2, 3, ...$]

  *פוטנציאל מדרגה:* \
  #h(1fr) $U(x) = cases(0 & : x < 0, U_0 & : x >= 0)$ \
  כאשר $E > U_0$: \
  #h(1fr) $k_1 = sqrt(2m E) / planck quad , quad k_2 = sqrt(2m(E - U_0)) / planck$ \ \
  פונקציית גל: #h(1fr) $psi(x) = cases(A e^(i k_1 x) + B e^(-i k_1 x) & : x < 0, C e^(i k_2 x) & : x >= 0)$ \ \
  מקדמים: #h(1fr) $B = (k_1 - k_2)/(k_1 + k_2) A quad , quad C = (2k_1)/(k_1 + k_2) A$ \
  כאשר $E < U_0$: \
  #h(1fr) $k_1 = sqrt(2m E) / planck quad , quad k_2 = sqrt(2m(U_0 - E)) / planck$ \ \
  פונקציית גל: #h(1fr) $psi(x) = cases(A e^(i k_1 x) + B e^(-i k_1 x) & : x < 0, C e^(-k_2 x) & : x >= 0)$ \
  #text(size: 8pt)[יש גל חוזר מלפני המדרגה, ודעיכה אקספוננציאלית מעבר למדרגה.]

  *מחסום פוטנציאל (מנהור):* \
  #h(1fr) $U(x) = cases(U_0 & : 0 <= x <= d, 0 & : "אחרת")$ \
  עבור $E < U_0$, מספרי הגל זהים למדרגה. מקדם ההעברה המדויק: \
  #h(1fr) $T = [ 1 + (U_0^2) / (4 E (U_0 - E)) sinh^2(k_2 d) ]^(-1)$ \
  קירובים למחסום רחב ($k_2 d gt.double 1$): \
  הביטוי המלא למחסום רחב: #h(1fr) $T approx (16 E (U_0 - E)) / (U_0^2) e^(-2 k_2 d)$ \
  הקירוב המעשי הנפוץ (לסדרי גודל): #h(1fr) $T approx e^(-2 k_2 d)$ \
  #text(size: 8pt)[יש הסתברות למעבר חלקיק דרך המחסום, בניגוד לפיזיקה הקלאסית.]

  *אוסילטור הרמוני קוונטי:* \
  פוטנציאל: #h(1fr) $U(x) = 1/2 m omega^2 x^2$ \
  רמות אנרגיה: #h(1fr) $E_n = planck omega (n + 1/2)$ \
  #text(size: 8pt)[$n = 0, 1, 2, ...$ (קיימת "אנרגיית נקודת אפס" $E_0 = 1/2 planck omega$)] \
  פונקציית מצב היסוד (גאוסיאן): #h(1fr) $psi_0(x) = A e^(- (m omega) / (2 planck) x^2)$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == משוואת שרדינגר לאטום המימן
 *הפרדת משתנים באטום המימן:* \
  צורה כללית של הפתרון:\ #h(1fr) $psi(r, theta, phi) = R(r) Theta(theta) Phi(phi)$

  המשוואה הרדיאלית $R(r)$ (החלק הרדיאלי שייך ל-$n$ ול-$ell$):\
  #text(size: 8pt)[מגדירים $u(r) = r R(r)$ ומקבלים משוואה התלויה בפוטנציאל האפקטיבי:] \
  #h(1fr) $(partial^2 u(r)) / (partial r^2) + (-kappa^2 + 2 / (a_0 r) - (ell(ell+1)) / r^2) u(r) = 0$ \
  הפתרון הרדיאלי המלא: \
  #h(1fr) 
  #text(size: 8pt)[$R_(n,ell)(r) = sqrt((2/(n a_0))^3 ((n-ell-1)!)/(2n(n+ell)!)) ((2r)/(n a_0))^ell e^(-r/(n a_0)) L_(n+ell)^(2ell+1)((2r)/(n a_0))$]\
  #text(size: 8pt)[פונקציית הגל הרדיאלית: מכתיבה הסתברות כפונקציה של מרחק מהגרעין. דועכת מעריכית ומכילה פולינומי לאגר $L$ שיוצרים "צמתים" רדיאליים.] \

  המשוואה האזימוטלית $Phi(phi)$ (החלק הזוויתי של $phi$ שייך רק ל-$m_ell$): \
  #h(1fr) $(partial^2 Phi) / (partial phi^2) + m_ell^2 Phi = 0 quad => quad Phi(phi) = 1 / sqrt(2 pi) e^(i m_ell phi)$

  המשוואה הפולרית $Theta(theta)$ (החלק הזוויתי של $theta$ שייך ל-$ell$ ול-$m_ell$): \
  #h(
    1fr,
  ) $1 / (sin theta) partial / (partial theta) (sin theta (partial Theta) / (partial theta)) + (ell(ell+1) - (m_ell^2) / (sin^2 theta))Theta = 0$

הביטוי הכללי לחלק ההרמוני: \
#text(size: 8pt)[$Y_ell^(m_ell)(theta, phi) = (-1)^(m_ell) sqrt((2ell+1)/(4pi) ((ell-m_ell)!)/((ell+m_ell)!)) P_ell^(m_ell)(cos theta) e^(i m_ell phi)$] \ \
$Y_ell^(m_ell)(theta, phi) = Phi(phi) Theta(theta)$


  *תנע זוויתי:* \
  אופרטור התנע הזוויתי בריבוע: \
  #set text(dir: ltr)
  $hat(L)^2= -planck^2 [1/sin theta partial/(partial theta) (sin theta partial/(partial theta))+1/(sin^2 theta) partial^2/(partial phi^2)]$
  #set text(dir: rtl)
  גודל התנע הזוויתי הכולל: #h(1fr) $L = planck sqrt(ell(ell+1))$ \
  אופרטור היטל התנע הזוויתי על ציר $z$: #h(1fr) $hat(L)_z = -i planck partial / (partial phi)$ \
  היטל התנע הזוויתי (הערך העצמי): #h(1fr) $L_z = m_ell planck$

 

  *מספרים קוונטיים (היררכיית התלויות):* \
  #text(size: 8pt)[כדי לאפיין מצב באטום נדרשים 4 מספרים קוונטיים. כל מספר מגביל את האפשרויות של זה שאחריו:] \
  *1. מספר ראשי $n$* (קובע את רמת האנרגיה): \
  #h(1fr) $n = 1, 2, 3, ...$ \
  *2. תנע זוויתי אורביטלי $ell$* (קובע את גודל התנע וצורת האורביטל): \
  #text(size: 8pt)[לכל רמה $n$, יש בדיוק $n$ צורות אפשריות. הערכים מתחילים מ-0 ונגמרים ב-$n-1$.] \
  #h(1fr) $ell = 0, 1, 2, ..., n-1$ \
  *3. מספר קוונטי מגנטי $m_ell$:* \
  #h(1fr) $m_ell = -ell, ..., 0, ..., +ell$ \
  *4. ספין $m_s$:* \
  #h(1fr) $m_s = +- 1/2$ (היטל תנע זוויתי פנימי)\
  *צורת אכלוס האורביטלים באטום*
  #align(center)[
    #image("Orbiatals.jpg", width: 67%)
    #text(
      size: 8pt,
    )[*צורות אכלוס האורביטלים:* התפלגות ההסתברות של האלקטרון במרחב. תנע זוויתי $ell$ קובע את הצורה ($s, p, d, f$), ומספר $m_ell$ קובע את כיוון האורביטל במרחב.]
  ]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == מומנט דיפול מגנטי ואפקט זימן

  *מומנט דיפול מגנטי (המגנטון של בוהר):* \
  #h(1fr) $mu_B = (e planck) / (2 m_e)$ \
  #h(
    1fr,
  ) $mu_B = 9.274 times 10^(-24) [ upright("J") / upright("T") ] = 5.788 times 10^(-5) [ upright("eV") / upright("T") ]$

  *היטל מומנט הדיפול על ציר ה-$z$:* \
  #h(1fr) $mu_z = - m_ell mu_B$

  *אפקט זימן (Zeeman Effect):* \
  #text(
    size: 8pt,
  )[מכיוון ש-$m_ell$ יכול לקבל $2ell+1$ ערכים שונים, השדה המגנטי *מפצל* את רמת האנרגיה ל-$2ell+1$ תת-רמות אנרגיה . עבור מצב בו $ell=0$ (כמו מצב היסוד) אז $m_ell=0$ והאנרגיה לא משתנה (אין פיצול).]

  *שינוי האנרגיה וסך האנרגיה הכוללת (עם שדה מגנטי $B$):* \
  #h(1fr) $Delta E = -mu_z B = m_ell mu_B B quad\ ==> quad E = E_0 + m_ell mu_B B$ \
  #text(
    size: 8pt,
  )[$E$ - האנרגיה הכוללת החדשה. $E_0$ - אנרגיית הרמה המקורית ללא השדה. $m_ell$ - מספר קוונטי מגנטי . $mu_B$ - מגנטון בוהר. $B$ - עוצמת השדה המגנטי.]

  *כללי ברירה למעברי אנרגיה:* \
  #text(size: 8pt)[אלקטרון יכול לעבור בין רמות (ולפלוט/לבלוע פוטון) רק אם המעבר מקיים את הכללים הבאים:] \
  #h(1fr) $Delta ell = plus.minus 1 quad , quad Delta m_ell = 0, plus.minus 1$

  *היסט אורך הגל באפקט זימן:* \
  #text(
    size: 8pt,
  )[עקב פיצול הרמות, הפוטון הנפלט משנה את אורך הגל המקורי ($lambda_0$) שלו במידה קטנה. היסט זה מחושב על ידי ($Delta m_ell = 0, plus.minus 1$):] \
  #h(1fr) $Delta lambda = plus.minus (lambda_0^2 mu_B B) / (h c)$
]


#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == טרנספורמציית גלילאו

  *מעבר בין מערכות ייחוס \ (במהירויות נמוכות $v << c$):* \
  #text(size: 8pt)[אם מערכת $S'$ נעה ימינה במהירות קבועה $v$ ביחס למערכת $S$:] \
  #h(1fr) $x' = x - v t quad , quad y' = y quad , quad z' = z quad , quad t' = t$

  *חיבור מהירויות גליליי:* \
  #text(
    size: 8pt,
  )[אם גוף $A$ נע יחסית ל-$B$ במהירות $v_(A B)$, ו-$B$ נע יחסית ל-$C$ במהירות $v_(B C)$, אז מהירות $A$ ביחס ל-$C$ היא:] \
  #h(1fr) $v_(A C) = v_(A B) + v_(B C)$

  *הצגה מטריציונית:* \
  #h(1fr) $vec(x, t) = mat(1, v; 0, 1) vec(x', t') quad <=> quad vec(x', t') = mat(1, -v; 0, 1) vec(x, t)$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == ניסוי מייקלסון-מורלי (אינטרפרומטר - רוח האתר)
  #text(size: 8pt)[אינטרפרומטר בעל שתי זרועות באורך $L$, המערכת נעה במהירות $v$ דרך ה"אתר".] \
  *זמן תנועה בזרוע הניצבת לכיוון התנועה :*
  \ #h(
    1fr,
  ) $(c t_perp / 2)^2 = L^2 + (v t_perp / 2)^2 quad => \ quad t_perp = (2L) / sqrt(c^2 - v^2) approx (2L)/c (1 + v^2/(2c^2))$  \
  *זמן תנועה במסלול המקביל:* \
  #h(1fr) $t_parallel = L / (c-v) + L / (c+v) = (2L c) / (c^2 - v^2) approx (2L)/c (1 + v^2/c^2)$

  *הפרש זמנים ודרכים אופטיות:* \
  #h(1fr) $Delta t = t_parallel - t_perp approx (L v^2) / c^3 quad => quad Delta x = c Delta t approx (L v^2) / c^2$
  *היסט הפרינג'ים בסיבוב:* \
  #text(size: 8pt)[כאשר מסובבים את האינטרפרומטר ב-$90^degree$, התפקידים מתחלפים וההפרש מוכפל. מספר הפרינג'ים שיזוזו:] \
  #h(1fr) $Delta m = (2 Delta x) / lambda = (2 L v^2) / (lambda c^2)$]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == מוחלטות ויחסיות (סימולטניות)

  *1. בו-זמניות (סימולטניות):* \
  #text(
    size: 8pt,
  )[עבור שני אירועים המתרחשים *באותו זמן* אך במיקום שונה במערכת $S$ ($Delta t = 0, Delta x != 0$), הפרש הזמנים במערכת $S'$ הנעה ביחס אליה:] \
  #h(1fr) $Delta t' = -gamma (v)/(c^2) Delta x$

  *2. בו-מקומיות:* \
  #text(size: 8pt)[עבור שני אירועים המתרחשים *באותו מקום* במערכת $S$ ($Delta x = 0$), המרחק והזמן במערכת $S'$:] \
  #h(1fr) $Delta x' = -gamma v Delta t quad , quad Delta t' = gamma Delta t$

  *3. אירוע מוחלט:* \
  #text(size: 8pt)[עבור שני אירועים המתרחשים *באותו זמן ובאותו מקום* במערכת $S$ ($Delta x = 0, Delta t = 0$):] \
  #h(1fr) $Delta t' = 0 quad , quad Delta x' = 0$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == התארכות הזמן (זמן עצמי)

  *זמן עצמי ($Delta t_0$):* \
  #text(
    size: 8pt,
  )[הזמן הנמדד בשעון בודד הנמצא *במנוחה* ביחס לאירועים (כלומר, עבורו האירועים מתרחשים באותו מקום $Delta x' = 0$).] \
  *התארכות הזמן:* \
  #text(size: 8pt)[צופה אחר, שרואה את השעון העצמי נע במהירות $v$, ימדוד זמן ארוך יותר בין האירועים:] \
  #h(1fr) $Delta t = gamma Delta t_0 quad , quad gamma = 1 / sqrt(1 - (v^2)/(c^2)) > 1$ \

  $gamma$ הוא פקטור לורנץ. \
  #text(
    size: 8pt,
  )[(הזמן במערכת המעבדה תמיד ארוך יותר מהזמן העצמי). *פרדוקס התאומים:* במקרה של פרידה ופגישה מחדש, הצופה שהאיץ או שינה כיוון (החליף מערכת ייחוס) הוא זה שימדוד פחות זמן (יהיה צעיר יותר).]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == התקצרות האורך (אורך עצמי)

  *אורך עצמי ($L_0$):* \
  #text(
    size: 8pt,
  )[האורך של עצם הנמדד במערכת ייחוס שבה הוא *במנוחה*. כדי למדוד אורך של עצם נע, חובה למדוד את שני הקצוות שלו *בו-זמנית* ($Delta t = 0$).] \
  *התקצרות האורך:* \
  #text(size: 8pt)[צופה שרואה את העצם נע במהירות $v$ ביחס אליו, ימדוד אורך קצר יותר:] \
  #h(1fr) $L = (L_0) / gamma$ \
  *התקצרות במימד מקביל לעומת ניצב :* \
  #h(1fr) $L_|| = (L_0_||) / gamma quad , quad L_perp = L_(0 perp)$ \
  #h(1fr) $L cos theta = (L_0 cos theta') / gamma quad , quad L sin theta = L_0 sin theta'$ \
  #text(size: 8pt)[(ההתקצרות קורית *רק* לאורך כיוון התנועה המקביל למהירות. מימדים ניצבים לתנועה אינם מתקצרים).] \
  *אינווריאנט לורנץ :* \
  #h(1fr) $Delta t dot L = Delta t_0 dot L_0$ \

]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == טרנספורמציית לורנץ

  #text(size: 8pt)[$S'$ נעה במהירות קבועה $v$ בכיוון $+x$ ביחס ל-$S$. \
    נסמן, פקטור לורנץ: $beta = v/c quad , quad gamma = 1/sqrt(1-beta^2)$.] \

  *הצגה מטריציונית כללית* \
  הישירה מ-$S$ ל-$S'$: #h(1fr) $vec(x', t') = gamma mat(1, -v; -v/c^2, 1) vec(x, t)$ \
  \
  ההפוכה מ-$S'$ ל-$S$: #h(1fr) $vec(x, t) = gamma mat(1, v; v/c^2, 1) vec(x', t')$ \
  #text(size: 8pt)[פתיחה ישירה: $x' = gamma(x - v t) quad , quad t' = gamma(t - v/c^2 x)$] \

  *מטריצה מנורמלת:* \
  #text(size: 8pt)[יחידות זהות של אורך לשני הצירים] \
  הישירה מ-$S$ ל-$S'$: #h(1fr) $vec(c t', x') = gamma mat(1, -beta; -beta, 1) vec(c t, x)$ \
  \
  ההפוכה מ-$S'$ ל-$S$: #h(1fr) $vec(c t, x) = gamma mat(1, beta; beta, 1) vec(c t', x')$ \

  *מרחב מינקובסקי ב-4 ממדים (1+3):* \

  #h(
    1fr,
  ) $vec(c t', x', y', z') = mat(gamma, -gamma beta, 0, 0; -gamma beta, gamma, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1) vec(c t, x, y, z)$

]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == חיבור מהירויות יחסותיות נובע ישירות מטרנספורמציית לורנץ

  #text(
    size: 8pt,
  )[חלקיק נע במערכת $S'$, הנעה במהירות $v$ ביחס ל-$S$ (בכיוון ציר $x$). מהירויות החלקיק הן $u$ במערכת $S$ ו-$u'$ במערכת $S'$:] \
  *בציר $x$ (במקביל לכיוון התנועה):*\
  #h(
    1fr,
  ) $u_x = (u'_x + v) / (1 + (u'_x v) / (c^2)) quad , quad u'_x = (u_x - v) / (1 - (u_x v) / (c^2)) quad , quad v = (u_x - u'_x) / (1 - (u_x u'_x) / (c^2))$ \
  *בצירים $y,z$ (בניצב לכיוון התנועה):*\
  #h(1fr) $u_y = u'_y / (gamma (1 + (u'_x v) / (c^2))) quad , quad u'_y = u_y / (gamma (1 - (u_x v) / (c^2)))$ \
  #h(1fr) $u_z = u'_z / (gamma (1 + (u'_x v) / (c^2))) quad , quad u'_z = u_z / (gamma (1 - (u_x v) / (c^2)))$ \
  #text(size: 8pt)[כאשר $gamma = 1 / sqrt(1 - v^2/c^2)$] \
  נוסחאות עבור יחידות $c$ להציב את המהירויות ביחידות של $c$:\
  #h(
    1fr,
  ) $u_x = (u'_x + v) / (1 + u'_x v ) quad , quad u'_x = (u_x - v) / (1 - u_x v) quad , quad v = (u_x - u'_x) / (1 - u_x u'_x)$ \ \
  #h(1fr) $u_y = u'_y / (gamma (1 + u'_x v)) quad , quad u_z = u'_z / (gamma (1 + u'_x v))$ \
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == אינטרוול מרחב-זמן - מרחב מינקובסקי
  גודל אינווריאנטי. נשמר זהה בכל מערכות הייחוס \ *האינטרוול:   $I = I'=(Delta s)^2$.\ *
  כאשר $Delta s$  הוא המרחק האבסולוטי בין שני אירועים במרחב-זמן.

  #h(1fr) $I = (Delta s)^2 = (c Delta t)^2 - (Delta x)^2 - (Delta y)^2 - (Delta z)^2$ \
  עבור אינטרוול דמוי-זמן ($I > 0$), הקשר לזמן העצמי $Delta tau$ הוא: #h(1fr) $I = Delta s^2 = (c Delta tau)^2$

  *סוגי אינטרוולים:* \
  1. *דמוי-זמן - TL ($I > 0$):* $(c Delta t)^2 > (Delta x)^2 => v < c$ \
  #text(size: 8pt)[ההפרש בעיקר בזמן. חלקיק יכול לעבור. *יש קשר סיבתי*. סדר הזמנים נשמר בכל מערכת] \
  #text(size: 8pt)[קיימת מערכת בה $Delta x = 0$ ההתרחשות באותו מקום. \ #h(1fr) $I = (c Delta tau)^2$.] \
  2. *דמוי-מרחב - SL ($I < 0$):* \ $(c Delta t)^2 < (Delta x)^2 => v > c$ \
  #text(size: 8pt)[ ההפרש בעיקר במרחב. *אין קשר סיבתי*.] \
  #text(size: 8pt)[ סדר הזמנים *יכול להתהפך* במערכות שונות קיימת מערכת בה $Delta t = 0$ (בו-זמנית).] \
  3. *דמוי-אור - LL ($I = 0$):*\ #h(1fr) $(c Delta t)^2 = (Delta x)^2 => v = c$ \
  #text(size: 8pt)[ על המגבלה. רק קרן אור עוברת. ביחס לאור אין כלל זמן והמרחב מתכווץ לאפס.]
  #align(center)[
    #image("Spacetime_diagram_development_A.svg", width: 75%)
    #text(
      size: 8pt,
    )[*דיאגרמת מרחב-זמן (מינקובסקי):* ציר ה-$x$ מייצג מרחב וציר ה-$c t$ מייצג זמן. הקווים האלכסוניים ($v=c$) יוצרים את "קונוס האור" המפריד בין אירועים דמויי-זמן (בתוך הקונוס (B), היכן שקשר סיבתי אפשרי) לבין אירועים דמויי-מרחב (מחוץ לקונוס (A), נטולי קשר סיבתי).]
  ]
]


#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == דינמיקה יחסותית
  בכל הנוסחאות שלהלן: $m$ מסת המנוחה\
  *תנע יחסותי:* #h(1fr) $arrow(p) = gamma m arrow(v)$ \

  *אנרגיית מנוחה:* #h(1fr) $E_0 = m c^2$ \
  *אנרגיה קינטית:* #h(1fr) $E_k = m c^2 (gamma - 1)$ \
  *אנרגיה כוללת:* #h(1fr) $E = E_0 + E_k = gamma m c^2$

  #text(
    size: 8pt,
  )[קירוב למהירויות נמוכות ($v << c$) או תגובה מהתנגשות בחפץ מאסיבי (כגון פוטון באטום): \ התנע מקורב קלאסית $p approx m v$, והאנרגיה הקינטית הנרכשת כמעט אפסית $E_k approx p^2 / (2m) approx 0$.] \

  *קשר תנע-אנרגיה (המשוואה הכללית):* \
  #text(
    size: 8pt,
  )[קושרת אנרגיה לתנע ללא תלות ישירה במהירות, ותקפה גם לחלקיקים חסרי מסה (שם $m=0$). ערך המשוואה אינווריאנטי ונשמר בכל מערכת ייחוס:] \
  #h(1fr) $E^2 = (m c^2)^2 + (p c)^2$

  #text(size: 8pt)[גם בדינמיקה יחסותית נשמרים חוקי השימור במערכות סגורות:] \
  שימור אנרגיה: #h(1fr) $sum E_"before" = sum E_"after"$ \
  שימור תנע: #h(1fr) $sum arrow(p)_"before" = sum arrow(p)_"after"$

  *4-וקטור תנע-אנרגיה ($p^mu$):* \
  #h(1fr) $p^mu = (E/c, p_x, p_y, p_z)$ \
  #text(
    size: 8pt,
  )[וקטור 4-ממדי (רכיב זמן ו-3 מרחב). מכפלתו בעצמו שווה לאינווריאנט מסת המנוחה: $p_mu p^mu = (E/c)^2 - p^2 = (m c)^2$.]

  *חלקיקים חסרי מסה ($m=0$, למשל פוטון הנע ב-$c$):* \
  #h(1fr) $E = p c$\
  כאשר תנע החלקיק חסר המסה הוא:
  #h(1fr) $p_= E / c = (h nu) / c = h / lambda$

  *קשרים שימושיים לפתרון תרגילים:* \
  #h(1fr) $gamma = E / (m c^2) quad , quad beta = v/c = (p c) / E quad , quad v = (p c^2) / E$ \
  *מסת מערכת (מתוך אינווריאנט שימור תנע-אנרגיה):* \
  #h(1fr) $(M_"sys" c^2)^2 = (Sigma E)^2 - (Sigma p c)^2$ \
  #text(
    size: 8pt,
  )[(בכל התנגשות או דעיכה, חיבור האנרגיות וחיבור התנעים הווקטורי של כל החלקיקים מאפשר למצוא את המסה של המערכת, גודל שנשמר קבוע).]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == אלקטרומגנטיות יחסותית

  *התמרת שדות (מ-$S$ למערכת $S'$ הנעה במהירות $arrow(v)$):* \
  #h(
    1fr,
  ) $arrow(E)'_parallel = arrow(E)_parallel quad , quad arrow(E)'_perp = gamma (arrow(E)_perp + arrow(v) times arrow(B))$ \
  #h(
    1fr,
  ) $arrow(B)'_parallel = arrow(B)_parallel quad , quad arrow(B)'_perp = gamma (arrow(B)_perp - 1/c^2 arrow(v) times arrow(E))$ \
  #text(size: 8pt)[*הקשר:* שדה מגנטי במערכת אחת, ייראה גם כשדה חשמלי במערכת אחרת ולהפך.]

  *שדה של קבל לוחות (כיווץ אורך):* \
  #text(
    size: 8pt,
  )[*הקשר:* קבל נע. במקביל ללוחות (השדה ניצב לתנועה) צפיפות המטען עולה ולכן $E_perp = gamma E_(0 perp)$. בניצב ללוחות השדה אינו משתנה $E_parallel = E_(0 parallel)$.]

  *שדה חשמלי ומגנטי של מטען נקודתי נע:* \
  #text(size: 8pt)[*הקשר:* מטען $Q$ נע במהירות $v$. השדה מתכווץ בכיוון התנועה ומתחזק בניצב אליה.] \
  #h(1fr) $arrow(E) = (k Q) / r^2 (1 - beta^2) / (1 - beta^2 sin^2 theta)^(3/2) hat(r)$ \
  #text(size: 8pt)[(בזווית $theta=90^degree$ השדה גדל פי $gamma$. בזווית $theta=0^degree$ קטן פי $gamma^2$).] \
  #text(size: 8pt)[*השדה המגנטי שנוצר מהמטען הנע:*] #h(1fr) $arrow(B) = 1/c^2 (arrow(v) times arrow(E))$

  *התמרת כוח כללית (ממערכת מנוחה למערכת נעה):* \
  #text(size: 8pt)[*הקשר:* כוח $F'$ הפועל במערכת המנוחה של החלקיק ($S'$), ייראה במערכת המעבדה ($S$) כ:] \
  #h(1fr) $F_parallel = F'_parallel quad , quad F_perp = (F'_perp) / gamma$

  *תיל נושא זרם / מטענים הנעים במקביל (מקור הכוח המגנטי):* \
  #text(
    size: 8pt,
  )[*הקשר:* במערכת המעבדה, תיל ניטרלי נושא זרם מפעיל כוח מגנטי $F_B$ על מטען נע. במערכת המנוחה של המטען, התיל הופך לטעון בצפיפות $lambda_"tot" = gamma beta^2 lambda_0$ (בגלל התקצרות אורך יחסותית של יוני התיל/האלקטרונים) ומפעיל כוח חשמלי טהור $F'_E$.] \
  #h(1fr) $F_B = (F'_E) / gamma quad => quad F = q v (mu_0 I) / (2 pi r) = q v B$ \
  #text(size: 8pt)[עבור שני מטענים זהים הנעים יחד במקביל במהירות $v$, הכוח המגנטי מנוגד לחשמלי:] \
  #h(1fr) $F_B = beta^2 F_E quad => quad F_"total" = F_E - F_B = F_E / gamma^2 = F'_E / gamma$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == חוקים בסיסיים


  הקרנה: #h(1fr) $E = Phi / A [ upright(W) / upright(m)^2 ]$

  שטף קרינה (של מקור קורן): #h(1fr) $Phi = I A_"source" [ upright(W) ]$ \
  #text(size: 8pt)[$I$ הפליטה הקרינתית של המקור, כמו גוף שחור (מקביל ל $M$ - פליטה קרינתית מרדיומטריה)]

  עבור אנרגייה תמיד מתקיים (כאשר ההספק קבוע): #h(1fr) $E = P Delta t$

  ביטוי כללי להספק: #h(1fr) $P = (d E) / (d t) [ upright(W) ]$
]



#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == נספח מתמטי: טריגונומטריה
  *זוגיות פונקציות:* 
  \ זוגית \ $f(-x) = f(x)$ \ $integral_(-a)^a f(x) d x = 2 integral_0^a f(x) d x$ \ אי-זוגית \ $f(-x) = -f(x)$ \ $integral_(-a)^a f(x) d x = 0$.

  *זהויות טריגונומטריות:* \
  #h(1fr) $sin^2 x + cos^2 x = 1 quad , quad tan x = (sin x) / (cos x) quad , quad 1 + tan^2 x = 1 / cos^2 x$ \
  #h(1fr) $sin(x +- y) = sin x cos y +- cos x sin y quad , quad cos(x +- y) = cos x cos y -+ sin x sin y$ \
  #h(1fr) $sin(2x) = 2 sin x cos x quad , quad cos(2x) = cos^2 x - sin^2 x = 1 - 2sin^2 x = 2cos^2 x - 1$ \
  *משפט הסינוסים והקוסינוסים:* \
  #h(1fr) $a / (sin alpha)= b / (sin beta)= c / (sin gamma) quad , quad c^2 = a^2 + b^2 - 2 a b cos gamma$
]


#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == נספח פיזיקלי: קלאסית וחשמל בסיסי

  *קינמטיקה:* \
  #h(1fr) $v = v_0 + a t quad , quad x = x_0 + v_0 t + 1/2 a t^2 quad , quad \ v^2 = v_0^2 + 2a Delta x$ \
  *תנועה מעגלית:* \
  #h(
    1fr,
  ) $a_R = v^2/R = omega^2 R quad , quad v = omega R quad , quad T = (2pi)/omega quad , quad sum arrow(F)_R = m v^2/R hat(r)$ \
  *חוקי ניוטון:* #h(1fr) $sum arrow(F) = m arrow(a)$ \
  #h(1fr) $sum F=(d p)/(d t)$\

  *התנגשויות ושימור תנע:*\ #h(1fr) $sum arrow(p)_i = sum arrow(p)_f quad , quad arrow(p) = m arrow(v)$ \
  #h(1fr) $sum E_(k_i) = sum E_(k_f)$ \
  *אלסטית לחלוטין:* #text(size: 8pt)[תנע נשמר + אנרגיה קינטית נשמרת]
  *פלסטית לחלוטין:* #text(size: 8pt)[תנע נשמר + הגופים נצמדים עם מהירות  משותפת (אין שימור אנרגיה)]\ #h(1fr) $arrow(u) = (m_1 arrow(v)_1 + m_2 arrow(v)_2) / (m_1 + m_2)$ \
  *אנרגיה:*\ #h(1fr) $E_k = 1/2 m v^2 quad , quad E_i = E_f quad , quad W_"nc" = Delta E$ \


  *כבידה:* #h(1fr) $arrow(F)_g = (G m_1 m_2) / r^2 hat(r) quad , quad U_g = -(G m_1 m_2) / r$ \


  *כוח חשמלי:* #h(1fr) $arrow(F)_e = (k q_1 q_2) / r^2 hat(r)$ \
  *כוח מגנטי וכוח לורנץ:* \
  #h(
    1fr,
  ) $arrow(F)_B = q arrow(v) times arrow(B) quad , quad arrow(F)_B = I arrow(L) times arrow(B) quad , quad R = (m v) / (q B)$ \

  *שדה ופוטנציאל:* #h(1fr) $arrow(F) = q arrow(E) quad , quad U = q V$ \
  *ממטען נקודתי:* #h(1fr) $E = (k q) / r^2 quad , quad V = (k q) / r$ \
  *קשרים דיפרנציאליים:* #h(1fr) $arrow(E) = -nabla V quad , quad arrow(F) = -nabla U$
]

#place(bottom, float: true, scope: "parent")[
  #grid(
    columns: (1.2fr, 1fr),
    gutter: 5pt,
    [
      #block(
        fill: gray.lighten(100%),
        stroke: 0.5pt + black,
        inset: 5pt,
        radius: 2pt,
        width: 100%,
      )[
        == נספח מתמטי
    
        *אלמנטים דיפרנציאליים:* \
        עבור אינטגרציה על ספירה מלאה: $phi in [0, 2 pi], theta in [0, pi]$

        #align(center)[
          #table(
            columns: (1fr, 2.5fr, 2.2fr, 2.1fr),
            align: center + horizon,
            stroke: 0.5pt + luma(200),
            [*מערכת*], [$d arrow(l)$], [$d arrow(A)$ ], [$d V$],
            [*קרטזית*\ $(x,y,z)$], $d x hat(x) + d y hat(y) + d z hat(z)$, $d x d y hat(z)$, $d x d y d z$,
            [*גלילית*\ $(rho,phi,z)$],
            $d rho hat(rho) + rho d phi hat(phi) + d z hat(z)$,
            $rho d rho d phi hat(z)$,
            $rho d rho d phi d z$,

            [*כדורית*\ $(r,theta,phi)$],
            $d r hat(r) + r d theta hat(theta) + r sin theta d phi hat(phi)$,
            $r^2 sin theta d theta d phi hat(r)$,
            $r^2 sin theta d r d theta d phi$,
          )
        ]
      ]
    ],
    [
      #block(
        fill: gray.lighten(100%),
        stroke: 0.5pt + black,
        inset: 5pt,
        radius: 2pt,
        width: 100%,
      )[
        == נספח: משוואות מקסוול

        #align(center)[
          #table(
            columns: (0.9fr, 1.3fr, 1.6fr),
            align: center + horizon,
            stroke: 0.5pt + luma(200),
            [*חוק*], [*צורה דיפרנציאלית*], [*צורה אינטגרלית*],
            [*גאוס לחשמל*],
            $nabla dot arrow(E) = rho / epsilon_0$,
            $integral arrow(E) dot d arrow(A) = Q_"in" / epsilon_0$,

            [*גאוס למגנטיות*], $nabla dot arrow(B) = 0$, $integral arrow(B) dot d arrow(A) = 0$,
            [*פראדיי*],
            $nabla times arrow(E) = - (partial arrow(B)) / (partial t)$,
            $integral arrow(E) dot d arrow(l) = - (d Phi_B) / (d t)$,

            [*אמפר-מקסוול*],
            $nabla times arrow(B) = mu_0 arrow(J) + mu_0 epsilon_0 (partial arrow(E)) / (partial t)$,
            $integral arrow(B) dot d arrow(l) = mu_0 I_"in" + mu_0 epsilon_0 (d Phi_E) / (d t)$,
          )
        ]
      ]
    ],
  )
]
