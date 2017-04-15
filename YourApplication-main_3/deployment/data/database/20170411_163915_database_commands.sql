EXEC sp_rename 'myfirstmodule$bouekijouken', '87c385f78c754d1abac289fb1154c5dd';
GO
DROP INDEX [idx_myfirstmodule$bumon_system$owner] ON [myfirstmodule$bumon];
GO
DROP INDEX [idx_myfirstmodule$bumon_system$changedby] ON [myfirstmodule$bumon];
GO
EXEC sp_rename 'myfirstmodule$bumon', 'a6e93163af694dfe907088b6f8f1d73b';
GO
DROP INDEX [idx_myfirstmodule$bumon_jigyoushoheader_myfirstmodule$jigyoushoheader_myfirstmodule$bumon] ON [myfirstmodule$bumon_jigyoushoheader];
GO
EXEC sp_rename 'myfirstmodule$bumon_jigyoushoheader', 'c4f9cbd3dc464eb5baa5248e971debe8';
GO
EXEC sp_rename 'myfirstmodule$changemarking', '3e67db26cd2e4f05abe9ddef18448ef6';
GO
DROP INDEX [idx_myfirstmodule$changemarking_haisougyousha_myfirstmodule$haisougyousha_myfirstmodule$changemarking] ON [myfirstmodule$changemarking_haisougyousha];
GO
EXEC sp_rename 'myfirstmodule$changemarking_haisougyousha', '31b0175d406a4f479e827b0b3874c0a6';
GO
EXEC sp_rename 'myfirstmodule$count', '3fa706acfef14dc3a715d82fd911a454';
GO
DROP INDEX [idx_myfirstmodule$daitaihinban_system$owner] ON [myfirstmodule$daitaihinban];
GO
DROP INDEX [idx_myfirstmodule$daitaihinban_system$changedby] ON [myfirstmodule$daitaihinban];
GO
EXEC sp_rename 'myfirstmodule$daitaihinban', '880d12d2e0e640b49a5144dd7f17a0a9';
GO
DROP INDEX [idx_myfirstmodule$daitaihinban_hinban_hinbanid_myfirstmodule$hinban_myfirstmodule$daitaihinban] ON [myfirstmodule$daitaihinban_hinban_hinbanid];
GO
EXEC sp_rename 'myfirstmodule$daitaihinban_hinban_hinbanid', '42556a19b483428dadbb9e0864da51a8';
GO
DROP INDEX [idx_myfirstmodule$daitaihinban_hinban_daitaihinid_myfirstmodule$hinban_myfirstmodule$daitaihinban] ON [myfirstmodule$daitaihinban_hinban_daitaihinid];
GO
EXEC sp_rename 'myfirstmodule$daitaihinban_hinban_daitaihinid', 'f5d4413cefa643d68617a4f31e266d41';
GO
DROP INDEX [idx_myfirstmodule$genzaiko_system$owner] ON [myfirstmodule$genzaiko];
GO
DROP INDEX [idx_myfirstmodule$genzaiko_system$changedby] ON [myfirstmodule$genzaiko];
GO
EXEC sp_rename 'myfirstmodule$genzaiko', 'c1771cea26fb483ca215414d6cebb129';
GO
DROP INDEX [idx_myfirstmodule$genzaiko_hinban_myfirstmodule$hinban_myfirstmodule$genzaiko] ON [myfirstmodule$genzaiko_hinban];
GO
EXEC sp_rename 'myfirstmodule$genzaiko_hinban', 'af51545c9f844802a033382fb6b6b3d3';
GO
DROP INDEX [idx_myfirstmodule$genzaiko_souko_myfirstmodule$souko_myfirstmodule$genzaiko] ON [myfirstmodule$genzaiko_souko];
GO
EXEC sp_rename 'myfirstmodule$genzaiko_souko', '51b42ab22d254f238ff5d6532e6ab4b2';
GO
DROP INDEX [idx_myfirstmodule$genzaiko_shouhinrank_myfirstmodule$shouhinrank_myfirstmodule$genzaiko] ON [myfirstmodule$genzaiko_shouhinrank];
GO
EXEC sp_rename 'myfirstmodule$genzaiko_shouhinrank', '2a36989b905b44cf9a601a9e827b7a6b';
GO
DROP INDEX [idx_myfirstmodule$gokan_system$changedby] ON [myfirstmodule$gokan];
GO
DROP INDEX [idx_myfirstmodule$gokan_system$owner] ON [myfirstmodule$gokan];
GO
EXEC sp_rename 'myfirstmodule$gokan', '50a1ea1a688e4799a342ccde5795ff42';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_system$changedby] ON [myfirstmodule$gokanseihinban];
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_system$owner] ON [myfirstmodule$gokanseihinban];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban', '775061dcf4f848449dd761b7b0c213fd';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_newgokanhinid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_newgokanhinid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_newgokanhinid', '2aee222470014aaa8cccd5880325f135';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_aftergokanhinid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_aftergokanhinid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_aftergokanhinid', 'b8b2863b4276464582628a48b10333e5';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_newgokanid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_newgokanid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_newgokanid', '6f77afbe55f143489eb20dfbb02deb9c';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_beforegokanid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_beforegokanid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_beforegokanid', '4d037ebf8f5241c690230e1d879f2f20';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_aftergokanid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_aftergokanid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_aftergokanid', 'e9ba811f3bff45aeae246e086638af16';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_gokan_beforegokanhinid_myfirstmodule$gokan_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_gokan_beforegokanhinid];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_gokan_beforegokanhinid', '298906bebdf447a7b593002a99178d26';
GO
DROP INDEX [idx_myfirstmodule$gokanseihinban_hinban_myfirstmodule$hinban_myfirstmodule$gokanseihinban] ON [myfirstmodule$gokanseihinban_hinban];
GO
EXEC sp_rename 'myfirstmodule$gokanseihinban_hinban', '98f9b24777444380be31f804e5d6d371';
GO
DROP INDEX [idx_myfirstmodule$hacchuudetail_system$owner] ON [myfirstmodule$hacchuudetail];
GO
DROP INDEX [idx_myfirstmodule$hacchuudetail_system$changedby] ON [myfirstmodule$hacchuudetail];
GO
EXEC sp_rename 'myfirstmodule$hacchuudetail', 'db19fdbc1e4f475eb0008411ece38b1f';
GO
DROP INDEX [idx_myfirstmodule$hacchuudetail_juchuudetail_myfirstmodule$juchuudetail_myfirstmodule$hacchuudetail] ON [myfirstmodule$hacchuudetail_juchuudetail];
GO
EXEC sp_rename 'myfirstmodule$hacchuudetail_juchuudetail', 'b70b09a1f137457eb9393fa038085ba1';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_system$changedby] ON [myfirstmodule$haisougyousha];
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_system$owner] ON [myfirstmodule$haisougyousha];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha', 'd6b0f1f795a64f04b1369ba774fa2266';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_seikyuusaki_myfirstmodule$seikyuusaki_myfirstmodule$haisougyousha] ON [myfirstmodule$haisougyousha_seikyuusaki];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha_seikyuusaki', 'b4d9f6a6dc88477bbf97f8e7779e0da9';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_minato_myfirstmodule$minato_myfirstmodule$haisougyousha] ON [myfirstmodule$haisougyousha_minato];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha_minato', 'b2964096a8bc4cf2b3c295c1f805bb57';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_yusoukubun_myfirstmodule$yusoukubun_myfirstmodule$haisougyousha] ON [myfirstmodule$haisougyousha_yusoukubun];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha_yusoukubun', '312ab82ff2434fb9a97eace4b49bd4db';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_kuni_myfirstmodule$kuni_myfirstmodule$haisougyousha] ON [myfirstmodule$haisougyousha_kuni];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha_kuni', '463e734e4c884c82a46bbfef35ab597a';
GO
DROP INDEX [idx_myfirstmodule$haisougyousha_bouekijouken_myfirstmodule$bouekijouken_myfirstmodule$haisougyousha] ON [myfirstmodule$haisougyousha_bouekijouken];
GO
EXEC sp_rename 'myfirstmodule$haisougyousha_bouekijouken', '92c2b83891b34affb8ae34b5fd3add37';
GO
DROP INDEX [idx_myfirstmodule$hikiatezaiko_system$changedby] ON [myfirstmodule$hikiatezaiko];
GO
DROP INDEX [idx_myfirstmodule$hikiatezaiko_system$owner] ON [myfirstmodule$hikiatezaiko];
GO
EXEC sp_rename 'myfirstmodule$hikiatezaiko', 'f8968542d1d049fc985b44538f8a78c6';
GO
DROP INDEX [idx_myfirstmodule$hikiatezaiko_hinban_myfirstmodule$hinban_myfirstmodule$hikiatezaiko] ON [myfirstmodule$hikiatezaiko_hinban];
GO
EXEC sp_rename 'myfirstmodule$hikiatezaiko_hinban', 'ae7268206b57406987c6e9f5a1ca1875';
GO
DROP INDEX [idx_myfirstmodule$hikiatezaiko_shouhinrank_myfirstmodule$shouhinrank_myfirstmodule$hikiatezaiko] ON [myfirstmodule$hikiatezaiko_shouhinrank];
GO
EXEC sp_rename 'myfirstmodule$hikiatezaiko_shouhinrank', '948f5ca973c94677a777b1959f29e1fe';
GO
DROP INDEX [idx_myfirstmodule$hikiatezaiko_souko_myfirstmodule$souko_myfirstmodule$hikiatezaiko] ON [myfirstmodule$hikiatezaiko_souko];
GO
EXEC sp_rename 'myfirstmodule$hikiatezaiko_souko', '575263360b6547e7a292050cb882b8dc';
GO
DROP INDEX [idx_myfirstmodule$hinban_system$changedby] ON [myfirstmodule$hinban];
GO
DROP INDEX [idx_myfirstmodule$hinban_system$owner] ON [myfirstmodule$hinban];
GO
EXEC sp_rename 'myfirstmodule$hinban', 'f8c7626ddabd4a128eedffc239b12f76';
GO
DROP INDEX [idx_myfirstmodule$hinban_tani_myfirstmodule$tani_myfirstmodule$hinban] ON [myfirstmodule$hinban_tani];
GO
EXEC sp_rename 'myfirstmodule$hinban_tani', 'dc43d74b314b49ab8afe52c75c77ee57';
GO
DROP INDEX [idx_myfirstmodule$hinban_zaikocommentkubun_myfirstmodule$zaikocommentkubun_myfirstmodule$hinban] ON [myfirstmodule$hinban_zaikocommentkubun];
GO
EXEC sp_rename 'myfirstmodule$hinban_zaikocommentkubun', 'ad8e33b4856845c995ac6c8a8a430f49';
GO
DROP INDEX [idx_myfirstmodule$hinban_hinshu_myfirstmodule$hinshu_myfirstmodule$hinban] ON [myfirstmodule$hinban_hinshu];
GO
EXEC sp_rename 'myfirstmodule$hinban_hinshu', '456d2da49f1247f198aca7069c56c7a8';
GO
DROP INDEX [idx_myfirstmodule$hinbantanka_system$owner] ON [myfirstmodule$hinbantanka];
GO
DROP INDEX [idx_myfirstmodule$hinbantanka_system$changedby] ON [myfirstmodule$hinbantanka];
GO
EXEC sp_rename 'myfirstmodule$hinbantanka', 'bf0ee187fc924b34a9904b18c2e8f7a6';
GO
DROP INDEX [idx_myfirstmodule$hinbantanka_hinban_myfirstmodule$hinban_myfirstmodule$hinbantanka] ON [myfirstmodule$hinbantanka_hinban];
GO
EXEC sp_rename 'myfirstmodule$hinbantanka_hinban', 'b969f089d8a048289200f7fc6272793a';
GO
DROP INDEX [idx_myfirstmodule$hinbantanka_tsuukaheader_myfirstmodule$tsuukaheader_myfirstmodule$hinbantanka] ON [myfirstmodule$hinbantanka_tsuukaheader];
GO
EXEC sp_rename 'myfirstmodule$hinbantanka_tsuukaheader', '349ac2cceb6d4893978b29cf0529e0da';
GO
DROP INDEX [idx_myfirstmodule$hinshu_system$owner] ON [myfirstmodule$hinshu];
GO
DROP INDEX [idx_myfirstmodule$hinshu_system$changedby] ON [myfirstmodule$hinshu];
GO
EXEC sp_rename 'myfirstmodule$hinshu', '1072f62fbac44250a223ecb07ee4d48d';
GO
DROP INDEX [idx_myfirstmodule$hoyuuki_system$owner] ON [myfirstmodule$hoyuuki];
GO
DROP INDEX [idx_myfirstmodule$hoyuuki_system$changedby] ON [myfirstmodule$hoyuuki];
GO
EXEC sp_rename 'myfirstmodule$hoyuuki', 'e27db259a7e6471ab05ff22d783886e1';
GO
DROP INDEX [idx_myfirstmodule$hoyuuki_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$hoyuuki] ON [myfirstmodule$hoyuuki_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$hoyuuki_tokuisaki', '7421b8109483407fb399445f4e9eda4a';
GO
DROP INDEX [idx_myfirstmodule$ikkatudetail_system$owner] ON [myfirstmodule$ikkatudetail];
GO
DROP INDEX [idx_myfirstmodule$ikkatudetail_system$changedby] ON [myfirstmodule$ikkatudetail];
GO
EXEC sp_rename 'myfirstmodule$ikkatudetail', '15b5314afb7349f9be967ca9632dbb53';
GO
DROP INDEX [idx_myfirstmodule$ikkatudetail_ikkatuheder_myfirstmodule$ikkatuheder_myfirstmodule$ikkatudetail] ON [myfirstmodule$ikkatudetail_ikkatuheder];
GO
EXEC sp_rename 'myfirstmodule$ikkatudetail_ikkatuheder', 'cc91115c125b435a8a28be9778ebf86f';
GO
DROP INDEX [idx_myfirstmodule$ikkatuheder_system$owner] ON [myfirstmodule$ikkatuheder];
GO
DROP INDEX [idx_myfirstmodule$ikkatuheder_system$changedby] ON [myfirstmodule$ikkatuheder];
GO
EXEC sp_rename 'myfirstmodule$ikkatuheder', '24482e419d78449d95a4574e9bb338aa';
GO
DROP INDEX [idx_myfirstmodule$invoicedetail_system$owner] ON [myfirstmodule$invoicedetail];
GO
DROP INDEX [idx_myfirstmodule$invoicedetail_system$changedby] ON [myfirstmodule$invoicedetail];
GO
EXEC sp_rename 'myfirstmodule$invoicedetail', '969b08975b20406aae62748a9fe24984';
GO
DROP INDEX [idx_myfirstmodule$invoicedetail_juchuudetail_myfirstmodule$juchuudetail_myfirstmodule$invoicedetail] ON [myfirstmodule$invoicedetail_juchuudetail];
GO
EXEC sp_rename 'myfirstmodule$invoicedetail_juchuudetail', '48a10bdab6f04017a667a46386444d2b';
GO
DROP INDEX [idx_myfirstmodule$jigyoushodetail_system$changedby] ON [myfirstmodule$jigyoushodetail];
GO
DROP INDEX [idx_myfirstmodule$jigyoushodetail_system$owner] ON [myfirstmodule$jigyoushodetail];
GO
EXEC sp_rename 'myfirstmodule$jigyoushodetail', 'd6387c8267274f8cb0f613627004ef30';
GO
DROP INDEX [idx_myfirstmodule$jigyoushodetail_jigyoushoheader_myfirstmodule$jigyoushoheader_myfirstmodule$jigyoushodetail] ON [myfirstmodule$jigyoushodetail_jigyoushoheader];
GO
EXEC sp_rename 'myfirstmodule$jigyoushodetail_jigyoushoheader', '27e82f6321d84e5b88f58de7f8304b5d';
GO
DROP INDEX [idx_myfirstmodule$jigyoushoheader_system$changedby] ON [myfirstmodule$jigyoushoheader];
GO
DROP INDEX [idx_myfirstmodule$jigyoushoheader_system$owner] ON [myfirstmodule$jigyoushoheader];
GO
EXEC sp_rename 'myfirstmodule$jigyoushoheader', 'c4af0a06db88427d977f2a245de684a7';
GO
DROP INDEX [idx_myfirstmodule$juchuudetail_system$owner] ON [myfirstmodule$juchuudetail];
GO
DROP INDEX [idx_myfirstmodule$juchuudetail_system$changedby] ON [myfirstmodule$juchuudetail];
GO
EXEC sp_rename 'myfirstmodule$juchuudetail', '481d611cecae4b298c2f8a1a7e1bd968';
GO
DROP INDEX [idx_myfirstmodule$juchuudetail_hinban_myfirstmodule$hinban_myfirstmodule$juchuudetail] ON [myfirstmodule$juchuudetail_hinban];
GO
EXEC sp_rename 'myfirstmodule$juchuudetail_hinban', '99346b4796954e97afbb6e13d9995f2f';
GO
DROP INDEX [idx_myfirstmodule$juchuudetail_juchuuheder_myfirstmodule$juchuuheder_myfirstmodule$juchuudetail] ON [myfirstmodule$juchuudetail_juchuuheder];
GO
EXEC sp_rename 'myfirstmodule$juchuudetail_juchuuheder', '1a7ad26d51da4109b378a11d0b91d62c';
GO
DROP INDEX [idx_myfirstmodule$juchuuheder_system$changedby] ON [myfirstmodule$juchuuheder];
GO
DROP INDEX [idx_myfirstmodule$juchuuheder_system$owner] ON [myfirstmodule$juchuuheder];
GO
DROP INDEX [idx_myfirstmodule$juchuuheder_chuumonno] ON [myfirstmodule$juchuuheder];
GO
EXEC sp_rename 'myfirstmodule$juchuuheder', '1184b0a3567e4ee78642c0ea42583483';
GO
DROP INDEX [idx_myfirstmodule$juchuuheder_juchuumainheader_myfirstmodule$juchuumainheader_myfirstmodule$juchuuheder] ON [myfirstmodule$juchuuheder_juchuumainheader];
GO
EXEC sp_rename 'myfirstmodule$juchuuheder_juchuumainheader', '3937346ccf414fc894c6f43f06c92317';
GO
DROP INDEX [idx_myfirstmodule$juchuuheder_haisougyousha_myfirstmodule$haisougyousha_myfirstmodule$juchuuheder] ON [myfirstmodule$juchuuheder_haisougyousha];
GO
EXEC sp_rename 'myfirstmodule$juchuuheder_haisougyousha', '6968d82d7a4b4b21bdabdf03ce295786';
GO
DROP INDEX [idx_myfirstmodule$juchuumainheader_system$changedby] ON [myfirstmodule$juchuumainheader];
GO
DROP INDEX [idx_myfirstmodule$juchuumainheader_system$owner] ON [myfirstmodule$juchuumainheader];
GO
EXEC sp_rename 'myfirstmodule$juchuumainheader', 'aba69499e399422993441f1066228e1f';
GO
DROP INDEX [idx_myfirstmodule$juchuumainheader_seibiuketsukeheader_myfirstmodule$seibiuketsukeheader_myfirstmodule$juchuumainheader] ON [myfirstmodule$juchuumainheader_seibiuketsukeheader];
GO
EXEC sp_rename 'myfirstmodule$juchuumainheader_seibiuketsukeheader', 'c380ce52c7e14fe589f72da43756b61b';
GO
DROP INDEX [idx_myfirstmodule$kuni_system$changedby] ON [myfirstmodule$kuni];
GO
DROP INDEX [idx_myfirstmodule$kuni_system$owner] ON [myfirstmodule$kuni];
GO
EXEC sp_rename 'myfirstmodule$kuni', '38dfc8ad590c495985d8425a55ffb8c5';
GO
EXEC sp_rename 'myfirstmodule$markinghenkan', 'd77296e9be2f43cb8273325430ed76a9';
GO
DROP INDEX [idx_myfirstmodule$markinghenkan_okurisaki_myfirstmodule$okurisaki_myfirstmodule$markinghenkan] ON [myfirstmodule$markinghenkan_okurisaki];
GO
EXEC sp_rename 'myfirstmodule$markinghenkan_okurisaki', '0c02b3e4bf4d40b0a203728d5d8fc179';
GO
DROP INDEX [idx_myfirstmodule$minato_system$owner] ON [myfirstmodule$minato];
GO
DROP INDEX [idx_myfirstmodule$minato_system$changedby] ON [myfirstmodule$minato];
GO
EXEC sp_rename 'myfirstmodule$minato', 'b60cbfa74e914cfcaa17698342f77df9';
GO
DROP INDEX [idx_myfirstmodule$okurisaki_system$owner] ON [myfirstmodule$okurisaki];
GO
DROP INDEX [idx_myfirstmodule$okurisaki_system$changedby] ON [myfirstmodule$okurisaki];
GO
EXEC sp_rename 'myfirstmodule$okurisaki', '7326aa56d25841d69a546085341b9741';
GO
DROP INDEX [idx_myfirstmodule$orderkubun_system$changedby] ON [myfirstmodule$orderkubun];
GO
DROP INDEX [idx_myfirstmodule$orderkubun_system$owner] ON [myfirstmodule$orderkubun];
GO
EXEC sp_rename 'myfirstmodule$orderkubun', '230acb07dc6447cb9a1f59d61c4c2151';
GO
DROP INDEX [idx_myfirstmodule$oshirase_system$changedby] ON [myfirstmodule$oshirase];
GO
DROP INDEX [idx_myfirstmodule$oshirase_system$owner] ON [myfirstmodule$oshirase];
GO
EXEC sp_rename 'myfirstmodule$oshirase', '4c35fe6728934aa5bc5f6f2e06b81229';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_system$changedby] ON [myfirstmodule$seibiuketsukedetail];
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_system$owner] ON [myfirstmodule$seibiuketsukedetail];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetail', '56e8bd3b773c4f1e91f2ffe87042f1a7';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_seibiuketsukeheader_myfirstmodule$seibiuketsukeheader_myfirstmodule$seibiuketsukedetail] ON [myfirstmodule$seibiuketsukedetail_seibiuketsukeheader];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetail_seibiuketsukeheader', 'ffa1cf92252744c4a500b1f9f57d69a9';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_hinban_saishingokanhinid_myfirstmodule$hinban_myfirstmodule$seibiuketsukedetail] ON [myfirstmodule$seibiuketsukedetail_hinban_saishingokanhinid];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetail_hinban_saishingokanhinid', 'f09bb57efbf44fcfb90097fbbd3f46c0';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_hinban_hacchuushoukaihinbanid_myfirstmodule$hinban_myfirstmodule$seibiuketsukedetail] ON [myfirstmodule$seibiuketsukedetail_hinban_hacchuushoukaihinbanid];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetail_hinban_hacchuushoukaihinbanid', 'fab0f3fef49441f5a193dc0dc30f0da3';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetail_hinban_hinbanid_myfirstmodule$hinban_myfirstmodule$seibiuketsukedetail] ON [myfirstmodule$seibiuketsukedetail_hinban_hinbanid];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetail_hinban_hinbanid', '3f1b4fd36978456590dabc1193d75fdb';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetailrenkei_system$changedby] ON [myfirstmodule$seibiuketsukedetailrenkei];
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetailrenkei_system$owner] ON [myfirstmodule$seibiuketsukedetailrenkei];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetailrenkei', 'f641d48c2ab5431bac841167be7824eb';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukedetailrenkei_seibiuketsukedetail] ON [myfirstmodule$seibiuketsukedetailrenkei_seibiuketsukedetail];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukedetailrenkei_seibiuketsukedetail', '60d9cfcb51c641409fd8e02423d62a39';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeerror_system$owner] ON [myfirstmodule$seibiuketsukeerror];
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeerror_system$changedby] ON [myfirstmodule$seibiuketsukeerror];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeerror', '1f4e57148a5144728ae78d91ff7b2ad9';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeerror_seibiuketsukeheader_myfirstmodule$seibiuketsukeheader_myfirstmodule$seibiuketsukeerror] ON [myfirstmodule$seibiuketsukeerror_seibiuketsukeheader];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeerror_seibiuketsukeheader', 'd27817df9a2440f6ab785adf90adf77b';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeerror_seibiuketsukedetail_myfirstmodule$seibiuketsukedetail_myfirstmodule$seibiuketsukeerror] ON [myfirstmodule$seibiuketsukeerror_seibiuketsukedetail];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeerror_seibiuketsukedetail', '91da0f9ac5ad459a9d9c63936679b646';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_system$changedby] ON [myfirstmodule$seibiuketsukeheader];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader', '834a01cc89f34cd7b1c6b75bc5edd97a';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_tantousha_myfirstmodule$tantousha_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_tantousha];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_tantousha', '0e2a1f595a59456782c6b9925091a3d8';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_okurisaki_myfirstmodule$okurisaki_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_okurisaki];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_okurisaki', '41346258cedf449881b7be5811852fcd';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_hoyuuki_myfirstmodule$hoyuuki_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_hoyuuki];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_hoyuuki', '25cba441cde74f2dbc3bbeea1d3105b0';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_tokuisaki_tokuisakiid_myfirstmodule$tokuisaki_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_tokuisaki_tokuisakiid];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_tokuisaki_tokuisakiid', '313fa06e69a143e084ee05966c0f6b97';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_tokuisaki_enduserid_myfirstmodule$tokuisaki_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_tokuisaki_enduserid];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_tokuisaki_enduserid', '8918bcaf965a4a8ba3d10c63291d0a3e';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_account_administration$account_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_account];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_account', '979f113c8b0842aab782ade38088cc34';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_haisougyousha_myfirstmodule$haisougyousha_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_haisougyousha];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_haisougyousha', 'f27560cc4a844ca0b82e26b950e28b5e';
GO
DROP INDEX [idx_myfirstmodule$seibiuketsukeheader_jigyoushoheader_myfirstmodule$jigyoushoheader_myfirstmodule$seibiuketsukeheader] ON [myfirstmodule$seibiuketsukeheader_jigyoushoheader];
GO
EXEC sp_rename 'myfirstmodule$seibiuketsukeheader_jigyoushoheader', '62d2c81735dc4b78adedfe231dc9fde3';
GO
DROP INDEX [idx_myfirstmodule$seikyuusaki_system$owner] ON [myfirstmodule$seikyuusaki];
GO
DROP INDEX [idx_myfirstmodule$seikyuusaki_system$changedby] ON [myfirstmodule$seikyuusaki];
GO
EXEC sp_rename 'myfirstmodule$seikyuusaki', '1468e17692c845a796280ea00f423248';
GO
DROP INDEX [idx_myfirstmodule$entity_tsuukaheader_myfirstmodule$tsuukaheader_myfirstmodule$seikyuusaki] ON [myfirstmodule$entity_tsuukaheader];
GO
EXEC sp_rename 'myfirstmodule$entity_tsuukaheader', '4555a9e7deb344619eba30dbc54d7736';
GO
DROP INDEX [idx_myfirstmodule$shouhinrank_system$changedby] ON [myfirstmodule$shouhinrank];
GO
DROP INDEX [idx_myfirstmodule$shouhinrank_system$owner] ON [myfirstmodule$shouhinrank];
GO
EXEC sp_rename 'myfirstmodule$shouhinrank', 'e0b72609f47a41e090b6b4942c5bd9a1';
GO
DROP INDEX [idx_myfirstmodule$shukkadetail_system$changedby] ON [myfirstmodule$shukkadetail];
GO
DROP INDEX [idx_myfirstmodule$shukkadetail_system$owner] ON [myfirstmodule$shukkadetail];
GO
EXEC sp_rename 'myfirstmodule$shukkadetail', 'b8d02762b0044d8f90e5a5373a652677';
GO
DROP INDEX [idx_myfirstmodule$shukkadetail_shukkaheader_myfirstmodule$shukkaheader_myfirstmodule$shukkadetail] ON [myfirstmodule$shukkadetail_shukkaheader];
GO
EXEC sp_rename 'myfirstmodule$shukkadetail_shukkaheader', '289f452cb0e244048e1c75f032906bb9';
GO
DROP INDEX [idx_myfirstmodule$shukkadetail_juchuudetail_myfirstmodule$juchuudetail_myfirstmodule$shukkadetail] ON [myfirstmodule$shukkadetail_juchuudetail];
GO
EXEC sp_rename 'myfirstmodule$shukkadetail_juchuudetail', '1aaecfcbc5aa4133a6d6ab13331d2383';
GO
DROP INDEX [idx_myfirstmodule$shukkaheader_system$changedby] ON [myfirstmodule$shukkaheader];
GO
DROP INDEX [idx_myfirstmodule$shukkaheader_system$owner] ON [myfirstmodule$shukkaheader];
GO
EXEC sp_rename 'myfirstmodule$shukkaheader', '56dc447727494d19816a6b19655f8048';
GO
DROP INDEX [idx_myfirstmodule$souko_system$changedby] ON [myfirstmodule$souko];
GO
DROP INDEX [idx_myfirstmodule$souko_system$owner] ON [myfirstmodule$souko];
GO
EXEC sp_rename 'myfirstmodule$souko', 'd2de723c5c4843128dab62564b493644';
GO
DROP INDEX [idx_myfirstmodule$tani_system$owner] ON [myfirstmodule$tani];
GO
DROP INDEX [idx_myfirstmodule$tani_system$changedby] ON [myfirstmodule$tani];
GO
EXEC sp_rename 'myfirstmodule$tani', 'ad729eedfff44f73ac40f22cbae1211c';
GO
DROP INDEX [idx_myfirstmodule$tantousha_system$owner] ON [myfirstmodule$tantousha];
GO
DROP INDEX [idx_myfirstmodule$tantousha_system$changedby] ON [myfirstmodule$tantousha];
GO
EXEC sp_rename 'myfirstmodule$tantousha', 'a6dc1fd3440c41e986bf8d7057d86d66';
GO
DROP INDEX [idx_myfirstmodule$tantousha_bumon_myfirstmodule$bumon_myfirstmodule$tantousha] ON [myfirstmodule$tantousha_bumon];
GO
EXEC sp_rename 'myfirstmodule$tantousha_bumon', 'db4753fe4fc64bfa9e46438a2780ff50';
GO
DROP INDEX [idx_myfirstmodule$tensho_system$owner] ON [myfirstmodule$tensho];
GO
DROP INDEX [idx_myfirstmodule$tensho_system$changedby] ON [myfirstmodule$tensho];
GO
EXEC sp_rename 'myfirstmodule$tensho', '0e7cd7664e7d497cb9bdb23d5091b69a';
GO
DROP INDEX [idx_myfirstmodule$tensho_bumon_myfirstmodule$bumon_myfirstmodule$tensho] ON [myfirstmodule$tensho_bumon];
GO
EXEC sp_rename 'myfirstmodule$tensho_bumon', 'b9507906221845b6870bb5be94c52658';
GO
DROP INDEX [idx_myfirstmodule$tensho_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tensho] ON [myfirstmodule$tensho_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tensho_tokuisaki', '2a4f0f17f3c74e3a8b269d9eeda47111';
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_system$owner] ON [myfirstmodule$tokuisaki];
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_system$changedby] ON [myfirstmodule$tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisaki', '82478b81d0804913ac5592fee75c464e';
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tokuisaki] ON [myfirstmodule$tokuisaki_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisaki_tokuisaki', 'd959c8c940924b658e1654db131c6a27';
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_orderkubun_myfirstmodule$orderkubun_myfirstmodule$tokuisaki] ON [myfirstmodule$tokuisaki_orderkubun];
GO
EXEC sp_rename 'myfirstmodule$tokuisaki_orderkubun', 'ace8c86e057943f7b1da4c9a450b60a2';
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_seikyuusaki_myfirstmodule$seikyuusaki_myfirstmodule$tokuisaki] ON [myfirstmodule$tokuisaki_seikyuusaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisaki_seikyuusaki', '7e2f875ae2074d6ab450af75099f8b4b';
GO
DROP INDEX [idx_myfirstmodule$tokuisaki_tantousha_myfirstmodule$tantousha_myfirstmodule$tokuisaki] ON [myfirstmodule$tokuisaki_tantousha];
GO
EXEC sp_rename 'myfirstmodule$tokuisaki_tantousha', '107af60c55ce41a788ece03095d2dcd9';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsuhinshukakeritu_system$changedby] ON [myfirstmodule$tokuisakibetsuhinshukakeritu];
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsuhinshukakeritu_system$owner] ON [myfirstmodule$tokuisakibetsuhinshukakeritu];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsuhinshukakeritu', '4b8e760639894849998bf7f28134fb4f';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsuhinshukakeritu_hinshu_myfirstmodule$hinshu_myfirstmodule$tokuisakibetsuhinshukakeritu] ON [myfirstmodule$tokuisakibetsuhinshukakeritu_hinshu];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsuhinshukakeritu_hinshu', 'faf70fa4c7874fd4b1c6f0a5d11caa14';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsuhinshukakeritu_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tokuisakibetsuhinshukakeritu] ON [myfirstmodule$tokuisakibetsuhinshukakeritu_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsuhinshukakeritu_tokuisaki', '2d6cdf57509e44ff8016ea4c83180848';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsukakeritu_system$changedby] ON [myfirstmodule$tokuisakibetsukakeritu];
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsukakeritu_system$owner] ON [myfirstmodule$tokuisakibetsukakeritu];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsukakeritu', '0f1d49356f5b432ab1cff6e1abd112e2';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsukakeritu_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tokuisakibetsukakeritu] ON [myfirstmodule$tokuisakibetsukakeritu_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsukakeritu_tokuisaki', '443d347f8acf4700a5d1488f3b540eb2';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsushouhintanka_system$owner] ON [myfirstmodule$tokuisakibetsushouhintanka];
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsushouhintanka_system$changedby] ON [myfirstmodule$tokuisakibetsushouhintanka];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsushouhintanka', '7ca6a0fc5d054450819e6aa4f25592c6';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsushouhintanka_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tokuisakibetsushouhintanka] ON [myfirstmodule$tokuisakibetsushouhintanka_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsushouhintanka_tokuisaki', '6dce314826cd4f60b53b7cc97c569878';
GO
DROP INDEX [idx_myfirstmodule$tokuisakibetsushouhintanka_hinban_myfirstmodule$hinban_myfirstmodule$tokuisakibetsushouhintanka] ON [myfirstmodule$tokuisakibetsushouhintanka_hinban];
GO
EXEC sp_rename 'myfirstmodule$tokuisakibetsushouhintanka_hinban', 'ff004bc5a9974199bcf9b2a9f0946f30';
GO
DROP INDEX [idx_myfirstmodule$tokuisakiokuruisaki_system$owner] ON [myfirstmodule$tokuisakiokuruisaki];
GO
DROP INDEX [idx_myfirstmodule$tokuisakiokuruisaki_system$changedby] ON [myfirstmodule$tokuisakiokuruisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakiokuruisaki', 'd3a88f4baeb343b3b664ccec22fee08d';
GO
DROP INDEX [idx_myfirstmodule$tokuisakiokuruisaki_tokuisaki_myfirstmodule$tokuisaki_myfirstmodule$tokuisakiokuruisaki] ON [myfirstmodule$tokuisakiokuruisaki_tokuisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakiokuruisaki_tokuisaki', '0713f0a8701c4d91bd9b83f7ba4d34c7';
GO
DROP INDEX [idx_myfirstmodule$tokuisakiokuruisaki_okurisaki_myfirstmodule$okurisaki_myfirstmodule$tokuisakiokuruisaki] ON [myfirstmodule$tokuisakiokuruisaki_okurisaki];
GO
EXEC sp_rename 'myfirstmodule$tokuisakiokuruisaki_okurisaki', '6824b6049af844889795960aaf0cff4c';
GO
DROP INDEX [idx_myfirstmodule$tokuisakiokuruisaki_souko_myfirstmodule$souko_myfirstmodule$tokuisakiokuruisaki] ON [myfirstmodule$tokuisakiokuruisaki_souko];
GO
EXEC sp_rename 'myfirstmodule$tokuisakiokuruisaki_souko', 'a16a936382674f07bd219973c4d2fc66';
GO
DROP INDEX [idx_myfirstmodule$tsuukadetail_system$owner] ON [myfirstmodule$tsuukadetail];
GO
DROP INDEX [idx_myfirstmodule$tsuukadetail_system$changedby] ON [myfirstmodule$tsuukadetail];
GO
EXEC sp_rename 'myfirstmodule$tsuukadetail', '0a3556521d114a7399d7f7d72f4517d4';
GO
DROP INDEX [idx_myfirstmodule$tsuukadetail_tsuukaheader_myfirstmodule$tsuukaheader_myfirstmodule$tsuukadetail] ON [myfirstmodule$tsuukadetail_tsuukaheader];
GO
EXEC sp_rename 'myfirstmodule$tsuukadetail_tsuukaheader', 'd1c55fcabb094c1e8d64f765c3eac0f3';
GO
DROP INDEX [idx_myfirstmodule$tsuukaheader_system$changedby] ON [myfirstmodule$tsuukaheader];
GO
DROP INDEX [idx_myfirstmodule$tsuukaheader_system$owner] ON [myfirstmodule$tsuukaheader];
GO
EXEC sp_rename 'myfirstmodule$tsuukaheader', '6bb4fd977aec48ddb99d9279e3e6eae5';
GO
DROP INDEX [idx_myfirstmodule$userinfo_system$changedby] ON [myfirstmodule$userinfo];
GO
DROP INDEX [idx_myfirstmodule$userinfo_system$owner] ON [myfirstmodule$userinfo];
GO
EXEC sp_rename 'myfirstmodule$userinfo', '8667e20ac8d248ad9f0c176dd6b2e4f4';
GO
DROP INDEX [idx_myfirstmodule$userinfo_account_administration$account_myfirstmodule$userinfo] ON [myfirstmodule$userinfo_account];
GO
EXEC sp_rename 'myfirstmodule$userinfo_account', '55c4fb0851dd48a2870c96f0d5681c5d';
GO
DROP INDEX [idx_myfirstmodule$userinfo_seikyuusaki_myfirstmodule$seikyuusaki_myfirstmodule$userinfo] ON [myfirstmodule$userinfo_seikyuusaki];
GO
EXEC sp_rename 'myfirstmodule$userinfo_seikyuusaki', '75855d877b1b40d09e68925426cdaa0c';
GO
DROP INDEX [idx_myfirstmodule$yusoukubun_system$owner] ON [myfirstmodule$yusoukubun];
GO
DROP INDEX [idx_myfirstmodule$yusoukubun_system$changedby] ON [myfirstmodule$yusoukubun];
GO
EXEC sp_rename 'myfirstmodule$yusoukubun', 'b38c5fdf681e4e0ea2405e99dc6f6a91';
GO
DROP INDEX [idx_myfirstmodule$zaikocommentkubun_system$owner] ON [myfirstmodule$zaikocommentkubun];
GO
DROP INDEX [idx_myfirstmodule$zaikocommentkubun_system$changedby] ON [myfirstmodule$zaikocommentkubun];
GO
EXEC sp_rename 'myfirstmodule$zaikocommentkubun', '2ee043cffb504e4d8db2e759e45d5913';
GO
DROP INDEX [idx_myfirstmodule$zaikokensakulog_system$changedby] ON [myfirstmodule$zaikokensakulog];
GO
DROP INDEX [idx_myfirstmodule$zaikokensakulog_system$owner] ON [myfirstmodule$zaikokensakulog];
GO
EXEC sp_rename 'myfirstmodule$zaikokensakulog', '37e29c022a894d9aa455127e59a29c77';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '7a039b91-bd88-4b4d-8c51-7227bde65889';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '7a039b91-bd88-4b4d-8c51-7227bde65889';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '7a039b91-bd88-4b4d-8c51-7227bde65889');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '7a039b91-bd88-4b4d-8c51-7227bde65889';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '24c9ec8b-8562-461a-acc9-5378188c864e';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '24c9ec8b-8562-461a-acc9-5378188c864e';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '24c9ec8b-8562-461a-acc9-5378188c864e');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '24c9ec8b-8562-461a-acc9-5378188c864e';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '24c9ec8b-8562-461a-acc9-5378188c864e';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('65721be3-8713-355a-8f4c-9e41fc5f1fab', 'c9383716-3079-3534-a3d9-9f753a00d9a5');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '34aff58b-b9d4-3004-aace-ee51c7937a16';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '53ef4039-fc69-3673-b900-d5748f69fed6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a34188fc-0315-4a80-ac25-b023dca58fff';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'cc9febfd-b2bc-4b12-b56d-26ed1b3a80b6';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'cc9febfd-b2bc-4b12-b56d-26ed1b3a80b6';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'cc9febfd-b2bc-4b12-b56d-26ed1b3a80b6');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'cc9febfd-b2bc-4b12-b56d-26ed1b3a80b6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'f33255d8-2d8d-431c-b6ee-3dc396444384';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '371db336-fc3f-44c0-91a2-9a325e5d5564';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '371db336-fc3f-44c0-91a2-9a325e5d5564';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '371db336-fc3f-44c0-91a2-9a325e5d5564');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '371db336-fc3f-44c0-91a2-9a325e5d5564';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'c5225142-8a23-4201-8725-e49249d00bcf';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'c5225142-8a23-4201-8725-e49249d00bcf';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'c5225142-8a23-4201-8725-e49249d00bcf');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'c5225142-8a23-4201-8725-e49249d00bcf';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'c5225142-8a23-4201-8725-e49249d00bcf';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('788ab911-9c1f-3dfe-9402-fc152638e39b', 'df8bf775-8796-3248-ae2a-641af997c8da');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '98c82cf3-e1cc-3106-958f-56a7fdf61c16';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b02079d5-5e31-3ae2-894e-b1e3aba95f5d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6ffe5c51-a352-44c3-a7c9-61cc8219fe84';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c85db2fc-f5eb-476b-83b2-e45bc3f1833e';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'b465a2ce-b401-4577-a947-aea230de07ae';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'b465a2ce-b401-4577-a947-aea230de07ae';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'b465a2ce-b401-4577-a947-aea230de07ae');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'b465a2ce-b401-4577-a947-aea230de07ae';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'b465a2ce-b401-4577-a947-aea230de07ae';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('4ec5b4b4-97af-3f7f-858a-bc540830d225', 'db0fd7c7-a276-30c7-ab60-8dac6e05aaaf');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '855800f8-11cd-3581-8754-66ec1cb2d134';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b3229233-cdf9-31d5-a2ca-bf86099dcaf6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '52649e15-ec28-4fd9-a64d-ec558b4a420b';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6f9f4764-4b29-4535-aa65-6b705bf3cab2';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'ad254c58-60cf-4bf6-b909-98be97d7963b';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'bcdd3629-ff4e-49e4-be4e-b5fec50a941c';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'bcdd3629-ff4e-49e4-be4e-b5fec50a941c';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'bcdd3629-ff4e-49e4-be4e-b5fec50a941c');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'bcdd3629-ff4e-49e4-be4e-b5fec50a941c';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'bcdd3629-ff4e-49e4-be4e-b5fec50a941c';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('0a70dd24-11c0-3018-ab71-2aa28aa6003e', '1a622856-29c4-3e74-af15-e907b803977c');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '144b3043-a8cd-3c5e-a131-f9893d343e07';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '51e6f66f-7903-3ea7-8c44-17136e9d6baf';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '92aa0bbd-d30c-4588-971d-f86869423723';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '92aa0bbd-d30c-4588-971d-f86869423723';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '92aa0bbd-d30c-4588-971d-f86869423723');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '92aa0bbd-d30c-4588-971d-f86869423723';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '92aa0bbd-d30c-4588-971d-f86869423723';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('415db4f8-3912-3a3d-8a15-59a4541e9c0d', 'e3503ec6-a44a-39e0-9e29-59f36507831d');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a0e6e4b0-e34b-3c98-b316-f0a862042104';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a4d11104-c5d9-3967-b334-be05777c8f34';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '30f43f27-6abd-4b56-8b00-ea3ccd3c33b1';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '32dde755-7f7c-456f-b918-cbc046c809c7';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '36652f7d-7339-4410-974e-4055bb4e9ed9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '562cef77-3cd9-4e62-86a1-d96bc98f3a93';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '67e57442-2c19-4556-9b0d-37df6ac4dac6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8ad27b0b-a5c9-45d9-9be5-115ea6cbcaa6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b609abf7-60fb-4f7f-8038-7df3e2d01e77';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '8d457dd4-88dc-42fb-8a58-1a6184b3f849';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '8d457dd4-88dc-42fb-8a58-1a6184b3f849';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '8d457dd4-88dc-42fb-8a58-1a6184b3f849');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '8d457dd4-88dc-42fb-8a58-1a6184b3f849';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '8d457dd4-88dc-42fb-8a58-1a6184b3f849';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('59f9e7a9-12bf-3053-98f2-316af2612283', 'c22f9f15-32a7-3526-9f21-e23b927fee58');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '07f53e53-502a-331e-9387-57f7d966c510';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '93ed38b2-4b39-3189-9073-06ddf0ab55cb';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8ab23054-b8e2-4425-8da8-2bb17530db8e';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '6328c2fd-bd30-4704-854e-9f941c94fcf8';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '6328c2fd-bd30-4704-854e-9f941c94fcf8';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '6328c2fd-bd30-4704-854e-9f941c94fcf8');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '6328c2fd-bd30-4704-854e-9f941c94fcf8';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '6328c2fd-bd30-4704-854e-9f941c94fcf8';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('40cd54d5-91c5-3d6f-ba5b-c176635ae8f9', 'a3535e95-dfdc-3eae-8e11-1ed8d7e64d2f');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '05b863e9-5453-34d1-9bff-07023c372587';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '63d5bbd0-47d4-37b3-8057-d7d99475d49a';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '01df4e24-9949-4ac5-8927-64a282480d92';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '264eaec3-ed9b-47f5-a3b6-8557e8c4cc9c';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '862ee14f-b4f9-4f22-8e77-0065fdb6d0ab';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8c8b8856-3551-43f1-bb60-7e315bd420ef';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b7bd8f03-cc65-4bf8-92d9-2568a9020a69';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '53d9051f-a87f-416f-b116-be8f34463401';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '53d9051f-a87f-416f-b116-be8f34463401';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '53d9051f-a87f-416f-b116-be8f34463401');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '53d9051f-a87f-416f-b116-be8f34463401';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '53d9051f-a87f-416f-b116-be8f34463401';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('26374fef-9762-3d08-b58f-3916d9039db4', '4c815d83-66ea-3907-88b6-922ad8deba40');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '3d0cda3c-6387-3133-b4f6-20c648f8c6e0';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '47857367-40be-3d9d-b90a-26a9a6a85f7b';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '052a8b5d-61ec-4e41-854a-e4832abb1e21';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2a154713-8c8c-495a-b94e-3773d9dd1b43';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'eedf4346-8bc3-47ea-bfa7-a019ab9509f9';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'adf3e47b-5fb2-4346-882f-d0045e390caf';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'adf3e47b-5fb2-4346-882f-d0045e390caf';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'adf3e47b-5fb2-4346-882f-d0045e390caf');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'adf3e47b-5fb2-4346-882f-d0045e390caf';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'adf3e47b-5fb2-4346-882f-d0045e390caf';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('22a0ea83-09b9-3114-9ca3-53a28e7336bd', '4f608d54-1838-35a7-8e5a-b247b96100f3');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2c551405-3b5f-3c5f-8c32-6a62e32dfd96';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a46c2508-5455-364d-919d-281289e93c29';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '81d26b5a-0d2a-4c42-ab22-0230763c2c40';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'f6b3d727-272e-4b9e-ae06-0a2cd3395e66';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'fd6b245c-3a99-46fc-9f6e-305cc7c8c3f4';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '43a98e18-d656-42a4-8a1e-68b14815bc24';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '43a98e18-d656-42a4-8a1e-68b14815bc24';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '43a98e18-d656-42a4-8a1e-68b14815bc24');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '43a98e18-d656-42a4-8a1e-68b14815bc24';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '43a98e18-d656-42a4-8a1e-68b14815bc24';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('11bcdc69-147d-33d1-88c6-8acec4cab4eb', '7c42aff8-fa86-39a3-aed9-11dfb1df8591');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8fa9f1e9-529b-39af-bd8f-d4a8f7a4786e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'cec5cf89-a372-3297-994d-ca59b7852536';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8f8954d7-0127-49da-af84-5d1c352cd985';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'cdc775e4-b269-486f-b11a-aa26e4757be0';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '73623089-f353-4ada-9729-ec46544bccbe';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '73623089-f353-4ada-9729-ec46544bccbe';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '73623089-f353-4ada-9729-ec46544bccbe');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '73623089-f353-4ada-9729-ec46544bccbe';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '73623089-f353-4ada-9729-ec46544bccbe';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('7e966692-52b6-3054-bbb4-44c35b304695', 'd9fc7634-c929-3cec-a360-4444b4dc3915');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2943cb13-71fd-32a0-8778-526aac127a62';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd9f586f0-c2f5-3afd-8fb1-06b099a7056b';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'bcdde519-7d81-4749-83b2-cb936339acc7';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'bcdde519-7d81-4749-83b2-cb936339acc7';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'bcdde519-7d81-4749-83b2-cb936339acc7');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'bcdde519-7d81-4749-83b2-cb936339acc7';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'bcdde519-7d81-4749-83b2-cb936339acc7';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('052d6864-eea7-3a79-9f40-0f227c706a8e', '20caa166-f622-367a-9fbf-1c3de8333ffe');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a2655b0e-fa2e-3469-8bd5-21be77671218';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b2cbed52-8668-3b3c-939e-6daec664b483';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '53a8c368-94a9-4a10-b616-4f2a92011781';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '15c85478-d1af-4f01-87e7-176881117aee';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '15c85478-d1af-4f01-87e7-176881117aee';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '15c85478-d1af-4f01-87e7-176881117aee');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '15c85478-d1af-4f01-87e7-176881117aee';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '15c85478-d1af-4f01-87e7-176881117aee';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('722668d6-7a23-3e16-bf67-93dde41cd5de', '7472f706-5774-3b79-87e3-6004352712c6');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '45189e94-20ab-3ac2-b298-7d7925004cc4';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6f36ed68-4101-303c-a07b-fa3dd3f7e87f';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '5567da9d-e127-496c-bc36-3bd110187485';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '34bdf469-aca0-4637-ba54-3735830e5600';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '34bdf469-aca0-4637-ba54-3735830e5600';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '34bdf469-aca0-4637-ba54-3735830e5600');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '34bdf469-aca0-4637-ba54-3735830e5600';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '34bdf469-aca0-4637-ba54-3735830e5600';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('38d161f1-8650-3e2e-91db-3ce3d455e47c', '8ba78f11-26f6-3201-9380-fba10c4afcb9');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '06eb36af-389a-3739-a439-5d177f55b931';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '760e748b-e9b4-34a9-af40-3af23f0532dc';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'c7c00434-e8a6-4701-9dc9-3d8cec1ba0be';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'c7c00434-e8a6-4701-9dc9-3d8cec1ba0be';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'c7c00434-e8a6-4701-9dc9-3d8cec1ba0be');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'c7c00434-e8a6-4701-9dc9-3d8cec1ba0be';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'c7c00434-e8a6-4701-9dc9-3d8cec1ba0be';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('7d394ed8-65e9-35ab-865f-a31b4b09a2f5', '94069a65-32d7-39a2-af7f-e3d2fbb05140');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '371d4918-e944-37df-b11f-3c73c8d856d7';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'bcdeafbe-a109-3b3d-b7a6-988109906690';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '907de89f-7fea-4e39-a8f6-1601160e840f';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'a0293b50-ee84-495f-aa0c-c63f475b8e3a';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'a0293b50-ee84-495f-aa0c-c63f475b8e3a';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'a0293b50-ee84-495f-aa0c-c63f475b8e3a');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'a0293b50-ee84-495f-aa0c-c63f475b8e3a';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'a0293b50-ee84-495f-aa0c-c63f475b8e3a';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('07f76860-11c7-3085-9d30-29bf395afd26', '22106153-eb6c-3e67-878e-6867f7f0cb1a');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '43f7f11c-9479-3bd0-892f-2c242bf73f48';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'ee45f96f-8634-3098-9681-7aee36fc64ce';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6245c7f8-87a0-4488-8b41-41428fc79bdd';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '0b0a333a-5e63-4beb-a6fb-c820b3391d10';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '0b0a333a-5e63-4beb-a6fb-c820b3391d10';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '0b0a333a-5e63-4beb-a6fb-c820b3391d10');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '0b0a333a-5e63-4beb-a6fb-c820b3391d10';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '0b0a333a-5e63-4beb-a6fb-c820b3391d10';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('2dfde5a2-8561-383d-8a87-728427fd36ea', 'ab1225de-1a70-371e-852c-aefb04b62ce5');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '5ded3538-f408-3210-acb1-8a39be31afa3';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'da8ede86-fe3a-358b-880f-93be375de44f';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '26c09ada-7523-4924-9e69-86fc3463bafc';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '26c09ada-7523-4924-9e69-86fc3463bafc';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '26c09ada-7523-4924-9e69-86fc3463bafc');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '26c09ada-7523-4924-9e69-86fc3463bafc';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '26c09ada-7523-4924-9e69-86fc3463bafc';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('19fcdb17-7c5c-3b8e-9093-592a001796d7', 'fe1d4a97-ba3a-3585-8a8e-096369527239');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8848f481-6ab0-3261-8e59-559b925f5179';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a96f1747-e382-3580-b704-e7b0320b8c9a';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '5d4953e4-5fa3-4e6f-aeef-a570a73fc97f';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd948fac9-9453-4d0a-b561-34be9a3eeb4f';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '94caac27-caa0-4290-8316-9215fe8a4ac8';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '94caac27-caa0-4290-8316-9215fe8a4ac8';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '94caac27-caa0-4290-8316-9215fe8a4ac8');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '94caac27-caa0-4290-8316-9215fe8a4ac8';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '94caac27-caa0-4290-8316-9215fe8a4ac8';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('056a938c-f3bd-3d27-89ed-b0b72496df7e', '66e842d1-2acd-30ff-a879-6ee41f8192f4', 'cb9fa385-a89b-4d99-8f48-61da1c00b756');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a24b4433-3726-30c4-9142-cb6479cba263';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'cf527f84-14fb-3edf-9107-26b4876f7c95';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a61182b4-45ee-42f9-b721-31cf637fe4f4';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a710958c-4cb5-461c-8033-140c17379e0b';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '76784b1e-3db8-4f0a-a66b-ec458c3354d8';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '76784b1e-3db8-4f0a-a66b-ec458c3354d8';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '76784b1e-3db8-4f0a-a66b-ec458c3354d8');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '76784b1e-3db8-4f0a-a66b-ec458c3354d8';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '76784b1e-3db8-4f0a-a66b-ec458c3354d8';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('2696dcaa-8e98-37be-9784-3e550a5a7aae', '91d46d5c-c0fb-3d4a-82cb-1e194f62a969');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c20a32d6-7bd3-330e-88b3-b286ed417244';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd80ff463-d980-3f04-882a-276b56b2957d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '83931550-e3ff-4caf-a524-e3d868aa25fb';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '381a409f-e18e-4d32-a413-06f44370c347';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '381a409f-e18e-4d32-a413-06f44370c347';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '381a409f-e18e-4d32-a413-06f44370c347');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '381a409f-e18e-4d32-a413-06f44370c347';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '381a409f-e18e-4d32-a413-06f44370c347';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('bab0b570-7ab5-38a0-9cea-e8f2653cee99', 'd2ff3c76-0fa3-3755-b20d-560e722162a5');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b2ee6d26-ee68-38cb-b062-1d810488621e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c3a51e84-abb0-3ae4-8c25-70edc2dd50b4';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'dd06d2cf-9f0f-4a1a-9ba8-78064807846b';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'dd06d2cf-9f0f-4a1a-9ba8-78064807846b';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'dd06d2cf-9f0f-4a1a-9ba8-78064807846b');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'dd06d2cf-9f0f-4a1a-9ba8-78064807846b';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'f38c77a4-10f1-4c15-9587-f1c4cabde987';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '8b425bff-69e9-4422-af5b-7300bef07c7d';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '8b425bff-69e9-4422-af5b-7300bef07c7d';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '8b425bff-69e9-4422-af5b-7300bef07c7d');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '8b425bff-69e9-4422-af5b-7300bef07c7d';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '8b425bff-69e9-4422-af5b-7300bef07c7d';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('7e84e6ea-cf33-3043-b8f0-0c3f714cd598', '90b493c7-b3f6-3117-b278-afadfae6b01c');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '73427cec-6826-3f05-801e-46b87908dc53';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'f69a7f76-8d95-3a2a-ab67-8984c693ad12';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'dba8902b-7214-4866-93b7-091fcb3daefe';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'dba8902b-7214-4866-93b7-091fcb3daefe';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'dba8902b-7214-4866-93b7-091fcb3daefe');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'dba8902b-7214-4866-93b7-091fcb3daefe';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'dba8902b-7214-4866-93b7-091fcb3daefe';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('18510906-7f2f-3d66-8faf-3749735110e1', 'c6a761e3-5c2b-35ab-86f1-51535d8da2c8');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '015b419c-9da7-3f57-b592-c04c8b327e2d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c2ab0a11-b29f-3d68-8fc4-bb43a9b3b904';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '27c68a9e-56ae-401a-905b-938505a5e04e';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '27c68a9e-56ae-401a-905b-938505a5e04e';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '27c68a9e-56ae-401a-905b-938505a5e04e');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '27c68a9e-56ae-401a-905b-938505a5e04e';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '27c68a9e-56ae-401a-905b-938505a5e04e';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('24e48b8c-5904-3492-ab89-a41bfaf90183', 'd2cf42ce-3170-3eb3-9271-96fe67794fff');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b71b77d5-d00f-3df3-b174-dc88b16633fc';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'df5919c7-e753-353a-9647-fc98e2cb24c5';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '87bb7f0c-44a6-4b46-94b2-4ffedac5506e';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '87bb7f0c-44a6-4b46-94b2-4ffedac5506e';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '87bb7f0c-44a6-4b46-94b2-4ffedac5506e');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '87bb7f0c-44a6-4b46-94b2-4ffedac5506e';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '87bb7f0c-44a6-4b46-94b2-4ffedac5506e';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('04265790-1a68-363b-8164-5c9cc1853aec', 'fd0ac520-dc18-3566-b541-f38c951020b0');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b5f6dbd4-5850-3fe1-b4c1-cad99bff79b9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd1fc9b5a-cc01-3357-b411-e0c0be114145';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'fe332321-1793-4388-b03e-dfba3bb2ba16';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'fe332321-1793-4388-b03e-dfba3bb2ba16';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'fe332321-1793-4388-b03e-dfba3bb2ba16');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'fe332321-1793-4388-b03e-dfba3bb2ba16';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'fe332321-1793-4388-b03e-dfba3bb2ba16';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('aaa209e0-b4ca-36a2-a795-fac4d1c33153', 'c1471ef7-2deb-395c-b694-0a4a927329a3');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b4a3b3bc-f2a7-3f2e-b6c3-38244dccda1a';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'f4b721b4-d1be-3378-9bbd-0b5cd21229e1';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '399ad609-eaa1-4caf-9eed-cc1e998b49c5';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8304462f-2563-438f-834a-af2ac1f36baa';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8eccb468-b8af-4c56-bf58-25ecc5ee1507';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '95f7f01c-8e4f-4943-814d-568e3aaf2da6';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '6343b9c0-a253-4955-b1d4-7e924163353e';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '6343b9c0-a253-4955-b1d4-7e924163353e';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '6343b9c0-a253-4955-b1d4-7e924163353e');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '6343b9c0-a253-4955-b1d4-7e924163353e';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '6343b9c0-a253-4955-b1d4-7e924163353e';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('c07c0cf6-4ee3-369a-babb-9331893149d2', 'fefa261c-1a16-3c9b-9583-ec5b06d3ff20');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '821c7ec8-9018-3dce-8c0e-253e837a2860';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a0c1c58e-6886-3e75-aba3-515b02f21358';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '586d03e4-8481-4918-86b6-e2d04643a3f2';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'bdb8354d-a94c-4469-acbd-5d6b4a445d11';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'bdb8354d-a94c-4469-acbd-5d6b4a445d11';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'bdb8354d-a94c-4469-acbd-5d6b4a445d11');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'bdb8354d-a94c-4469-acbd-5d6b4a445d11';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'bdb8354d-a94c-4469-acbd-5d6b4a445d11';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('8da0cd2e-b51d-3451-919c-6f393238b7ac', 'f0dc0580-e638-3384-b182-577a4af82c19');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'ac4b6bf9-2a81-3d83-8e02-af6c635fb90a';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'ff303fde-7706-3d76-9887-250b202d67ea';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2a6da257-8a9b-40fb-87a0-ec35a5c070d0';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '63e04b71-fd0c-4beb-9881-83773f21ca3d';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '257f48dc-e4cc-457f-b10d-7e7e51b114f3';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '257f48dc-e4cc-457f-b10d-7e7e51b114f3';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '257f48dc-e4cc-457f-b10d-7e7e51b114f3');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '257f48dc-e4cc-457f-b10d-7e7e51b114f3';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '257f48dc-e4cc-457f-b10d-7e7e51b114f3';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('f8c6cd87-166e-3f73-a26b-9d8c1114e10c');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '14acd6c2-3151-32b1-b88b-298db51d7e9e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '11d327bc-c35a-423e-9b8b-b57ff7f7d3fa';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '63a63167-1cb1-4ff7-952e-5cbf4e8cad5c';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6c9f7cc0-6291-4a21-9ed0-dd439fad7e7c';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '84489b38-3357-467f-ac3c-a98cef63e229';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '99341947-e034-459c-9001-891380c6cc47';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b160bb04-e225-47b3-b847-0275d9b1f5ee';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'cf524ab7-c393-46cf-96dd-59d7cc11fda6';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd3932af3-a2e0-47a0-a33a-48a94523e49f';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '02f59c6f-533a-4d95-96a3-7c6658ff713f';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '02f59c6f-533a-4d95-96a3-7c6658ff713f';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '02f59c6f-533a-4d95-96a3-7c6658ff713f');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '02f59c6f-533a-4d95-96a3-7c6658ff713f';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '02f59c6f-533a-4d95-96a3-7c6658ff713f';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('2f8088b5-1b7f-3459-a03f-4e0447d1ca9e', '4174aef4-7080-32c3-a902-7a788956dca6');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '43e8f304-d229-37b8-91ed-f05089516429';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd240e699-eab3-3e2f-83aa-abf5b0d1dd09';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd132bc6b-c3d7-4988-a4f5-e28b9802390b';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'd6c57d4a-9a58-45aa-b2f4-5de36a863c71';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'd6c57d4a-9a58-45aa-b2f4-5de36a863c71';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'd6c57d4a-9a58-45aa-b2f4-5de36a863c71');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'd6c57d4a-9a58-45aa-b2f4-5de36a863c71';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'd6c57d4a-9a58-45aa-b2f4-5de36a863c71';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('5dd346ed-c122-300d-9113-96dd164e42d6', 'b39450a4-1290-33f1-9cdd-826781cc15e0');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6a971c02-060d-3553-a2fb-8253020d96bb';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '71944dec-d29b-3f99-9ef3-f947056f5fbd';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'beaaefdc-1a29-4c0c-b508-367d26859ae4';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'beaaefdc-1a29-4c0c-b508-367d26859ae4';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'beaaefdc-1a29-4c0c-b508-367d26859ae4');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'beaaefdc-1a29-4c0c-b508-367d26859ae4';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'beaaefdc-1a29-4c0c-b508-367d26859ae4';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('4515bfee-fa1f-3790-afa2-819f6da3e902', 'f322d8f3-20a6-31d5-92e1-e13213e34d81');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6915bd5b-2a7d-3171-963c-14e74ab475b7';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'fcedbc6f-4b1f-33e4-8cdd-95bd08679723';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b5f59322-361f-4766-9383-9c2c273ccf7e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'e0d07a24-7f87-47b9-ab3d-3c42cee58485';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '732d3050-227a-4885-a992-5f5ca1411995';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '732d3050-227a-4885-a992-5f5ca1411995';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '732d3050-227a-4885-a992-5f5ca1411995');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '732d3050-227a-4885-a992-5f5ca1411995';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '732d3050-227a-4885-a992-5f5ca1411995';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('554292bf-43b1-384c-ae4b-09670e032a05', '564df761-a4c2-3ccc-a469-81945cf970a2');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '43b3de5f-7cdf-32d1-82fd-b2ea72ea800b';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'aca49ef1-323b-3786-97a0-d2befe7558f7';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'f16f28cb-db99-4182-becc-3092a4e931b4';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'f16f28cb-db99-4182-becc-3092a4e931b4';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'f16f28cb-db99-4182-becc-3092a4e931b4');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'f16f28cb-db99-4182-becc-3092a4e931b4';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'f16f28cb-db99-4182-becc-3092a4e931b4';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('ab17334b-db96-36bc-9695-2695e5fd69bd', 'be00e3eb-4032-3836-a7bc-180f40c51e25');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2433d8d9-6a28-30fc-ac07-5229fc51f861';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c0824e02-8b47-35a3-adf4-3acc8f46d543';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '54595230-1c82-4f03-b5a1-876214f057d3';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '54595230-1c82-4f03-b5a1-876214f057d3';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '54595230-1c82-4f03-b5a1-876214f057d3');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '54595230-1c82-4f03-b5a1-876214f057d3';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '54595230-1c82-4f03-b5a1-876214f057d3';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('47d7fc57-c6fd-3aad-a094-84aa3901eb79', 'c7d84c25-60b9-3f9e-8176-9615d5b69a65');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'cdc61083-7848-32b2-a803-92e4839c651d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'd41863fa-45f1-3163-a68f-d24cf2cd0758';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '9cc52044-532c-4cbf-9a54-a36b1f892e67';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '9cc52044-532c-4cbf-9a54-a36b1f892e67';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '9cc52044-532c-4cbf-9a54-a36b1f892e67');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '9cc52044-532c-4cbf-9a54-a36b1f892e67';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '9cc52044-532c-4cbf-9a54-a36b1f892e67';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('bb53d770-c35d-3153-b103-da9f57a979a7', 'd1202bd0-f2ba-397b-a4a6-9c7f9f6998f8');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '030cf23d-a3ad-3d33-be65-4010f1c2a1ba';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '094d568b-6cdc-319a-a02e-cd0b96facf05';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '77e47637-bff1-4746-8a63-1b58fdca04a0';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '22b075e9-1e82-4bbf-a684-3a40c246320d';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '22b075e9-1e82-4bbf-a684-3a40c246320d';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '22b075e9-1e82-4bbf-a684-3a40c246320d');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '22b075e9-1e82-4bbf-a684-3a40c246320d';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '22b075e9-1e82-4bbf-a684-3a40c246320d';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('143ad7c5-ace8-34f2-8b1f-9dde18e06121', 'd3e24802-c79b-393d-9377-3bd87be14b4e');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '7af05234-557d-3e60-8c16-d91f9ba96d81';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c7897dc7-ac5b-35d5-9799-3d436725a077';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '7cb8a135-a2d6-4c88-b37c-0a84adc4a6c4';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '902d219d-cc5f-42db-b233-cf594f303948';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '383854ee-e56d-4e0a-b3c3-79304d4a300a';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '383854ee-e56d-4e0a-b3c3-79304d4a300a';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '383854ee-e56d-4e0a-b3c3-79304d4a300a');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '383854ee-e56d-4e0a-b3c3-79304d4a300a';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '383854ee-e56d-4e0a-b3c3-79304d4a300a';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('50396572-d4d1-3b40-9bcf-c13336417171', '6f316fc6-3434-3ee2-86af-91f15c767282');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '1e444fa7-8339-33d4-9726-faa374af5b08';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '59c87f53-34e1-3843-84a1-299fc17a3b4d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '36e0ba8d-e169-43a1-b00e-ca1dfbf57fd0';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '9a29aa0b-2462-4106-9ffa-238df7f7e42d';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a2e61ce1-9eca-4b18-ad12-34d2f69c187e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'e7498c55-b821-4587-a24a-0527c7a59938';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '425143ec-ed70-44ac-a7ff-bdb11970d6c1';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '425143ec-ed70-44ac-a7ff-bdb11970d6c1';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '425143ec-ed70-44ac-a7ff-bdb11970d6c1');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '425143ec-ed70-44ac-a7ff-bdb11970d6c1';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '425143ec-ed70-44ac-a7ff-bdb11970d6c1';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('016e55b8-3fd2-31c6-b3ea-fb4d4fce0237', '370253f1-d37f-3eca-9b96-8ae3c6aa9094');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '0d91679d-50bd-3b0b-8ae6-a00264882ab9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'efc8abbc-0ed6-398a-8c77-c818b248ddae';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'a9394736-d982-4c36-8563-0bf3b5551e66';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c2569eef-005c-41c9-b5f7-a5a113b6bdaa';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '57a095d2-1352-4f25-8715-600cd09ebdd5';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '57a095d2-1352-4f25-8715-600cd09ebdd5';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '57a095d2-1352-4f25-8715-600cd09ebdd5');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '57a095d2-1352-4f25-8715-600cd09ebdd5';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '57a095d2-1352-4f25-8715-600cd09ebdd5';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('3137d9e4-439c-398b-bb7e-e603bb253a81', 'd7279d97-a928-3615-9995-b93613538eb8');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '4965200d-d238-388b-9400-dc4f6b72b240';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '5f87c4ad-c8be-3ee3-94da-c3fbf970ac61';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '1788f390-552a-4d81-9616-58b157351257';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'f5a93054-b349-41b2-b0c8-38fadb4a806c';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'f5a93054-b349-41b2-b0c8-38fadb4a806c';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'f5a93054-b349-41b2-b0c8-38fadb4a806c');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'f5a93054-b349-41b2-b0c8-38fadb4a806c';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'f5a93054-b349-41b2-b0c8-38fadb4a806c';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('45247f31-9a33-3a68-ab03-8ee2922d4f78', '7c6136c4-0d2d-30b7-b02a-32496d3fa14d');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '57ef9d1a-5082-3f29-8646-2242610c5ae9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'b44e8745-ac9e-32ca-9f7e-ade2c8317ef5';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '441c0b9d-0305-4ded-87cb-c87592b22aef';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '6d1fc58c-9092-469b-9a99-b402d8a1c1bf';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '1d97cd10-225b-4a40-a05c-d6aa646ed4ae';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '1d97cd10-225b-4a40-a05c-d6aa646ed4ae';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '1d97cd10-225b-4a40-a05c-d6aa646ed4ae');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '1d97cd10-225b-4a40-a05c-d6aa646ed4ae';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '1d97cd10-225b-4a40-a05c-d6aa646ed4ae';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('5d2c7d9e-13c7-3371-bf36-2cab4d6f9983', '97a90d1d-6b01-3f87-b32e-7a53dc2e1ac6');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '7a58ce64-00ee-36ed-b3fd-72d9451b41b9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8750abbd-e194-31f6-961f-2439daea7a62';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '2f332a8c-a0d5-4f2e-89f4-1403c1802ff0';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '896526a8-8a6b-4d18-9458-41fa9b14b9fd';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'ae7b68cd-b63d-4bce-8980-c0dd2f67d3f3';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '0e6eea74-4d82-48f8-877a-243efb27537d';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '0e6eea74-4d82-48f8-877a-243efb27537d';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '0e6eea74-4d82-48f8-877a-243efb27537d');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '0e6eea74-4d82-48f8-877a-243efb27537d';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '0e6eea74-4d82-48f8-877a-243efb27537d';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('a15dc4cd-32d1-3374-8ca8-b9bdc5036de1', 'ba816f9c-f815-309b-95c1-dafde896b542');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '773e51c2-6ea4-3577-9264-20c74b995b22';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '902e56ac-9055-3fe1-b1ea-00425b5cab5b';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '60ad1df8-2408-4f47-8804-496a2ee0066e';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'ebe0d102-a1a4-4ccc-86bc-7d72fd9380ce';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'ebe0d102-a1a4-4ccc-86bc-7d72fd9380ce';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'ebe0d102-a1a4-4ccc-86bc-7d72fd9380ce');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'ebe0d102-a1a4-4ccc-86bc-7d72fd9380ce';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'ebe0d102-a1a4-4ccc-86bc-7d72fd9380ce';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('28a0f673-75e5-3eca-b047-ef146c19a285', 'c8246e65-4c28-3d05-b8b9-a81c650af94a');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '5692b101-e4cb-3cbb-8ad8-84e366577b9f';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c2dd5c2a-a1f9-3fb1-bab8-22de2d893e02';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '4315e309-8633-4890-9d73-cd33e9b34714';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '4315e309-8633-4890-9d73-cd33e9b34714';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '4315e309-8633-4890-9d73-cd33e9b34714');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '4315e309-8633-4890-9d73-cd33e9b34714';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '4315e309-8633-4890-9d73-cd33e9b34714';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('af4bbe5c-5d46-3572-a557-79fc1cf1ed61', 'c45320ab-9214-3916-b625-40eec88b9be6');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '1828c4fd-bea0-3cb5-9c65-4be840bff37e';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'bb9fae11-74f5-3923-9d2a-daa65c11fbef';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'dd8499e8-0ac1-43a5-ae05-2491296a4e56';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'e5c2e3a7-7682-4524-842c-1477e80ec660';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '8c56668a-1175-429c-88da-cf7033729059';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '8c56668a-1175-429c-88da-cf7033729059';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '8c56668a-1175-429c-88da-cf7033729059');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '8c56668a-1175-429c-88da-cf7033729059';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '8c56668a-1175-429c-88da-cf7033729059';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('719bac22-3b25-3f2b-bfcc-d0885e63385b', 'b27a9b95-9f30-3c58-88ee-e64ae17a231c');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '8f2dbd82-70d0-30b2-b54a-58a91d12c1da';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'fa7dfcf4-287d-3e34-ba29-452808f559c0';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = 'f862d66a-8cc7-44ed-a37d-b4e6d97c7c0d';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = 'f862d66a-8cc7-44ed-a37d-b4e6d97c7c0d';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = 'f862d66a-8cc7-44ed-a37d-b4e6d97c7c0d');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = 'f862d66a-8cc7-44ed-a37d-b4e6d97c7c0d';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = 'f862d66a-8cc7-44ed-a37d-b4e6d97c7c0d';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('183d23a6-b72a-38b6-9a95-5fd094a287f1', '278dce8b-716a-3285-b9c0-bb1f2b468c8d');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '14ec28ea-932b-3c56-95a8-c3ec82328ba9';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '3865dbb6-39e6-3496-859c-c67fa5594ffe';
GO
DELETE FROM [mendixsystem$entity] 
 WHERE [id] = '849f02e0-68a7-4445-be3d-6707ae91fb2f';
GO
DELETE FROM [mendixsystem$entityidentifier] 
 WHERE [id] = '849f02e0-68a7-4445-be3d-6707ae91fb2f';
GO
DELETE FROM [mendixsystem$sequence] 
 WHERE [attribute_id] IN (SELECT [id]
 FROM [mendixsystem$attribute]
 WHERE [entity_id] = '849f02e0-68a7-4445-be3d-6707ae91fb2f');
GO
DELETE FROM [mendixsystem$attribute] 
 WHERE [entity_id] = '849f02e0-68a7-4445-be3d-6707ae91fb2f';
GO
DELETE FROM [mendixsystem$index] 
 WHERE [table_id] = '849f02e0-68a7-4445-be3d-6707ae91fb2f';
GO
DELETE FROM [mendixsystem$index_column] 
 WHERE [index_id] IN ('e4b01251-f9fe-30ac-ac84-c8915d8e13cb', 'fbcca712-62e7-3c4a-80e6-d99d639f3867');
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = '1abee684-f4e7-3df6-908d-0ca47a98c201';
GO
DELETE FROM [mendixsystem$association] 
 WHERE [id] = 'c03627ed-a3f4-35f0-816c-a08136f7f8ba';
GO
CREATE TABLE [myfirstmodule$test3] (
	[id] bigint NOT NULL,
	[cd] nvarchar(200) NULL,
	[changeddate] datetime2(3) NULL,
	[createddate] datetime2(3) NULL,
	[name] nvarchar(200) NULL,
	[system$owner] bigint NULL,
	[system$changedby] bigint NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_myfirstmodule$test3_system$owner] ON [myfirstmodule$test3] ([system$owner],[id]);
GO
CREATE INDEX [idx_myfirstmodule$test3_system$changedby] ON [myfirstmodule$test3] ([system$changedby],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'MyFirstModule.Test3', 
'myfirstmodule$test3');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9ec5cfc6-d3f0-4909-8347-246f909055dc', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'Cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4c0650fe-69f7-3f17-8f41-432775d4d0dd', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'changedDate', 
'changeddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a40aae6b-4f40-33a6-ac36-247dda31288d', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('e90eaeb0-f2a4-442e-bd63-454bd8e00803', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('8c1ea014-afa4-394d-9465-0ef7d69ae941', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'idx_myfirstmodule$test3_system$owner');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('8c1ea014-afa4-394d-9465-0ef7d69ae941', 
'c2ebf1d0-bb1d-3e13-9f7d-af1bfbfaed06', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('167f4e8e-fc8a-3a12-9dd7-ae291464045a', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'idx_myfirstmodule$test3_system$changedby');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('167f4e8e-fc8a-3a12-9dd7-ae291464045a', 
'c977ef2b-937d-3507-b753-3b291b520bb0', 
0, 
0);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('c2ebf1d0-bb1d-3e13-9f7d-af1bfbfaed06', 
'System.owner', 
'system$owner', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('c977ef2b-937d-3507-b753-3b291b520bb0', 
'System.changedBy', 
'system$changedby', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
GO
CREATE TABLE [myfirstmodule$test2] (
	[id] bigint NOT NULL,
	[flg] nvarchar(6) NULL,
	[cd] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('8826764b-327c-4887-a960-dc44b6ff14a4', 
'MyFirstModule.Test2', 
'myfirstmodule$test2');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('80657e17-c7d6-4c87-9f29-d9432830053f', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Flg', 
'flg', 
40, 
6, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('24c9fecc-905a-4181-8736-f4d0f6e270b8', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('de262bd0-6b02-48f6-bc57-41986ef5561c', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$test] (
	[id] bigint NOT NULL,
	[cd] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'MyFirstModule.Test', 
'myfirstmodule$test');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4de01dc3-bda7-452f-9643-34e79f2dc615', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('24643c6c-e193-4edd-b9f9-8c3467521123', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$test_user] (
	[myfirstmodule$testid] bigint NOT NULL,
	[system$userid] bigint NOT NULL,
	PRIMARY KEY([myfirstmodule$testid],[system$userid]));
GO
CREATE INDEX [idx_myfirstmodule$test_user_system$user_myfirstmodule$test] ON [myfirstmodule$test_user] ([system$userid],[myfirstmodule$testid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('efd32f95-5dbc-415e-8164-8a7793164d94', 
'MyFirstModule.Test_User', 
'myfirstmodule$test_user', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'myfirstmodule$testid', 
'system$userid', 
'idx_myfirstmodule$test_user_system$user_myfirstmodule$test');
GO
CREATE TABLE [restservices$changeitem] (
	[id] bigint NOT NULL,
	[isdeleted] bit NULL,
	[etag] nvarchar(200) NULL,
	[sequencenr] bigint NULL,
	[_isdirty] bit NULL,
	[json] nvarchar(max) NULL,
	[key] nvarchar(400) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_restservices$changeitem_key] ON [restservices$changeitem] ([key],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_isdeleted] ON [restservices$changeitem] ([isdeleted],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_sequencenr] ON [restservices$changeitem] ([sequencenr],[id]);
GO
CREATE INDEX [idx_restservices$changeitem__isdirty] ON [restservices$changeitem] ([_isdirty],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_key_isdeleted__isdirty] ON [restservices$changeitem] ([key],[isdeleted],[_isdirty],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('a63532b3-98e3-4b68-81fb-1266f64c9335', 
'RestServices.ChangeItem', 
'restservices$changeitem');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('883872e1-3395-4321-90e4-7ca4ec4b4699', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'IsDeleted', 
'isdeleted', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('06808527-b9b8-4687-805d-4cdbd6bdbe94', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Etag', 
'etag', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('513f915e-d7fb-4b0f-800e-197e7174d0aa', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a4db9e0a-0414-4bac-9186-5ecad941b51d', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'_IsDirty', 
'_isdirty', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('1f44a99d-8279-47ca-8c40-b3efe93493fb', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Json', 
'json', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('50ee12bc-0520-4421-b1c0-27bd2f603f55', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Key', 
'key', 
30, 
400, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('e4508af9-c10c-4d9f-9311-c881ad12756a', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_key');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('e4508af9-c10c-4d9f-9311-c881ad12756a', 
'50ee12bc-0520-4421-b1c0-27bd2f603f55', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('3940d3b9-58c4-45f7-821c-26555499c838', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_isdeleted');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('3940d3b9-58c4-45f7-821c-26555499c838', 
'883872e1-3395-4321-90e4-7ca4ec4b4699', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('705914b0-a288-47d7-8838-e5f0dece8588', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_sequencenr');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('705914b0-a288-47d7-8838-e5f0dece8588', 
'513f915e-d7fb-4b0f-800e-197e7174d0aa', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('980111cf-2744-410d-a9ff-0237ad590ed9', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem__isdirty');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('980111cf-2744-410d-a9ff-0237ad590ed9', 
'a4db9e0a-0414-4bac-9186-5ecad941b51d', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_key_isdeleted__isdirty');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'50ee12bc-0520-4421-b1c0-27bd2f603f55', 
0, 
0);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'883872e1-3395-4321-90e4-7ca4ec4b4699', 
0, 
1);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'a4db9e0a-0414-4bac-9186-5ecad941b51d', 
0, 
2);
GO
CREATE TABLE [restservices$changeitem_changelog] (
	[restservices$changeitemid] bigint NOT NULL,
	[restservices$changelogid] bigint NOT NULL,
	PRIMARY KEY([restservices$changeitemid],[restservices$changelogid]));
GO
CREATE INDEX [idx_restservices$changeitem_changelog_restservices$changelog_restservices$changeitem] ON [restservices$changeitem_changelog] ([restservices$changelogid],[restservices$changeitemid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('179a175c-0b60-4e96-a9b6-f27428aed7dd', 
'RestServices.ChangeItem_ChangeLog', 
'restservices$changeitem_changelog', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'restservices$changeitemid', 
'restservices$changelogid', 
'idx_restservices$changeitem_changelog_restservices$changelog_restservices$changeitem');
GO
CREATE TABLE [restservices$changelog] (
	[id] bigint NOT NULL,
	[sequencenr] bigint NULL,
	[_configurationhash] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'RestServices.ChangeLog', 
'restservices$changelog');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0180ae4b-0796-4b2f-b107-469a4e85c524', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a7111377-b2d5-4025-9b8f-369ca22039f6', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'_ConfigurationHash', 
'_configurationhash', 
30, 
0, 
'', 
0);
GO
CREATE TABLE [restservices$changelog_servicedefinition] (
	[restservices$changelogid] bigint NOT NULL,
	[restservices$dataservicedefinitionid] bigint NOT NULL,
	PRIMARY KEY([restservices$changelogid],[restservices$dataservicedefinitionid]));
GO
CREATE INDEX [idx_restservices$changelog_servicedefinition_restservices$dataservicedefinition_restservices$changelog] ON [restservices$changelog_servicedefinition] ([restservices$dataservicedefinitionid],[restservices$changelogid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('124269c0-d241-4b29-84af-4cfc0b445dd0', 
'RestServices.ChangeLog_ServiceDefinition', 
'restservices$changelog_servicedefinition', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'restservices$changelogid', 
'restservices$dataservicedefinitionid', 
'idx_restservices$changelog_servicedefinition_restservices$dataservicedefinition_restservices$changelog');
GO
CREATE TABLE [tinysqlstudio$searchobjectdoc] (
	[id] bigint NOT NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('e801f781-2bcb-47db-8c80-8f9c31aca086', 
'TinySqlStudio.SearchObjectDoc', 
'tinysqlstudio$searchobjectdoc', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
GO
CREATE TABLE [hr$department] (
	[id] bigint NOT NULL,
	[departmentid] bigint NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('9e5a1d25-581b-4923-995f-4467a5a997cb', 
'Hr.Department', 
'hr$department');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('28f22838-c035-46c7-8daa-9b31e8eaa0a3', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'DepartmentId', 
'departmentid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7145ee14-8f28-4fcd-96cd-994d0f06acc8', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [hr$employee] (
	[id] bigint NOT NULL,
	[dateofbirth] datetime2(3) NULL,
	[salary] decimal(28, 8) NULL,
	[dateofhire] datetime2(3) NULL,
	[bonus] decimal(28, 8) NULL,
	[employeeid] bigint NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Hr.Employee', 
'hr$employee');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('5f22f0dc-b8a8-4a3c-b265-f2bdce1427c2', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'DateOfBirth', 
'dateofbirth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('83e58b0e-bb06-4caf-9041-0ba590545b1a', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Salary', 
'salary', 
5, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f2d04395-e068-427c-bb07-3b8c11053c10', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'DateOfHire', 
'dateofhire', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('5c26668d-b04f-426b-9d05-db8bca66c915', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Bonus', 
'bonus', 
5, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a0f4e10d-817d-4aaa-9aee-631589de0d72', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'EmployeeId', 
'employeeid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7dc7989e-1603-4e30-89f2-c3f3939f31cb', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [hr$employee_department] (
	[hr$employeeid] bigint NOT NULL,
	[hr$departmentid] bigint NOT NULL,
	PRIMARY KEY([hr$employeeid],[hr$departmentid]));
GO
CREATE INDEX [idx_hr$employee_department_hr$department_hr$employee] ON [hr$employee_department] ([hr$departmentid],[hr$employeeid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('bc8ce38b-f32a-43d0-90f9-11195243de32', 
'Hr.Employee_Department', 
'hr$employee_department', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'hr$employeeid', 
'hr$departmentid', 
'idx_hr$employee_department_hr$department_hr$employee');
GO
CREATE TABLE [myfirstmodule$employee] (
	[id] bigint NOT NULL,
	[dateofbirth] datetime2(3) NULL,
	[email] nvarchar(200) NULL,
	[address] nvarchar(200) NULL,
	[state] nvarchar(200) NULL,
	[phone] nvarchar(200) NULL,
	[level] nvarchar(6) NULL,
	[city] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'MyFirstModule.Employee', 
'myfirstmodule$employee');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('6892d29a-b9c7-486a-ab21-3cfe6e8f9615', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'DateOfBirth', 
'dateofbirth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('90dae765-d1cb-43bd-8b23-8142c9fce847', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Email', 
'email', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3ead8364-44a9-42c7-bafd-1a27e2a55cc0', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Address', 
'address', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('17acec95-8a6e-4a53-bd1e-beb4c4e650c3', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'State', 
'state', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3b1b3d92-e043-4858-a59f-6183ab7762a8', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Phone', 
'phone', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('2219f0a8-918d-43de-81cc-c528fe34e09b', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Level', 
'level', 
40, 
6, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('46066ba8-3b81-4452-939e-6b5077ae016b', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'City', 
'city', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b7b900ba-a805-42a3-a7a2-a2b9470eeb57', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$employee_department] (
	[myfirstmodule$employeeid] bigint NOT NULL,
	[myfirstmodule$departmentid] bigint NOT NULL,
	PRIMARY KEY([myfirstmodule$employeeid],[myfirstmodule$departmentid]));
GO
CREATE INDEX [idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee] ON [myfirstmodule$employee_department] ([myfirstmodule$departmentid],[myfirstmodule$employeeid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('4a175cb8-00cc-445a-aafb-107178b89253', 
'MyFirstModule.Employee_Department', 
'myfirstmodule$employee_department', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'myfirstmodule$employeeid', 
'myfirstmodule$departmentid', 
'idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee');
GO
CREATE TABLE [restservices$dataservicedefinition] (
	[id] bigint NOT NULL,
	[enabledelete] bit NULL,
	[description] nvarchar(max) NULL,
	[accessrole] nvarchar(200) NULL,
	[sourceentity] nvarchar(200) NULL,
	[onpublishmicroflow] nvarchar(200) NULL,
	[onupdatemicroflow] nvarchar(200) NULL,
	[enableupdate] bit NULL,
	[enablechangelog] bit NULL,
	[name] nvarchar(200) NULL,
	[ondeletemicroflow] nvarchar(200) NULL,
	[enablelisting] bit NULL,
	[sourceconstraint] nvarchar(max) NULL,
	[enablecreate] bit NULL,
	[sourcekeyattribute] nvarchar(200) NULL,
	[enableget] bit NULL,
	[usestrictversioning] bit NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('d982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'RestServices.DataServiceDefinition', 
'restservices$dataservicedefinition');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('be456f59-7bf5-48b7-954c-b2fc41663724', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableDelete', 
'enabledelete', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('ff910d4e-521b-4b6f-815c-e22c984123d6', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'Description', 
'description', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8c245db0-d200-4325-a73c-65419f4eac78', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'AccessRole', 
'accessrole', 
30, 
200, 
'*', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('86938dd7-6f69-400f-b26b-dd1e7e718212', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceEntity', 
'sourceentity', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7617d212-b15f-4639-8df6-636e6abf8d62', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnPublishMicroflow', 
'onpublishmicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9de4bb2f-661f-429a-bd89-cfdf54e24db2', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnUpdateMicroflow', 
'onupdatemicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('2046ed68-3943-48f5-ac81-a798da63ccb0', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableUpdate', 
'enableupdate', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b0fb2473-454c-4fed-b2ae-43db597307d4', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableChangeLog', 
'enablechangelog', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('fc2453ce-0d9a-46d3-8339-b448ca9e16b9', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('48fde075-e085-4e59-b47a-0724416366ae', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnDeleteMicroflow', 
'ondeletemicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('11ce59dd-3ef8-404a-b660-216e43d76196', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableListing', 
'enablelisting', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a11c3720-013e-40f6-ace8-a6ad236696ff', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceConstraint', 
'sourceconstraint', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4c58899a-4781-43e6-9b63-ec6cddf280ba', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableCreate', 
'enablecreate', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('db31fa52-f5f3-4efe-a218-dd2bff778eb2', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceKeyAttribute', 
'sourcekeyattribute', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('82268945-e492-4d43-ba24-6b1d08fbc1f7', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableGet', 
'enableget', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f5d8ce21-7da5-44e0-9ef0-e158a9bc1210', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'UseStrictVersioning', 
'usestrictversioning', 
10, 
0, 
'false', 
0);
GO
CREATE TABLE [restservices$datasyncstate] (
	[id] bigint NOT NULL,
	[sequencenr] bigint NULL,
	[collectionurl] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'RestServices.DataSyncState', 
'restservices$datasyncstate');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3c03f2c5-ca04-4c5c-b73a-fa12a58e2430', 
'419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4d8c6b64-0738-4e0d-8c6e-fe272836b50e', 
'419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'CollectionUrl', 
'collectionurl', 
30, 
0, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$department] (
	[id] bigint NOT NULL,
	[description] nvarchar(200) NULL,
	[birth] datetime2(3) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('dcae8701-0b16-49cd-a9f2-856dae253f03', 
'MyFirstModule.Department', 
'myfirstmodule$department');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b6ad9d52-f6f9-4609-85be-b6c1d1b1dd14', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Description', 
'description', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3894be8e-e908-4c23-af86-bfea454e5108', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Birth', 
'birth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('afab28be-a587-4e77-a98c-6265fa86c597', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [tinysqlstudio$querytemplate] (
	[id] bigint NOT NULL,
	[title] nvarchar(max) NULL,
	[sql] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'TinySqlStudio.QueryTemplate', 
'tinysqlstudio$querytemplate');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b1c74fcc-ea24-4930-94c0-9267ba19669e', 
'c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'Title', 
'title', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('efebe1a4-e514-4c66-a6f2-9337324554b3', 
'c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'Sql', 
'sql', 
30, 
0, 
'', 
0);
GO
DROP TABLE [87c385f78c754d1abac289fb1154c5dd];
GO
DROP TABLE [a6e93163af694dfe907088b6f8f1d73b];
GO
DROP TABLE [c4f9cbd3dc464eb5baa5248e971debe8];
GO
DROP TABLE [3e67db26cd2e4f05abe9ddef18448ef6];
GO
DROP TABLE [31b0175d406a4f479e827b0b3874c0a6];
GO
DROP TABLE [3fa706acfef14dc3a715d82fd911a454];
GO
DROP TABLE [880d12d2e0e640b49a5144dd7f17a0a9];
GO
DROP TABLE [42556a19b483428dadbb9e0864da51a8];
GO
DROP TABLE [f5d4413cefa643d68617a4f31e266d41];
GO
DROP TABLE [c1771cea26fb483ca215414d6cebb129];
GO
DROP TABLE [af51545c9f844802a033382fb6b6b3d3];
GO
DROP TABLE [51b42ab22d254f238ff5d6532e6ab4b2];
GO
DROP TABLE [2a36989b905b44cf9a601a9e827b7a6b];
GO
DROP TABLE [50a1ea1a688e4799a342ccde5795ff42];
GO
DROP TABLE [775061dcf4f848449dd761b7b0c213fd];
GO
DROP TABLE [2aee222470014aaa8cccd5880325f135];
GO
DROP TABLE [b8b2863b4276464582628a48b10333e5];
GO
DROP TABLE [6f77afbe55f143489eb20dfbb02deb9c];
GO
DROP TABLE [4d037ebf8f5241c690230e1d879f2f20];
GO
DROP TABLE [e9ba811f3bff45aeae246e086638af16];
GO
DROP TABLE [298906bebdf447a7b593002a99178d26];
GO
DROP TABLE [98f9b24777444380be31f804e5d6d371];
GO
DROP TABLE [db19fdbc1e4f475eb0008411ece38b1f];
GO
DROP TABLE [b70b09a1f137457eb9393fa038085ba1];
GO
DROP TABLE [d6b0f1f795a64f04b1369ba774fa2266];
GO
DROP TABLE [b4d9f6a6dc88477bbf97f8e7779e0da9];
GO
DROP TABLE [b2964096a8bc4cf2b3c295c1f805bb57];
GO
DROP TABLE [312ab82ff2434fb9a97eace4b49bd4db];
GO
DROP TABLE [463e734e4c884c82a46bbfef35ab597a];
GO
DROP TABLE [92c2b83891b34affb8ae34b5fd3add37];
GO
DROP TABLE [f8968542d1d049fc985b44538f8a78c6];
GO
DROP TABLE [ae7268206b57406987c6e9f5a1ca1875];
GO
DROP TABLE [948f5ca973c94677a777b1959f29e1fe];
GO
DROP TABLE [575263360b6547e7a292050cb882b8dc];
GO
DROP TABLE [f8c7626ddabd4a128eedffc239b12f76];
GO
DROP TABLE [dc43d74b314b49ab8afe52c75c77ee57];
GO
DROP TABLE [ad8e33b4856845c995ac6c8a8a430f49];
GO
DROP TABLE [456d2da49f1247f198aca7069c56c7a8];
GO
DROP TABLE [bf0ee187fc924b34a9904b18c2e8f7a6];
GO
DROP TABLE [b969f089d8a048289200f7fc6272793a];
GO
DROP TABLE [349ac2cceb6d4893978b29cf0529e0da];
GO
DROP TABLE [1072f62fbac44250a223ecb07ee4d48d];
GO
DROP TABLE [e27db259a7e6471ab05ff22d783886e1];
GO
DROP TABLE [7421b8109483407fb399445f4e9eda4a];
GO
DROP TABLE [15b5314afb7349f9be967ca9632dbb53];
GO
DROP TABLE [cc91115c125b435a8a28be9778ebf86f];
GO
DROP TABLE [24482e419d78449d95a4574e9bb338aa];
GO
DROP TABLE [969b08975b20406aae62748a9fe24984];
GO
DROP TABLE [48a10bdab6f04017a667a46386444d2b];
GO
DROP TABLE [d6387c8267274f8cb0f613627004ef30];
GO
DROP TABLE [27e82f6321d84e5b88f58de7f8304b5d];
GO
DROP TABLE [c4af0a06db88427d977f2a245de684a7];
GO
DROP TABLE [481d611cecae4b298c2f8a1a7e1bd968];
GO
DROP TABLE [99346b4796954e97afbb6e13d9995f2f];
GO
DROP TABLE [1a7ad26d51da4109b378a11d0b91d62c];
GO
DROP TABLE [1184b0a3567e4ee78642c0ea42583483];
GO
DROP TABLE [3937346ccf414fc894c6f43f06c92317];
GO
DROP TABLE [6968d82d7a4b4b21bdabdf03ce295786];
GO
DROP TABLE [aba69499e399422993441f1066228e1f];
GO
DROP TABLE [c380ce52c7e14fe589f72da43756b61b];
GO
DROP TABLE [38dfc8ad590c495985d8425a55ffb8c5];
GO
DROP TABLE [d77296e9be2f43cb8273325430ed76a9];
GO
DROP TABLE [0c02b3e4bf4d40b0a203728d5d8fc179];
GO
DROP TABLE [b60cbfa74e914cfcaa17698342f77df9];
GO
DROP TABLE [7326aa56d25841d69a546085341b9741];
GO
DROP TABLE [230acb07dc6447cb9a1f59d61c4c2151];
GO
DROP TABLE [4c35fe6728934aa5bc5f6f2e06b81229];
GO
DROP TABLE [56e8bd3b773c4f1e91f2ffe87042f1a7];
GO
DROP TABLE [ffa1cf92252744c4a500b1f9f57d69a9];
GO
DROP TABLE [f09bb57efbf44fcfb90097fbbd3f46c0];
GO
DROP TABLE [fab0f3fef49441f5a193dc0dc30f0da3];
GO
DROP TABLE [3f1b4fd36978456590dabc1193d75fdb];
GO
DROP TABLE [f641d48c2ab5431bac841167be7824eb];
GO
DROP TABLE [60d9cfcb51c641409fd8e02423d62a39];
GO
DROP TABLE [1f4e57148a5144728ae78d91ff7b2ad9];
GO
DROP TABLE [d27817df9a2440f6ab785adf90adf77b];
GO
DROP TABLE [91da0f9ac5ad459a9d9c63936679b646];
GO
DROP TABLE [834a01cc89f34cd7b1c6b75bc5edd97a];
GO
DROP TABLE [0e2a1f595a59456782c6b9925091a3d8];
GO
DROP TABLE [41346258cedf449881b7be5811852fcd];
GO
DROP TABLE [25cba441cde74f2dbc3bbeea1d3105b0];
GO
DROP TABLE [313fa06e69a143e084ee05966c0f6b97];
GO
DROP TABLE [8918bcaf965a4a8ba3d10c63291d0a3e];
GO
DROP TABLE [979f113c8b0842aab782ade38088cc34];
GO
DROP TABLE [f27560cc4a844ca0b82e26b950e28b5e];
GO
DROP TABLE [62d2c81735dc4b78adedfe231dc9fde3];
GO
DROP TABLE [1468e17692c845a796280ea00f423248];
GO
DROP TABLE [4555a9e7deb344619eba30dbc54d7736];
GO
DROP TABLE [e0b72609f47a41e090b6b4942c5bd9a1];
GO
DROP TABLE [b8d02762b0044d8f90e5a5373a652677];
GO
DROP TABLE [289f452cb0e244048e1c75f032906bb9];
GO
DROP TABLE [1aaecfcbc5aa4133a6d6ab13331d2383];
GO
DROP TABLE [56dc447727494d19816a6b19655f8048];
GO
DROP TABLE [d2de723c5c4843128dab62564b493644];
GO
DROP TABLE [ad729eedfff44f73ac40f22cbae1211c];
GO
DROP TABLE [a6dc1fd3440c41e986bf8d7057d86d66];
GO
DROP TABLE [db4753fe4fc64bfa9e46438a2780ff50];
GO
DROP TABLE [0e7cd7664e7d497cb9bdb23d5091b69a];
GO
DROP TABLE [b9507906221845b6870bb5be94c52658];
GO
DROP TABLE [2a4f0f17f3c74e3a8b269d9eeda47111];
GO
DROP TABLE [82478b81d0804913ac5592fee75c464e];
GO
DROP TABLE [d959c8c940924b658e1654db131c6a27];
GO
DROP TABLE [ace8c86e057943f7b1da4c9a450b60a2];
GO
DROP TABLE [7e2f875ae2074d6ab450af75099f8b4b];
GO
DROP TABLE [107af60c55ce41a788ece03095d2dcd9];
GO
DROP TABLE [4b8e760639894849998bf7f28134fb4f];
GO
DROP TABLE [faf70fa4c7874fd4b1c6f0a5d11caa14];
GO
DROP TABLE [2d6cdf57509e44ff8016ea4c83180848];
GO
DROP TABLE [0f1d49356f5b432ab1cff6e1abd112e2];
GO
DROP TABLE [443d347f8acf4700a5d1488f3b540eb2];
GO
DROP TABLE [7ca6a0fc5d054450819e6aa4f25592c6];
GO
DROP TABLE [6dce314826cd4f60b53b7cc97c569878];
GO
DROP TABLE [ff004bc5a9974199bcf9b2a9f0946f30];
GO
DROP TABLE [d3a88f4baeb343b3b664ccec22fee08d];
GO
DROP TABLE [0713f0a8701c4d91bd9b83f7ba4d34c7];
GO
DROP TABLE [6824b6049af844889795960aaf0cff4c];
GO
DROP TABLE [a16a936382674f07bd219973c4d2fc66];
GO
DROP TABLE [0a3556521d114a7399d7f7d72f4517d4];
GO
DROP TABLE [d1c55fcabb094c1e8d64f765c3eac0f3];
GO
DROP TABLE [6bb4fd977aec48ddb99d9279e3e6eae5];
GO
DROP TABLE [8667e20ac8d248ad9f0c176dd6b2e4f4];
GO
DROP TABLE [55c4fb0851dd48a2870c96f0d5681c5d];
GO
DROP TABLE [75855d877b1b40d09e68925426cdaa0c];
GO
DROP TABLE [b38c5fdf681e4e0ea2405e99dc6f6a91];
GO
DROP TABLE [2ee043cffb504e4d8db2e759e45d5913];
GO
DROP TABLE [37e29c022a894d9aa455127e59a29c77];
GO
UPDATE [mendixsystem$version]
 SET [versionnumber] = '4.2', 
[lastsyncdate] = '20170411 16:39:14';
GO
