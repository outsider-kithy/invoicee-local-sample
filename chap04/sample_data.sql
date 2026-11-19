#テストデータの作成
#クライアントのダミーデータを作成
INSERT INTO clients (id,client_name) VALUES (1,'A産業');
INSERT INTO clients (id,client_name) VALUES (2,'B商店');
INSERT INTO clients (id,client_name) VALUES (3,'C美容室');

#消費税率のデータを作成（0%・8%・10%）
INSERT INTO tax (id, rate) VALUES (1, 0.00);
INSERT INTO tax (id, rate) VALUES (2, 0.08);
INSERT INTO tax (id, rate) VALUES (3, 0.10);

#ツールのダミーデータを作成
INSERT INTO tools (id,tool_type,price,tax_rate_id) VALUES (1,'webサイト',200000,3);
INSERT INTO tools (id,tool_type,price,tax_rate_id) VALUES (2,'LP',100000,3);
INSERT INTO tools (id,tool_type,price,tax_rate_id) VALUES (3,'htmlメール',40000,3);
INSERT INTO tools (id,tool_type,price,tax_rate_id) VALUES (4,'ノベルティ飲料水',200,2);

#作業の種類のダミーデータを作成
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (1,'文言修正',3000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (2,'画像差替',3000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (3,'グローバルナビ更新',10000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (4,'新規ページ作成',40000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (5,'スクロールアニメーション設定',40000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (6,'スライド設置',30000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (7,'リダイレクト設定',10000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (8,'フォーム作成',20000,3);
INSERT INTO works (id,work_type,price,tax_rate_id) VALUES (9,'データベース作成',20000,3);


