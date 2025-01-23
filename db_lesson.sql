Q1. CREATE TABLE departments (
  department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2. ALTER TABLE people ADD department_id INT UNSIGNED AFTER email;

Q3. INSERT INTO departments (name)
    VALUES
    ('営業'),
    ('開発'),
    ('経理'),
    ('人事'),
    ('情報システム');

    INSERT INTO people (name,email,department_id,age,gender)
    VALUES
    ('又吉克樹','matayoshi@gizumo.jp','1','34','1'),
    ('東浜巨','higashihama@gizumo.jp','1','34','1'),
    ('有原航平','arihara@gizumo.jp','1','32','1'),
    ('武田翔太','takeda@gizumo.jp','2','31','1'),
    ('川瀬晃','kawase@gizumo.jp','2','27','1'),
    ('山川穂高','yamakawa@gizumo.jp','2','33','1'),
    ('今宮健太','imamiya@gizumo.jp','2','33','1'),
    ('周東佑京','syuutou@gizumo.jp','3','28','1'),
    ('栗原陵矢','kurihara@gizumo.jp','4','28','1'),

    INSERT INTO reports (person_id,content)
    VALUES
    ('7','5/14 楽天と対戦し4対1にて負け'),
    ('8','5/15 楽天と対戦し3対7にて勝ち'),
    ('9','5/17 西武と対戦し6対2にて勝ち'),
    ('10','5/18 西武と対戦し3対2にて勝ち'),
    ('11','5/19 西武と対戦し2対1にて勝ち'),
    ('12','5/21 楽天と対戦し21対0にて勝ち'),
    ('13','5/22 楽天と対戦し12対0にて勝ち'),
    ('14','5/24 ロッテと対戦し3対1にて負け'),
    ('15','5/25 ロッテと対戦し2対0にて負け'),
    ('16','5/26 ロッテと対戦し7対1にて負け');

Q4  UPDATE people SET department_id ='1' WHERE person_id= 1;
    UPDATE people SET department_id ='2' WHERE person_id= 2;
    UPDATE people SET department_id ='3' WHERE person_id= 3;
    UPDATE people SET department_id ='4' WHERE person_id= 4;
    UPDATE people SET department_id ='5' WHERE person_id= 6;

Q5  SELECT * FROM people WHERE gender = 1 ORDER BY age DESC;

Q6  peopleテーブルの'name','email','age',のつのカラムだけ取得し'department_id` = 1に該当する人を`created_at`の順番でレコードを表示をせよ;

Q7  SELECT NAME FROM people WHERE age BETWEEN 20 AND 29 AND gender = '2' or  age BETWEEN 40 AND 49 AND gender = '1';

Q8  SELECT * FROM people WHERE department_id ='1'

Q9  SELECT AVG(age) AS average_age FROM people WHERE department_id ='2' and gender ='2';

Q10 SELECT p.name, p.department_id, r.content FROM people p JOIN reports r USING (person_id);

Q11 SELECT p.person_id, p.name, r.content FROM people p LEFT OUTER JOIN reports r USING (person_id)WHERE content IS NULL;