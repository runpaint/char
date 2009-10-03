class Char::Digraph
  @@codepoints = {161=>"~!", 162=>"c|", 163=>"$$", 164=>"ox", 165=>"Y-", 166=>"||", 167=>"SE", 168=>"\"\"", 169=>"cO", 170=>"-a", 171=>"<<", 172=>"-,", 173=>"--", 174=>"Rg", 175=>"-=", 176=>"~o", 177=>"+-", 178=>"22", 179=>"33", 181=>"My", 182=>"pp", 183=>"~.", 184=>",,", 185=>"11", 186=>"-o", 187=>">>", 188=>"14", 189=>"12", 190=>"34", 191=>"~?", 192=>"A`", 193=>"A\\", 194=>"A^", 195=>"A~", 196=>"A\"", 197=>"A@", 198=>"AE", 199=>"C,", 200=>"E`", 201=>"E\\", 202=>"E^", 203=>"E\"", 204=>"I`", 205=>"I\\", 206=>"I^", 207=>"I\"", 208=>"D-", 209=>"N~", 210=>"O`", 211=>"O\\", 212=>"O^", 213=>"O~", 214=>"O:", 215=>"/\\\\", 216=>"O/", 217=>"U`", 218=>"U\\", 219=>"U^", 220=>"U:", 221=>"Y\\", 222=>"Ip", 223=>"ss", 224=>"a`", 225=>"a\\", 226=>"a^", 227=>"a~", 228=>"a\"", 229=>"a@", 230=>"ae", 231=>"c,", 232=>"e`", 233=>"e\\", 234=>"e^", 235=>"e\"", 236=>"i`", 237=>"i\\", 238=>"i^", 239=>"i:", 240=>"d-", 241=>"n~", 242=>"o`", 243=>"o\\", 244=>"o^", 245=>"o~", 246=>"o:", 247=>"-:", 248=>"o/", 249=>"u`", 250=>"u\\", 251=>"u^", 252=>"u:", 253=>"y\\", 254=>"th", 255=>"y\"", 10=>"LF", 1=>"SH", 2=>"SX", 3=>"EX", 4=>"ET", 5=>"EQ", 6=>"AK", 7=>"BL", 8=>"BS", 9=>"HT", 11=>"VT", 12=>"FF", 13=>"CR", 14=>"SO", 15=>"SI", 16=>"DL", 17=>"D1", 18=>"D2", 19=>"D3", 20=>"D4", 21=>"NK", 22=>"SY", 23=>"EB", 24=>"CN", 25=>"EM", 26=>"SB", 27=>"EC", 28=>"FS", 29=>"GS", 30=>"RS", 31=>"US", 32=>"SP", 35=>"Nb", 36=>"DO", 64=>"At", 91=>"<(", 92=>"//", 93=>")>", 123=>"(!", 124=>"!!", 125=>"!)", 127=>"DT", 128=>"PA", 129=>"HO", 130=>"BH", 131=>"NH", 132=>"IN", 133=>"NL", 134=>"SA", 135=>"ES", 136=>"HS", 137=>"HJ", 138=>"VS", 139=>"PD", 140=>"PU", 141=>"RI", 142=>"S2", 143=>"S3", 144=>"DC", 145=>"P1", 146=>"P2", 147=>"TS", 148=>"CC", 149=>"MW", 150=>"SG", 151=>"EG", 152=>"SS", 153=>"GC", 154=>"SC", 155=>"CI", 156=>"ST", 157=>"OC", 158=>"PM", 159=>"AC", 160=>"NS", 256=>"A-", 257=>"a-", 258=>"A(", 259=>"a(", 260=>"A;", 261=>"a;", 262=>"C\\", 263=>"c\\", 264=>"C>", 265=>"c>", 266=>"C.", 267=>"c.", 268=>"C<", 269=>"c<", 270=>"D<", 271=>"d<", 272=>"D/", 273=>"d/", 274=>"E-", 275=>"e-", 276=>"E(", 277=>"e(", 278=>"E.", 279=>"e.", 280=>"E;", 281=>"e;", 282=>"E<", 283=>"e<", 284=>"G>", 285=>"g>", 286=>"G(", 287=>"g(", 288=>"G.", 289=>"g.", 290=>"G,", 291=>"g,", 292=>"H>", 293=>"h>", 294=>"H/", 295=>"h/", 296=>"I?", 297=>"i?", 298=>"I-", 299=>"i-", 300=>"I(", 301=>"i(", 302=>"I;", 303=>"i;", 304=>"I.", 305=>"i.", 306=>"IJ", 307=>"ij", 308=>"J>", 309=>"j>", 310=>"K,", 311=>"k,", 312=>"kk", 313=>"L\\", 314=>"l\\", 315=>"L,", 316=>"l,", 317=>"L<", 318=>"l<", 319=>"L.", 320=>"l.", 321=>"L/", 322=>"l/", 323=>"N\\", 324=>"n\\", 325=>"N,", 326=>"n,", 327=>"N<", 328=>"n<", 330=>"NG", 331=>"ng", 332=>"O-", 333=>"o-", 334=>"O(", 335=>"o(", 336=>"O\"", 337=>"o\"", 338=>"OE", 339=>"oe", 340=>"R\\", 341=>"r\\", 342=>"R,", 343=>"r,", 344=>"R<", 345=>"r<", 346=>"S\\", 347=>"s\\", 348=>"S>", 349=>"s>", 350=>"S,", 351=>"s,", 352=>"S<", 353=>"s<", 354=>"T,", 355=>"t,", 356=>"T<", 357=>"t<", 358=>"T/", 359=>"t/", 360=>"U?", 361=>"u?", 362=>"U-", 363=>"u-", 364=>"U(", 365=>"u(", 366=>"U0", 367=>"u0", 368=>"U\"", 369=>"u\"", 370=>"U;", 371=>"u;", 372=>"W>", 373=>"w>", 374=>"Y>", 375=>"y>", 376=>"Y:", 377=>"Z\\", 378=>"z\\", 379=>"Z.", 380=>"z.", 381=>"Z<", 382=>"z<", 416=>"O9", 417=>"o9", 418=>"OI", 419=>"oi", 422=>"yr", 431=>"U9", 432=>"u9", 437=>"Z/", 438=>"z/", 439=>"ED", 461=>"A<", 462=>"a<", 463=>"I<", 464=>"i<", 465=>"O<", 466=>"o<", 467=>"U<", 468=>"u<", 478=>"A1", 479=>"a1", 480=>"A7", 481=>"a7", 482=>"A3", 483=>"a3", 484=>"G/", 485=>"g/", 486=>"G<", 487=>"g<", 488=>"K<", 489=>"k<", 490=>"O;", 491=>"o;", 492=>"O1", 493=>"o1", 494=>"EZ", 495=>"ez", 496=>"j<", 500=>"G\\", 501=>"g\\", 703=>";S", 902=>"A%", 904=>"E%", 905=>"Y%", 906=>"I%", 908=>"O%", 910=>"U%", 911=>"W%", 912=>"i3", 913=>"A*", 914=>"B*", 915=>"G*", 916=>"D*", 917=>"E*", 918=>"Z*", 919=>"Y*", 920=>"H*", 921=>"I*", 922=>"K*", 923=>"L*", 924=>"M*", 925=>"N*", 926=>"C*", 927=>"O*", 928=>"P*", 929=>"R*", 931=>"S*", 932=>"T*", 933=>"U*", 934=>"F*", 935=>"X*", 936=>"Q*", 937=>"W*", 938=>"J*", 939=>"V*", 940=>"a%", 941=>"e%", 942=>"y%", 943=>"i%", 944=>"u3", 945=>"a*", 946=>"b*", 947=>"g*", 948=>"d*", 949=>"e*", 950=>"z*", 951=>"y*", 952=>"h*", 953=>"i*", 954=>"k*", 955=>"l*", 956=>"m*", 957=>"n*", 958=>"c*", 959=>"o*", 960=>"p*", 961=>"r*", 962=>"*s", 963=>"s*", 964=>"t*", 965=>"u*", 966=>"f*", 967=>"x*", 968=>"q*", 969=>"w*", 970=>"j*", 971=>"v*", 972=>"o%", 973=>"u%", 974=>"w%", 985=>",G", 986=>"T3", 987=>"t3", 988=>"M3", 989=>"m3", 990=>"K3", 991=>"k3", 992=>"P3", 993=>"p3", 1013=>"j3", 1025=>"IO", 1026=>"D%", 1027=>"G%", 1028=>"IE", 1029=>"DS", 1030=>"II", 1031=>"YI", 1032=>"J%", 1033=>"LJ", 1034=>"NJ", 1035=>"Ts", 1036=>"KJ", 1038=>"V%", 1039=>"DZ", 1040=>"A=", 1041=>"B=", 1042=>"V=", 1043=>"G=", 1044=>"D=", 1045=>"E=", 1046=>"Z%", 1047=>"Z=", 1048=>"I=", 1049=>"J=", 1050=>"K=", 1051=>"L=", 1052=>"M=", 1053=>"N=", 1054=>"O=", 1055=>"P=", 1056=>"R=", 1057=>"S=", 1058=>"T=", 1059=>"U=", 1060=>"F=", 1061=>"H=", 1062=>"C=", 1063=>"C%", 1064=>"S%", 1065=>"Sc", 1066=>"=\"", 1067=>"Y=", 1068=>"%\"", 1069=>"JE", 1070=>"JU", 1071=>"JA", 1072=>"a=", 1073=>"b=", 1074=>"v=", 1075=>"g=", 1076=>"d=", 1077=>"e=", 1078=>"z%", 1079=>"z=", 1080=>"i=", 1081=>"j=", 1082=>"k=", 1083=>"l=", 1084=>"m=", 1085=>"n=", 1086=>"o=", 1087=>"p=", 1088=>"r=", 1089=>"s=", 1090=>"t=", 1091=>"u=", 1092=>"f=", 1093=>"h=", 1094=>"c=", 1095=>"c%", 1096=>"s%", 1097=>"sc", 1098=>"=\\", 1099=>"y=", 1100=>"%\\", 1101=>"je", 1102=>"ju", 1103=>"ja", 1105=>"io", 1106=>"d%", 1107=>"g%", 1108=>"ie", 1109=>"ds", 1110=>"ii", 1111=>"yi", 1112=>"j%", 1113=>"lj", 1114=>"nj", 1115=>"ts", 1116=>"kj", 1118=>"v%", 1119=>"dz", 1122=>"Y3", 1123=>"y3", 1130=>"O3", 1131=>"o3", 1138=>"F3", 1139=>"f3", 1140=>"V3", 1141=>"v3", 1152=>"C3", 1153=>"c3", 1168=>"G3", 1169=>"g3", 1488=>"A+", 1489=>"B+", 1490=>"G+", 1491=>"D+", 1492=>"H+", 1493=>"W+", 1494=>"Z+", 1495=>"X+", 1496=>"Tj", 1497=>"J+", 1498=>"K%", 1499=>"K+", 1500=>"L+", 1501=>"M%", 1502=>"M+", 1503=>"N%", 1504=>"N+", 1505=>"S+", 1506=>"E+", 1507=>"P%", 1508=>"P+", 1509=>"Zj", 1510=>"ZJ", 1511=>"Q+", 1512=>"R+", 1513=>"Sh", 1514=>"T+", 1548=>",+", 1563=>";+", 1567=>"?+", 1569=>"H\\", 1570=>"aM", 1571=>"aH", 1572=>"wH", 1573=>"ah", 1574=>"yH", 1575=>"a+", 1576=>"b+", 1577=>"tm", 1578=>"t+", 1579=>"tk", 1580=>"g+", 1581=>"hk", 1582=>"x+", 1583=>"d+", 1584=>"dk", 1585=>"r+", 1586=>"z+", 1587=>"s+", 1588=>"sn", 1589=>"c+", 1590=>"dd", 1591=>"tj", 1592=>"zH", 1593=>"e+", 1594=>"i+", 1600=>"++", 1601=>"f+", 1602=>"q+", 1603=>"k+", 1604=>"l+", 1605=>"m+", 1606=>"n+", 1607=>"h+", 1608=>"w+", 1609=>"j+", 1610=>"y+", 1611=>":+", 1612=>"\"+", 1613=>"=+", 1614=>"/+", 1616=>"1+", 1617=>"3+", 1618=>"0+", 1648=>"aS", 1662=>"p+", 1700=>"v+", 1711=>"gf", 1776=>"0a", 1777=>"1a", 1778=>"2a", 1779=>"3a", 1780=>"4a", 1781=>"5a", 1782=>"6a", 1783=>"7a", 1784=>"8a", 1785=>"9a", 7682=>"B.", 7683=>"b.", 7686=>"B_", 7687=>"b_", 7690=>"D.", 7691=>"d.", 7694=>"D_", 7695=>"d_", 7696=>"D,", 7697=>"d,", 7710=>"F.", 7711=>"f.", 7712=>"G-", 7713=>"g-", 7714=>"H.", 7715=>"h.", 7718=>"H:", 7719=>"h:", 7720=>"H,", 7721=>"h,", 7728=>"K\\", 7729=>"k\\", 7732=>"K_", 7733=>"k_", 7738=>"L_", 7739=>"l_", 7742=>"M\\", 7743=>"m\\", 7744=>"M.", 7745=>"m.", 7748=>"N.", 7749=>"n.", 7752=>"N_", 7753=>"n_", 7764=>"P\\", 7765=>"p\\", 7766=>"P.", 7767=>"p.", 7768=>"R.", 7769=>"r.", 7774=>"R_", 7775=>"r_", 7776=>"S.", 7777=>"s.", 7786=>"T.", 7787=>"t.", 7790=>"T_", 7791=>"t_", 7804=>"V?", 7805=>"v?", 7808=>"W!", 7809=>"w!", 7810=>"W\\", 7811=>"w\\", 7812=>"W:", 7813=>"w:", 7814=>"W.", 7815=>"w.", 7818=>"X.", 7819=>"x.", 7820=>"X:", 7821=>"x:", 7822=>"Y.", 7823=>"y.", 7824=>"Z>", 7825=>"z>", 7828=>"Z_", 7829=>"z_", 7830=>"h_", 7831=>"t:", 7832=>"w0", 7833=>"y0", 7842=>"A2", 7843=>"a2", 7866=>"E2", 7867=>"e2", 7868=>"E?", 7869=>"e?", 7880=>"I2", 7881=>"i2", 7886=>"O2", 7887=>"o2", 7910=>"U2", 7911=>"u2", 7922=>"Y!", 7923=>"y!", 7926=>"Y2", 7927=>"y2", 7928=>"Y?", 7929=>"y?", 7936=>";\\", 7937=>",\\", 7938=>";!", 7939=>",!", 7940=>"?;", 7941=>"?,", 7942=>"!:", 7943=>"?:", 8194=>"1N", 8195=>"1M", 8196=>"3M", 8197=>"4M", 8198=>"6M", 8201=>"1T", 8202=>"1H", 8208=>"-1", 8211=>"-N", 8212=>"-M", 8213=>"-3", 8214=>"!2", 8215=>"=2", 8218=>".9", 8219=>"9\\", 8220=>"\"6", 8221=>"\"9", 8222=>":9", 8223=>"9\"", 8224=>"/-", 8225=>"/=", 8229=>"..", 8240=>"%0", 8242=>"1\\", 8243=>"2\\", 8244=>"3\\", 8245=>"1\"", 8246=>"2\"", 8247=>"3\"", 8248=>"Ca", 8249=>"<1", 8250=>">1", 8251=>":X", 8260=>"/f", 8304=>"0S", 8308=>"4S", 8309=>"5S", 8310=>"6S", 8311=>"7S", 8312=>"8S", 8313=>"9S", 8314=>"+S", 8315=>"-S", 8316=>"=S", 8317=>"(S", 8318=>")S", 8319=>"nS", 8320=>"0s", 8321=>"1s", 8322=>"2s", 8323=>"3s", 8324=>"4s", 8325=>"5s", 8326=>"6s", 8327=>"7s", 8328=>"8s", 8329=>"9s", 8330=>"+s", 8331=>"-s", 8332=>"=s", 8333=>"(s", 8334=>")s", 8356=>"Li", 8359=>"Pt", 8361=>"W=", 8364=>"Eu", 8451=>"oC", 8453=>"co", 8457=>"oF", 8470=>"N0", 8471=>"PO", 8478=>"Rx", 8480=>"SM", 8482=>"TM", 8486=>"Om", 8491=>"AO", 8531=>"13", 8532=>"23", 8533=>"15", 8534=>"25", 8535=>"35", 8536=>"45", 8537=>"16", 8538=>"56", 8539=>"18", 8540=>"38", 8541=>"58", 8542=>"78", 8544=>"1R", 8545=>"2R", 8546=>"3R", 8547=>"4R", 8548=>"5R", 8549=>"6R", 8550=>"7R", 8551=>"8R", 8552=>"9R", 8553=>"aR", 8554=>"bR", 8555=>"cR", 8560=>"1r", 8561=>"2r", 8562=>"3r", 8563=>"4r", 8564=>"5r", 8565=>"6r", 8566=>"7r", 8567=>"8r", 8568=>"9r", 8569=>"ar", 8570=>"br", 8571=>"cr", 8592=>"<-", 8593=>"-!", 8594=>"->", 8595=>"-v", 8596=>"<>", 8597=>"UD", 8656=>"<=", 8658=>"=>", 8660=>"==", 8704=>"FA", 8706=>"dP", 8707=>"TE", 8709=>"/0", 8710=>"DE", 8711=>"NB", 8712=>"(-", 8715=>"-)", 8719=>"*P", 8721=>"+Z", 8722=>"-2", 8723=>"-+", 8727=>"*-", 8728=>"Ob", 8729=>"Sb", 8730=>"RT", 8733=>"0(", 8734=>"00", 8735=>"-L", 8736=>"-V", 8741=>"PP", 8743=>"AN", 8744=>"OR", 8745=>"(U", 8746=>")U", 8747=>"In", 8748=>"DI", 8750=>"Io", 8756=>".:", 8757=>":.", 8758=>":R", 8759=>"::", 8764=>"?1", 8766=>"CG", 8771=>"?-", 8773=>"?=", 8776=>"?2", 8780=>"=?", 8787=>"HI", 8800=>"!=", 8801=>"=3", 8804=>"=<", 8805=>">=", 8810=>"<*", 8811=>"*>", 8814=>"!<", 8815=>"!>", 8834=>"(C", 8835=>")C", 8838=>"(_", 8839=>")_", 8857=>"0.", 8858=>"02", 8869=>"-T", 8901=>".P", 8942=>":3", 8943=>".3", 8962=>"Eh", 8968=>"<7", 8969=>">7", 8970=>"7<", 8971=>"7>", 8976=>"NI", 8978=>"(A", 8981=>"TR", 8992=>"Iu", 8993=>"Il", 9001=>"</", 9002=>"/>", 9251=>"Vs", 9280=>"1h", 9281=>"3h", 9282=>"2h", 9283=>"4h", 9286=>"1j", 9287=>"2j", 9288=>"3j", 9289=>"4j", 9352=>"1.", 9353=>"2.", 9354=>"3.", 9355=>"4.", 9356=>"5.", 9357=>"6.", 9358=>"7.", 9359=>"8.", 9360=>"9.", 9472=>"hh", 9473=>"HH", 9474=>"vv", 9475=>"VV", 9476=>"3-", 9477=>"3_", 9478=>"3!", 9479=>"3/", 9480=>"4-", 9481=>"4_", 9482=>"4!", 9483=>"4/", 9484=>"dr", 9485=>"dR", 9486=>"Dr", 9487=>"DR", 9488=>"dl", 9489=>"dL", 9490=>"Dl", 9491=>"LD", 9492=>"ur", 9493=>"uR", 9494=>"Ur", 9495=>"UR", 9496=>"ul", 9497=>"uL", 9498=>"Ul", 9499=>"UL", 9500=>"vr", 9501=>"vR", 9504=>"Vr", 9507=>"VR", 9508=>"vl", 9509=>"vL", 9512=>"Vl", 9515=>"VL", 9516=>"dh", 9519=>"dH", 9520=>"Dh", 9523=>"DH", 9524=>"uh", 9527=>"uH", 9528=>"Uh", 9531=>"UH", 9532=>"vh", 9535=>"vH", 9538=>"Vh", 9547=>"VH", 9585=>"FD", 9586=>"BD", 9600=>"TB", 9604=>"LB", 9608=>"FB", 9612=>"lB", 9616=>"RB", 9617=>".S", 9618=>":S", 9619=>"?S", 9632=>"fS", 9633=>"OS", 9634=>"RO", 9635=>"Rr", 9636=>"RF", 9637=>"RY", 9638=>"RH", 9639=>"RZ", 9640=>"RK", 9641=>"RX", 9642=>"sB", 9644=>"SR", 9645=>"Or", 9650=>"UT", 9651=>"uT", 9654=>"PR", 9655=>"Tr", 9660=>"Dt", 9661=>"dT", 9664=>"PL", 9665=>"Tl", 9670=>"Db", 9671=>"Dw", 9674=>"LZ", 9675=>"0m", 9678=>"0o", 9679=>"0M", 9680=>"0L", 9681=>"0R", 9688=>"Sn", 9689=>"Ic", 9698=>"Fd", 9699=>"Bd", 9733=>"*2", 9734=>"*1", 9756=>"<H", 9758=>">H", 9786=>"0u", 9787=>"0U", 9788=>"SU", 9792=>"Fm", 9794=>"Ml", 9824=>"cS", 9825=>"cH", 9826=>"cD", 9827=>"cC", 9833=>"Md", 9834=>"M8", 9835=>"M2", 9837=>"Mb", 9838=>"Mx", 9839=>"MX", 10003=>"OK", 10007=>"XX", 10016=>"-X", 12288=>"IS", 12289=>",_", 12290=>"._", 12291=>"+\"", 12292=>"+_", 12293=>"*_", 12294=>";_", 12295=>"0_", 12298=>"<+", 12299=>">+", 12300=>"<\\", 12301=>">\\", 12302=>"<\"", 12303=>">\"", 12304=>"(\"", 12305=>")\"", 12306=>"=T", 12307=>"=_", 12308=>"(\\", 12309=>")\\", 12310=>"(I", 12311=>")I", 12316=>"-?", 12353=>"A5", 12354=>"a5", 12355=>"I5", 12356=>"i5", 12357=>"U5", 12358=>"u5", 12359=>"E5", 12360=>"e5", 12361=>"O5", 12362=>"o5", 12363=>"ka", 12364=>"ga", 12365=>"ki", 12366=>"gi", 12367=>"ku", 12368=>"gu", 12369=>"ke", 12370=>"ge", 12371=>"ko", 12372=>"go", 12373=>"sa", 12374=>"za", 12375=>"si", 12376=>"zi", 12377=>"su", 12378=>"zu", 12379=>"se", 12380=>"ze", 12381=>"so", 12382=>"zo", 12383=>"ta", 12384=>"da", 12385=>"ti", 12386=>"di", 12387=>"tU", 12388=>"tu", 12389=>"du", 12390=>"te", 12391=>"de", 12392=>"to", 12393=>"do", 12394=>"na", 12395=>"ni", 12396=>"nu", 12397=>"ne", 12398=>"no", 12399=>"ha", 12400=>"ba", 12401=>"pa", 12402=>"hi", 12403=>"bi", 12404=>"pi", 12405=>"hu", 12406=>"bu", 12407=>"pu", 12408=>"he", 12409=>"be", 12410=>"pe", 12411=>"ho", 12412=>"bo", 12413=>"po", 12414=>"ma", 12415=>"mi", 12416=>"mu", 12417=>"me", 12418=>"mo", 12419=>"yA", 12420=>"ya", 12421=>"yU", 12422=>"yu", 12423=>"yO", 12424=>"yo", 12425=>"ra", 12426=>"ri", 12427=>"ru", 12428=>"re", 12429=>"ro", 12430=>"wA", 12431=>"wa", 12432=>"wi", 12433=>"we", 12434=>"wo", 12435=>"n5", 12436=>"vu", 12443=>"\"5", 12444=>"05", 12445=>"*5", 12446=>"+5", 12449=>"a6", 12450=>"A6", 12451=>"i6", 12452=>"I6", 12453=>"u6", 12454=>"U6", 12455=>"e6", 12456=>"E6", 12457=>"o6", 12458=>"O6", 12459=>"Ka", 12460=>"Ga", 12461=>"Ki", 12462=>"Gi", 12463=>"Ku", 12464=>"Gu", 12465=>"Ke", 12466=>"Ge", 12467=>"Ko", 12468=>"Go", 12469=>"Sa", 12470=>"Za", 12471=>"Si", 12472=>"Zi", 12473=>"Su", 12474=>"Zu", 12475=>"Se", 12476=>"Ze", 12477=>"So", 12478=>"Zo", 12479=>"Ta", 12480=>"Da", 12481=>"Ti", 12482=>"Di", 12483=>"TU", 12484=>"Tu", 12485=>"Du", 12486=>"Te", 12487=>"De", 12488=>"To", 12489=>"Do", 12490=>"Na", 12491=>"Ni", 12492=>"Nu", 12493=>"Ne", 12494=>"No", 12495=>"Ha", 12496=>"Ba", 12497=>"Pa", 12498=>"Hi", 12499=>"Bi", 12500=>"Pi", 12501=>"Hu", 12502=>"Bu", 12503=>"Pu", 12504=>"He", 12505=>"Be", 12506=>"Pe", 12507=>"Ho", 12508=>"Bo", 12509=>"Po", 12510=>"Ma", 12511=>"Mi", 12512=>"Mu", 12513=>"Me", 12514=>"Mo", 12515=>"YA", 12516=>"Ya", 12517=>"YU", 12518=>"Yu", 12519=>"YO", 12520=>"Yo", 12521=>"Ra", 12522=>"Ri", 12523=>"Ru", 12524=>"Re", 12525=>"Ro", 12526=>"WA", 12527=>"Wa", 12528=>"Wi", 12529=>"We", 12530=>"Wo", 12531=>"N6", 12532=>"Vu", 12533=>"KA", 12534=>"KE", 12535=>"Va", 12536=>"Vi", 12537=>"Ve", 12538=>"Vo", 12539=>".6", 12540=>"-6", 12541=>"*6", 12542=>"+6", 12549=>"b4", 12550=>"p4", 12551=>"m4", 12552=>"f4", 12553=>"d4", 12554=>"t4", 12555=>"n4", 12556=>"l4", 12557=>"g4", 12558=>"k4", 12559=>"h4", 12560=>"j4", 12561=>"q4", 12562=>"x4", 12563=>"zh", 12564=>"ch", 12565=>"sh", 12566=>"r4", 12567=>"z4", 12568=>"c4", 12569=>"s4", 12570=>"a4", 12571=>"o4", 12572=>"e4", 12574=>"ai", 12575=>"ei", 12576=>"au", 12577=>"ou", 12578=>"an", 12579=>"en", 12580=>"aN", 12581=>"eN", 12582=>"er", 12583=>"i4", 12584=>"u4", 12585=>"iu", 12586=>"v4", 12587=>"nG", 12588=>"gn", 12832=>"1c", 12833=>"2c", 12834=>"3c", 12835=>"4c", 12836=>"5c", 12837=>"6c", 12838=>"7c", 12839=>"8c", 12840=>"9c", 57344=>"  ", 57345=>"/c", 57346=>"UA", 57347=>"UB", 57348=>"\"3", 57349=>"\"1", 57350=>"\"!", 57351=>"\"\\", 57352=>"\">", 57353=>"\"?", 57354=>"\"-", 57355=>"\"(", 57356=>"\".", 57357=>"\":", 57358=>"\"0", 57359=>"\"\"", 57360=>"\"<", 57361=>"\",", 57362=>"\";", 57363=>"\"_", 57364=>"\"=", 57365=>"\"/", 57366=>"\"i", 57367=>"\"d", 57368=>"\"p", 57369=>";;", 57370=>",,", 57371=>"b3", 57372=>"Ci", 57373=>"f(", 57374=>"ed", 57375=>"am", 57376=>"pm", 57379=>"Fl", 57380=>"GF", 57381=>">V", 57382=>"!*", 57383=>"?*", 57384=>"J<", 64256=>"ff", 64257=>"fi", 64258=>"fl", 64261=>"ft", 64262=>"st"}

  def self.[](codepoint)
    @@codepoints[codepoint]
  end
end
