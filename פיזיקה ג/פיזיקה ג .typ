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
  == חוקים בסיסיים


  הקרנה: #h(1fr) $E = Phi / A [ upright(W) / upright(m)^2 ]$

  שטף קרינה (של מקור קורן): #h(1fr) $Phi = I A_"source" [ upright(W) ]$

  עבור אנרגייה תמיד מתקיים (כאשר ההספק קבוע): #h(1fr) $E = P Delta t$

  ביטוי כללי להספק: #h(1fr) $P = (d E) / (d t) [ upright(W) ]$
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

  אנרגית פוטון כתלות בתדר: #h(1fr) $E_"ph" = h nu$

  האנרגיה הקינטית של פוטון ($B$ אנרגיית קשר):

  #h(1fr) $E_k = E_"ph" - B$

  תדירות הסף: #h(1fr) $nu = B / h [ upright("Hz") ]$

  מתח עצירה (כאשר $E_k = U_e$): #h(1fr) $V_"stop" = E_k_max / e$
  === המשך: האפקאט הפוטו-אלקטרי
  קשר בין אנרגיה לאורך גל: #h(1fr) $E = 1240 / (lambda[upright("nm")]) [ upright("eV") ]$

  גרף המתח העצירה כתלות בתדר: #h(1fr) $V_0 = (h nu)/e - B/e$
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
  #text(size: 8pt)[כאשר $E_0$ היא האנרגיה הקינטית במסלול הראשון: \ $E_0 = (m k^2 e^4) / (2 planck^2) = 13.6 [ upright("eV") ]$.]

  *האנרגיה הקינטית באטום המימן:* \
  #h(1fr) $E_k =  p^2/(2m) = (m v)^2 / (2m) = ((n planck) / r_n)^2 / (2m) = (n^2 planck^2) / (2 m r_n^2) = (k e^2) / (2r_n) = \ - E_p / 2 = - E_n$ \
  #text(size: 8pt)[$k$ הוא קבוע קולון החשמלי: $k = 8.99 times 10^9 [ (upright("N") dot upright("m")^2) / upright("C")^2 ]$.]

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
  #text(size: 8pt)[*הערה:* $k$ בביטוי של התנע הוא *מספר הגל* ($k = (2pi)/lambda$)]
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
  אופרטור התנע והתנע בריבוע:\ #h(1fr) $hat(p) = -i planck nabla quad , quad hat(p)^2 = -planck^2 nabla^2$ \
  ההמילטוניאן:\ #h(1fr) $hat(H) = - planck^2 / (2m) nabla^2 + U(r)$ \
  המשוואה התלויה בזמן:\ #h(1fr) $i planck (partial Psi) / (partial t) = - planck^2 / (2m) nabla^2 Psi + U(r) Psi$ \
  המשוואה שאינה תלויה:\ #h(1fr) $E Psi(r) = - planck^2 / (2m) nabla^2 Psi(r) + U(r) Psi(r)$

  == תוחלות, סטטיסטיקה והפרדת משתנים

  צפיפות הסתברות (הסיכוי למצוא את החלקיק בנקודה):\
  #text(size: 8pt)[$Psi^*$ הצמוד של- $Psi$]     :
  #h(1fr) $P(x) = |Psi|^2 = Psi^* Psi$

  תנאי נרמול (החלקיק חייב להימצא במרחב):

  #h(1fr) $integral_(-oo)^oo |Psi|^2 d x = 1$

  תוחלת של אופרטור $hat(A)$ :

  #h(1fr) $chevron.l hat(A) chevron.r = integral_(-oo)^oo Psi^* hat(A) Psi d x$

  הפרדת משתנים כללית (מרחב וזמן במצבים עומדים):

  #h(1fr) $Psi(r, t) = psi(r) e^(-i E t / planck)$

  הפרדת משתנים פולרית \(בעזרת הרמוניות ספריות $Y_(ell, m_ell)$):

  #h(1fr) $psi(r, theta, phi) = R_(n, ell)(r) Y_(ell, m_ell)(theta, phi)$

  #text(
    size: 8pt,
  )[*תלויות:* $R_(n, ell)(r)$ הוא החלק הרדיאלי (תלוי רק במרחק $r$), וההרמוניות הספריות $Y_(ell, m_ell)(theta, phi) = Theta(theta) Phi(phi)$ הן החלק הזוויתי שמתאר את התפלגות החלקיק במרחב.]

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
  == אטום המימן ותנע זוויתי בתלת-מימד

  אופרטור הלפלסיאן בקואורדינטות כדוריות: \
  #set text(dir: ltr)
  #text(size: 8pt)[
    $nabla^2=1/(r^2) partial/(partial r) (r^2 partial/(partial r)) + 1/(r^2) [1/sin theta partial/(partial theta) (sin theta partial/(partial theta))+1/(sin^2 theta) partial^2/(partial phi^2)]$
  ]
  #set text(dir: rtl)

  *תנע זוויתי:* \
  אופרטור התנע הזוויתי בריבוע: \
  #set text(dir: ltr)
  $hat(L)^2= -planck^2 [1/sin theta partial/(partial theta) (sin theta partial/(partial theta))+1/(sin^2 theta) partial^2/(partial phi^2)]$
  #set text(dir: rtl)
  גודל התנע הזוויתי הכולל: #h(1fr) $L = planck sqrt(ell(ell+1))$ \
  אופרטור היטל התנע הזוויתי על ציר $z$: #h(1fr) $hat(L)_z = -i planck partial / (partial phi)$ \
  היטל התנע הזוויתי (הערך העצמי): #h(1fr) $L_z = m_ell planck$

  *הפרדת משתנים באטום המימן:* \
  צורה כללית של הפתרון:\ #h(1fr) $psi(r, theta, phi) = R(r) Theta(theta) Phi(phi)$


  *המשך אטום המימן*

  המשוואה הרדיאלית $R(r)$:\
  #text(size: 8pt)[מגדירים $u(r) = r R(r)$ ומקבלים משוואה התלויה בפוטנציאל האפקטיבי:] \
  #h(1fr) $- planck^2 / (2m) (partial^2 u) / (partial r^2) + (U(r) + (planck^2 ell(ell+1)) / (2 m r^2)) u = E u$ \

  המשוואה האזימוטלית $Phi(phi)$: \
  #h(1fr) $(partial^2 Phi) / (partial phi^2) + m_ell^2 Phi = 0 quad => quad Phi(phi) = 1 / sqrt(2 pi) e^(i m_ell phi)$

  המשוואה הפולרית $Theta(theta)$: \
  #text(size: 8pt)[פתרונותיה מוגבלים ע"י המספרים $ell$ ו-$m_ell$.] \
  #h(
    1fr,
  ) $1 / (sin theta) partial / (partial theta) (sin theta (partial Theta) / (partial theta)) + (ell(ell+1) - (m_ell^2) / (sin^2 theta))Theta = 0$

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
  #h(1fr) $m_s = +- 1/2$ (היטל תנע זוויתי פנימי)

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
   #h(1fr) $mu_B = 9.274 times 10^(-24) [ upright("J") / upright("T") ] = 5.788 times 10^(-5) [ upright("eV") / upright("T") ]$

  *היטל מומנט הדיפול על ציר ה-$z$:* \
  #h(1fr) $mu_z = - m_ell mu_B$

  *אפקט זימן (Zeeman Effect):* \
  #text(
    size: 8pt,
  )[מכיוון ש-$m_ell$ יכול לקבל $2ell+1$ ערכים שונים, השדה המגנטי *מפצל* את רמת האנרגיה ל-$2ell+1$ תת-רמות אנרגיה . עבור מצב בו $ell=0$ (כמו מצב היסוד) אז $m_ell=0$ והאנרגיה לא משתנה (אין פיצול).]

  *שינוי האנרגיה וסך האנרגיה הכוללת (עם שדה מגנטי $B$):* \
  #h(1fr) $Delta E = -mu_z B = m_ell mu_B B quad\  ==>  quad E = E_0 + m_ell mu_B B$ \
  #text(size: 8pt)[$E$ - האנרגיה הכוללת החדשה. $E_0$ - אנרגיית הרמה המקורית ללא השדה. $m_ell$ - מספר קוונטי מגנטי . $mu_B$ - מגנטון בוהר. $B$ - עוצמת השדה המגנטי.]

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

  *מעבר בין מערכות ייחוס (במהירויות נמוכות $v << c$):* \
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
  == ניסוי מייקלסון-מורלי (חיפוש האתר)

  *משולש האור (זמן תנועה במסלול הניצב):* \
  #h(1fr) $(c t_perp / 2)^2 = L^2 + (v t_perp / 2)^2 quad => \ quad t_perp = (2L) / sqrt(c^2 - v^2) approx (2L)/c (1 + v^2/(2c^2))$ 

  *זמן תנועה במסלול המקביל:* \
  #h(1fr) $t_parallel = L / (c-v) + L / (c+v) = (2L c) / (c^2 - v^2) approx (2L)/c (1 + v^2/c^2)$ 
  
  *הפרש זמנים ודרכים אופטיות:* \
  #h(1fr) $Delta t = t_parallel - t_perp approx (L v^2) / c^3 quad => quad Delta x = c Delta t approx (L v^2) / c^2$ 

  *היסט הפרינג'ים בסיבוב (Fringe Shift):* \
  #text(size: 8pt)[כאשר מסובבים את המערכת ב-$90^degree$, התפקידים מתחלפים וההפרש מוכפל. מספר הפרינג'ים שיזוזו:] \
  #h(1fr) $Delta m = (2 Delta x) / lambda = (2 L v^2) / (lambda c^2)$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == סימולטניות (בו-זמניות)

  *יחסיות הבו-זמניות:* \
  #text(
    size: 8pt,
  )[שני אירועים שמתרחשים באותו זמן בדיוק אך במקומות שונים ($Delta x != 0$) במערכת ייחוס אחת, לא יתרחשו בו-זמנית במערכת ייחוס אחרת הנעה ביחס אליה.] \
  *המחשה (ניסוי הרכבת):* \
  #text(
    size: 8pt,
  )[נוסע במרכז קרון מדליק פנס. עבורו האור פוגע בשני הקצוות יחד. צופה מחוץ לרכבת רואה את הקצה האחורי "דוהר" אל האור ואת הקדמי "בורח" ממנו, לכן עבורו הפגיעה בקצה האחורי קורית קודם.] \
  *מוחלטות (בו-זמניות ובו-מקומיות):* \
  #text(size: 8pt)[שני אירועים שמתרחשים גם באותו הזמן ($Delta t = 0$) וגם באותו המקום ($Delta x = 0$), יתרחשו בו-זמנית ובאותו מקום ($Delta t' = 0 , Delta x' = 0$) בכל מערכת ייחוס אחרת.]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == התארכות הזמן (זמן עצמי)

  *זמן עצמי ($Delta t'$):* \
  #text(
    size: 8pt,
  )[הזמן הנמדד בשעון בודד הנמצא *במנוחה* ביחס לאירועים (כלומר, עבורו האירועים מתרחשים באותו מקום $Delta x' = 0$).] \
  *התארכות הזמן:* \
  #text(size: 8pt)[צופה אחר, שרואה את השעון העצמי נע במהירות $v$, ימדוד זמן ארוך יותר בין האירועים:] \
  #h(1fr) $Delta t = gamma Delta t' quad , quad gamma = 1 / sqrt(1 - (v^2)/(c^2)) > 1$ \
  #text(size: 8pt)[(הזמן במערכת המעבדה תמיד ארוך יותר מהזמן העצמי).]
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
  #text(size: 8pt)[(ההתקצרות קורית *רק* לאורך כיוון התנועה המקביל למהירות. מימדים ניצבים לתנועה אינם מתקצרים).]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == פרדוקס התאומים

  *הפרדוקס:* \
  #text(
    size: 8pt,
  )[תאום א' נשאר בכדור הארץ. תאום ב' טס לחלל במהירות גבוהה וחוזר. עקב התארכות הזמן, כל תאום אמור לראות את השעון של השני מתקתק לאט יותר ולהסיק שהשני יהיה הצעיר יותר במפגש.] \
  *הפתרון:* \
  #text(
    size: 8pt,
  )[הסימטריה שבורה! תאום ב' בחלל נאלץ לשנות את מהירותו כדי להסתובב ולחזור (תאוצה). כלומר, המערכת שלו *אינה אינרציאלית* והוא מחליף מערכות ייחוס במהלך המסע. התוצאה הנכונה מתקבלת מנקודת המבט של המערכת האינרציאלית האחת שלא עברה תאוצה (תאום א'). המסקנה: תאום ב' שטס לחלל יחזור *צעיר יותר* (השעון שלו התקדם פחות).]
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == טרנספורמציית לורנץ

  *הטרנספורמציה הישירה (מ-$S$ ל-$S'$):* \
  #text(size: 8pt)[מעבר ממערכת $S$ למערכת $S'$ הנעה ימינה במהירות קבועה $v$ ביחס אליה:] \
  #h(
    1fr,
  ) $vec(c t', x') = gamma mat(1, -beta; -beta, 1) vec(c t, x) quad , quad beta = v/c quad , quad \ gamma = 1 / sqrt(1 - beta^2)$ \
  #text(size: 8pt)[בכתיב אלגברי (כולל הוספת המימדים הניצבים שאינם מושפעים):] \
  #h(1fr) $t' = gamma (t - (v)/(c^2) x) quad , quad x' = gamma (x - v t) quad , quad y' = y quad , quad z' = z$

  *הטרנספורמציה ההפוכה (מ-$S'$ ל-$S$):* \
  #text(size: 8pt)[כמו הצבת מהירות נגדית $-v$ במקום $v$:] \
  #h(1fr) $vec(c t, x) = gamma mat(1, beta; beta, 1) vec(c t', x')$ \
  #h(1fr) $t = gamma (t' + (v)/(c^2) x') quad , quad x = gamma (x' + v t')$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == חיבור מהירויות יחסותיות

  #text(size: 8pt)[חלקיק נע במהירות $u'$ במערכת $S'$, הנעה במהירות $v$ ביחס למערכת $S$:] \
  #h(1fr) $u_x = (u'_x + v) / (1 + (u'_x v) / (c^2))$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == האינטרוול ומרחב מינקובסקי

  *האינטרוול ($I$ או $Delta s^2$) - גודל אינווריאנטי הנשמר בכל מערכת:* \
  #h(1fr) $I = (c Delta t)^2 - (Delta x)^2 - (Delta y)^2 - (Delta z)^2$

  *סיווג אינטרוולים:* \
  1. *דמוי-זמן ($I > 0$)*: $v < c$, קיים קשר סיבתי (יש מערכת בה $Delta x = 0$). \
  2. *דמוי-מרחב ($I < 0$)*: $v > c$, אין קשר סיבתי (יש מערכת בה $Delta t = 0$). \
  3. *דמוי-אור ($I = 0$)*: $v = c$, עבור חלקיקים חסרי מסה בלבד.
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == דינמיקה יחסותית

  *תנע יחסותי:* #h(1fr) $arrow(p) = gamma m arrow(v)$ \
  *אנרגיית מנוחה:* #h(1fr) $E_0 = m c^2$ \
  *אנרגיה קינטית:* #h(1fr) $E_k = m c^2 (gamma - 1)$ \
  *אנרגיה כוללת:* #h(1fr) $E = E_0 + E_k = gamma m c^2$

  *קשר תנע-אנרגיה (נשמר אינווריאנטי בכל מערכת):* \
  #h(1fr) $E^2 = (m c^2)^2 + (p c)^2$

  *חלקיקים חסרי מסה ($m=0$, למשל פוטון הנע ב-$c$):* \
  #h(1fr) $E = p c$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == שדה חשמלי ומגנטי בתיאוריית היחסות

  *התמרת שדות חשמליים במערכת נעה (במהירות $v$):* \
  #text(size: 8pt)[(השדה הניצב לכיוון התנועה מתחזק פי $gamma$, המקביל נשאר ללא שינוי)] \
  #h(1fr) $E'_parallel = E_parallel quad , quad E'_perp = gamma E_perp$

  *התמרת כוחות במערכת נעה:* \
  #text(size: 8pt)[(כוח הפועל בניצב לכיוון התנועה נחלש פי $gamma$ במערכת הנעה)] \
  #h(1fr) $F'_perp = (F_perp) / gamma$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == נספח מתמטי: זהויות טריגונומטריות

  *משפט הסינוסים:* #h(1fr) $a / sin alpha = b / sin beta = c / sin gamma$ \
  *משפט הקוסינוסים:* #h(1fr) $c^2 = a^2 + b^2 - 2 a b cos gamma$ \
  *זהויות בסיסיות:* \
  #h(1fr) $sin^2 x + cos^2 x = 1$ \
  #h(1fr) $sin(2x) = 2 sin x cos x$ \
  #h(1fr) $cos(2x) = cos^2 x - sin^2 x = 1 - 2sin^2 x = 2cos^2 x - 1$
]

#block(
  fill: gray.lighten(100%),
  stroke: 0.5pt + black,
  inset: 5pt,
  radius: 2pt,
)[
  == נספח פיזיקלי: קלאסית וחשמל בסיסי

  *קינמטיקה:* \
  #h(1fr) $v = v_0 + a t quad , quad x = x_0 + v_0 t + 1/2 a t^2 quad , quad v^2 = v_0^2 + 2a Delta x$ \
  *חוקי ניוטון:* #h(1fr) $sum arrow(F) = m arrow(a)$ \
  *שימור תנע:* #h(1fr) $sum arrow(p)_i = sum arrow(p)_f quad , quad arrow(p) = m arrow(v)$ \
  *אנרגיה:*\ #h(1fr) $E_k = 1/2 m v^2 quad , quad E_i = E_f quad , quad W_"nc" = Delta E$ \
  *כבידה:* #h(1fr) $arrow(F)_g = (G m_1 m_2) / r^2 hat(r) quad , quad U_g = -(G m_1 m_2) / r$ \
  *כוח חשמלי:* #h(1fr) $arrow(F)_e = (k q_1 q_2) / r^2 hat(r)$ \
  *שדה ופוטנציאל:* #h(1fr) $arrow(F) = q arrow(E) quad , quad U = q V$ \
  *ממטען נקודתי:* #h(1fr) $E = (k q) / r^2 quad , quad V = (k q) / r$ \
  *קשרים דיפרנציאליים:* #h(1fr) $arrow(E) = -nabla V quad , quad arrow(F) = -nabla U$
]
