-- 003_add_pronunciation_pt.sql
-- Pronúncia aproximada escrita em português (sílaba tônica em maiúsculo),
-- mais legível para quem não estudou o alfabeto fonético (IPA).

alter table vocabulary add column pronunciation_pt text;

update vocabulary set pronunciation_pt = 'rí-LÔU' where id = '30000000-0000-0000-0000-000000000001'; -- hello
update vocabulary set pronunciation_pt = 'gud-BÁI' where id = '30000000-0000-0000-0000-000000000002'; -- goodbye
update vocabulary set pronunciation_pt = 'gud MÓR-nin' where id = '30000000-0000-0000-0000-000000000003'; -- good morning
update vocabulary set pronunciation_pt = 'gud af-tér-NÚN' where id = '30000000-0000-0000-0000-000000000004'; -- good afternoon
update vocabulary set pronunciation_pt = 'gud ÍV-nin' where id = '30000000-0000-0000-0000-000000000005'; -- good evening
update vocabulary set pronunciation_pt = 'gud NÁIT' where id = '30000000-0000-0000-0000-000000000006'; -- good night
update vocabulary set pronunciation_pt = 'PLIZ' where id = '30000000-0000-0000-0000-000000000007'; -- please
update vocabulary set pronunciation_pt = 'THÊNK IÚ' where id = '30000000-0000-0000-0000-000000000008'; -- thank you
update vocabulary set pronunciation_pt = 'IÔR UÉL-kam' where id = '30000000-0000-0000-0000-000000000009'; -- you're welcome
update vocabulary set pronunciation_pt = 'SÓ-ri' where id = '30000000-0000-0000-0000-000000000010'; -- sorry
update vocabulary set pronunciation_pt = 'eks-KIÚZ mi' where id = '30000000-0000-0000-0000-000000000011'; -- excuse me
update vocabulary set pronunciation_pt = 'IÉS' where id = '30000000-0000-0000-0000-000000000012'; -- yes
update vocabulary set pronunciation_pt = 'NÔU' where id = '30000000-0000-0000-0000-000000000013'; -- no
update vocabulary set pronunciation_pt = 'NÊIM' where id = '30000000-0000-0000-0000-000000000014'; -- name
update vocabulary set pronunciation_pt = 'ÁI' where id = '30000000-0000-0000-0000-000000000015'; -- I
update vocabulary set pronunciation_pt = 'IÚ' where id = '30000000-0000-0000-0000-000000000016'; -- you
update vocabulary set pronunciation_pt = 'RRI' where id = '30000000-0000-0000-0000-000000000017'; -- he
update vocabulary set pronunciation_pt = 'XI' where id = '30000000-0000-0000-0000-000000000018'; -- she
update vocabulary set pronunciation_pt = 'UI' where id = '30000000-0000-0000-0000-000000000019'; -- we
update vocabulary set pronunciation_pt = 'DHÊI' where id = '30000000-0000-0000-0000-000000000020'; -- they
update vocabulary set pronunciation_pt = 'IZ' where id = '30000000-0000-0000-0000-000000000021'; -- is
update vocabulary set pronunciation_pt = 'ÉM' where id = '30000000-0000-0000-0000-000000000022'; -- am
update vocabulary set pronunciation_pt = 'AR' where id = '30000000-0000-0000-0000-000000000023'; -- are
update vocabulary set pronunciation_pt = 'FROM' where id = '30000000-0000-0000-0000-000000000024'; -- from
update vocabulary set pronunciation_pt = 'KÁN-tri' where id = '30000000-0000-0000-0000-000000000025'; -- country
update vocabulary set pronunciation_pt = 'bra-ZIL' where id = '30000000-0000-0000-0000-000000000026'; -- Brazil
update vocabulary set pronunciation_pt = 'NÁIS' where id = '30000000-0000-0000-0000-000000000027'; -- nice
update vocabulary set pronunciation_pt = 'tu MIT' where id = '30000000-0000-0000-0000-000000000028'; -- to meet
update vocabulary set pronunciation_pt = 'FRÊND' where id = '30000000-0000-0000-0000-000000000029'; -- friend
update vocabulary set pronunciation_pt = 'TÍ-tchêr' where id = '30000000-0000-0000-0000-000000000030'; -- teacher
update vocabulary set pronunciation_pt = 'UÁN' where id = '30000000-0000-0000-0000-000000000031'; -- one
update vocabulary set pronunciation_pt = 'TU' where id = '30000000-0000-0000-0000-000000000032'; -- two
update vocabulary set pronunciation_pt = 'THRI' where id = '30000000-0000-0000-0000-000000000033'; -- three
update vocabulary set pronunciation_pt = 'FÓR' where id = '30000000-0000-0000-0000-000000000034'; -- four
update vocabulary set pronunciation_pt = 'FÁIV' where id = '30000000-0000-0000-0000-000000000035'; -- five
update vocabulary set pronunciation_pt = 'SIKS' where id = '30000000-0000-0000-0000-000000000036'; -- six
update vocabulary set pronunciation_pt = 'SÉ-vên' where id = '30000000-0000-0000-0000-000000000037'; -- seven
update vocabulary set pronunciation_pt = 'ÊIT' where id = '30000000-0000-0000-0000-000000000038'; -- eight
update vocabulary set pronunciation_pt = 'NÁIN' where id = '30000000-0000-0000-0000-000000000039'; -- nine
update vocabulary set pronunciation_pt = 'TÉN' where id = '30000000-0000-0000-0000-000000000040'; -- ten
update vocabulary set pronunciation_pt = 'RÉD' where id = '30000000-0000-0000-0000-000000000041'; -- red
update vocabulary set pronunciation_pt = 'BLU' where id = '30000000-0000-0000-0000-000000000042'; -- blue
update vocabulary set pronunciation_pt = 'GRIN' where id = '30000000-0000-0000-0000-000000000043'; -- green
update vocabulary set pronunciation_pt = 'IÉ-lôu' where id = '30000000-0000-0000-0000-000000000044'; -- yellow
update vocabulary set pronunciation_pt = 'BLÉK' where id = '30000000-0000-0000-0000-000000000045'; -- black
update vocabulary set pronunciation_pt = 'UÁIT' where id = '30000000-0000-0000-0000-000000000046'; -- white
update vocabulary set pronunciation_pt = 'Ó-rinj' where id = '30000000-0000-0000-0000-000000000047'; -- orange
update vocabulary set pronunciation_pt = 'FÉ-mi-li' where id = '30000000-0000-0000-0000-000000000048'; -- family
update vocabulary set pronunciation_pt = 'MÁ-dhêr' where id = '30000000-0000-0000-0000-000000000049'; -- mother
update vocabulary set pronunciation_pt = 'FÁ-dhêr' where id = '30000000-0000-0000-0000-000000000050'; -- father
update vocabulary set pronunciation_pt = 'SIS-têr' where id = '30000000-0000-0000-0000-000000000051'; -- sister
update vocabulary set pronunciation_pt = 'BRÁ-dhêr' where id = '30000000-0000-0000-0000-000000000052'; -- brother
update vocabulary set pronunciation_pt = 'SAN' where id = '30000000-0000-0000-0000-000000000053'; -- son
update vocabulary set pronunciation_pt = 'DÓ-têr' where id = '30000000-0000-0000-0000-000000000054'; -- daughter
update vocabulary set pronunciation_pt = 'GRÉND-ma-dhêr' where id = '30000000-0000-0000-0000-000000000055'; -- grandmother
update vocabulary set pronunciation_pt = 'GRÉND-fa-dhêr' where id = '30000000-0000-0000-0000-000000000056'; -- grandfather
update vocabulary set pronunciation_pt = 'UÁIF' where id = '30000000-0000-0000-0000-000000000057'; -- wife
update vocabulary set pronunciation_pt = 'RRÁZ-bênd' where id = '30000000-0000-0000-0000-000000000058'; -- husband
update vocabulary set pronunciation_pt = 'ÓULD' where id = '30000000-0000-0000-0000-000000000059'; -- old
update vocabulary set pronunciation_pt = 'IÁNG' where id = '30000000-0000-0000-0000-000000000060'; -- young
