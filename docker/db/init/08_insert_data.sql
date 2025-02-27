USE ktoe;

SET NAMES utf8mb4;
SET character_set_client = utf8mb4;
SET character_set_connection = utf8mb4;
SET character_set_results = utf8mb4;

SET GLOBAL time_zone = '+9:00';
SET time_zone = '+9:00';

INSERT INTO content_types (type_name) VALUES ('speech'), ('story'), ('novel'), ('etc');
INSERT INTO difficulty_levels (level_name) VALUES ('easy'), ('medium'), ('hard');

INSERT INTO contents (title, korean_title, type_id, difficulty_id)
VALUES ('My Perfect Morning Routine', '나만의 완벽한 아침 루틴', 2, 1);

-- 단락 1
INSERT INTO paragraphs (content_id, paragraph_order, korean_paragraph, english_paragraph)
VALUES
    (1, 1,
     '아침은 하루의 시작을 여는 중요한 시간입니다. 저는 오랜 시간 동안 나만의 완벽한 아침 루틴을 찾기 위해 노력해 왔습니다. 여러 가지 시도를 거치며 깨달은 점은 아침이 단순히 일어나서 준비하는 시간이 아니라, 하루의 에너지를 충전하고 정신을 맑게 만드는 귀중한 시간이라는 것입니다.',
     'Morning is an important time that marks the beginning of the day. I have spent a long time trying to find my own perfect morning routine. Through various attempts, I realized that the morning is not just a time to wake up and get ready, but a valuable moment to recharge my energy and clear my mind for the day.');

-- 단락 2
INSERT INTO paragraphs (content_id, paragraph_order, korean_paragraph, english_paragraph)
VALUES
    (1, 2,
     '처음에는 기상 후 스마트폰을 확인하며 시간을 보내곤 했습니다. 하지만 그러다 보니 스트레스를 받는 일이 많아졌고, 하루의 시작부터 마음이 불편해지는 경우가 많았습니다. 그래서 이 습관을 바꾸기로 결심했습니다. 대신, 일어나자마자 창문을 열어 신선한 공기를 마시고, 간단한 스트레칭으로 몸을 깨우는 것으로 시작했습니다.',
     'At first, I used to spend my mornings checking my smartphone as soon as I woke up. However, this habit often left me feeling stressed and uneasy from the very start of the day. So, I decided to change it. Instead, I began opening the window to breathe in fresh air and waking up my body with some light stretching as soon as I got up.');

-- 단락 3
INSERT INTO paragraphs (content_id, paragraph_order, korean_paragraph, english_paragraph)
VALUES
    (1, 3,
     '그 다음으로는 따뜻한 차 한 잔을 마시며 오늘 해야 할 일을 정리합니다. 이 시간을 통해 마음의 여유를 찾고 하루의 목표를 정리하게 되었습니다. 또한, 10분 정도 책을 읽거나 명상을 하며 정신적으로도 안정된 상태를 유지하려 노력합니다. 이 짧은 시간이지만, 제게는 큰 힘이 됩니다.',
     'Next, I enjoy a warm cup of tea while organizing my to-do list for the day. During this time, I find a sense of calm and set clear goals for the day. Additionally, I try to spend about 10 minutes reading a book or meditating to maintain mental stability. Although it’s a short time, it gives me great strength.');

-- 단락 4
INSERT INTO paragraphs (content_id, paragraph_order, korean_paragraph, english_paragraph)
VALUES
    (1, 4,
     '지금의 아침 루틴은 단순하면서도 제게 딱 맞는 완벽한 시작이 되어줍니다. 이 루틴 덕분에 하루를 활기차고 긍정적으로 시작할 수 있게 되었고, 생활의 질도 눈에 띄게 좋아졌습니다. 저마다의 삶에 맞는 아침 루틴을 찾는 것이 중요하다고 믿습니다. 당신도 한번 당신만의 루틴을 만들어보는 건 어떨까요?',
     'My current morning routine is simple yet perfect for me. Thanks to this routine, I can start the day with energy and positivity, and my quality of life has improved significantly. I believe it’s important for everyone to find a morning routine that suits their own lifestyle. Why not try creating one for yourself?');

INSERT INTO sentences (paragraph_id, sentence_order, korean_sentence, english_sentence)
VALUES
    (1, 1, '아침은 하루의 시작을 여는 중요한 시간입니다.', 'Morning is an important time that marks the beginning of the day.'),
    (1, 2, '저는 오랜 시간 동안 나만의 완벽한 아침 루틴을 찾기 위해 노력해 왔습니다.', 'I have spent a long time trying to find my own perfect morning routine.'),
    (1, 3, '여러 가지 시도를 거치며 깨달은 점은 아침이 단순히 일어나서 준비하는 시간이 아니라, 하루의 에너지를 충전하고 정신을 맑게 만드는 귀중한 시간이라는 것입니다.', 'Through various attempts, I realized that the morning is not just a time to wake up and get ready, but a valuable moment to recharge my energy and clear my mind for the day.');

INSERT INTO sentences (paragraph_id, sentence_order, korean_sentence, english_sentence)
VALUES
    (2, 1, '처음에는 기상 후 스마트폰을 확인하며 시간을 보내곤 했습니다.', 'At first, I used to spend my mornings checking my smartphone as soon as I woke up.'),
    (2, 2, '하지만 그러다 보니 스트레스를 받는 일이 많아졌고, 하루의 시작부터 마음이 불편해지는 경우가 많았습니다.', 'However, this habit often left me feeling stressed and uneasy from the very start of the day.'),
    (2, 3, '그래서 이 습관을 바꾸기로 결심했습니다.', 'So, I decided to change it.'),
    (2, 4, '대신, 일어나자마자 창문을 열어 신선한 공기를 마시고, 간단한 스트레칭으로 몸을 깨우는 것으로 시작했습니다.', 'Instead, I began opening the window to breathe in fresh air and waking up my body with some light stretching as soon as I got up.');

INSERT INTO sentences (paragraph_id, sentence_order, korean_sentence, english_sentence)
VALUES
    (3, 1, '그 다음으로는 따뜻한 차 한 잔을 마시며 오늘 해야 할 일을 정리합니다.', 'Next, I enjoy a warm cup of tea while organizing my to-do list for the day.'),
    (3, 2, '이 시간을 통해 마음의 여유를 찾고 하루의 목표를 정리하게 되었습니다.', 'During this time, I find a sense of calm and set clear goals for the day.'),
    (3, 3, '또한, 10분 정도 책을 읽거나 명상을 하며 정신적으로도 안정된 상태를 유지하려 노력합니다.', 'Additionally, I try to spend about 10 minutes reading a book or meditating to maintain mental stability.'),
    (3, 4, '이 짧은 시간이지만, 제게는 큰 힘이 됩니다.', 'Although it’s a short time, it gives me great strength.');

INSERT INTO sentences (paragraph_id, sentence_order, korean_sentence, english_sentence)
VALUES
    (4, 1, '지금의 아침 루틴은 단순하면서도 제게 딱 맞는 완벽한 시작이 되어줍니다.', 'My current morning routine is simple yet perfect for me.'),
    (4, 2, '이 루틴 덕분에 하루를 활기차고 긍정적으로 시작할 수 있게 되었고, 생활의 질도 눈에 띄게 좋아졌습니다.', 'Thanks to this routine, I can start the day with energy and positivity, and my quality of life has improved significantly.'),
    (4, 3, '저마다의 삶에 맞는 아침 루틴을 찾는 것이 중요하다고 믿습니다.', 'I believe it’s important for everyone to find a morning routine that suits their own lifestyle.'),
    (4, 4, '당신도 한번 당신만의 루틴을 만들어보는 건 어떨까요?', 'Why not try creating one for yourself?');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (1, 1, '아침은', 'Morning'),
    (1, 2, '중요한 시간 입니다,', 'is an important time,'),
    (1, 3, '알리는', 'that marks'),
    (1, 4, '하루의 시작을', 'the beginning of the day');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (2, 1, '저는', 'I'),
    (2, 2, '오랜 시간을 사용하고 있다', 'have spent a long time'),
    (2, 3, '찾기 위해', 'trying to find'),
    (2, 4, '나 자신의 완벽한 아침 루틴', 'my own perfect morning routine');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (3, 1, '여러 가지 시도를 거치며', 'Through various attempts'),
    (3, 2, '나는 깨달았습니다', 'I realized'),
    (3, 3, '아침은 단순한 시간이 아니라', 'that the morning is not just a time'),
    (3, 4, '일어나고 준비하는', 'to wake up and get ready,'),
    (3, 5, '귀중한 순간이라는 것', 'but a valuable moment'),
    (3, 6, '하루의 에너지를 충전하고', 'to recharge my energy and'),
    (3, 7, '정신을 맑게 만드는', 'clear my mind for the day');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (4, 1, '처음에는', 'At first'),
    (4, 2, '아침을 보내곤 했다', 'I used to spend my mornings'),
    (4, 3, '스마트폰을 확인하는데', 'checking my smartphone'),
    (4, 4, '일어나자 마자', 'as soon as I woke up');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (5, 1, '하지만', 'However'),
    (5, 2, '그러다 보니', 'as time went on'),
    (5, 3, '스트레스를 받는 일이 많아졌고', ' I found myself feeling stressed more often'),
    (5, 4, '하루의 시작부터 마음이 불편해지는 경우가 많았습니다.', 'and I frequently started my day with an uneasy mind.');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (6, 1, '그래서,', 'So,'),
    (6, 2, '이 습관을 바꾸기로 결심했습니다.', 'I decided to change it.');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (7, 1, '대신,', 'Instead'),
    (7, 2, '창문을 열어 신선한 공기를 마시고,', 'I began opening the window to breathe in fresh air'),
    (7, 3, '간단한 스트레칭으로 몸을 깨우는 것으로 시작했습니다', 'and waking up my body with some light stretching'),
    (7, 4, '일어나자마자', 'as soon as I got up');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (8, 1, '그 다음으로', 'Next,'),
    (8, 2, '따뜻한 차 한잔을 즐긴다', 'I enjoy a warm cup of tea'),
    (8, 3, '오늘 해야 할 일을 정리하는 동안에', 'while organizing my to-do list for the day');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (9, 1, '이 시간을 통해,', 'During this time,'),
    (9, 2, '마음의 여유를 찾고', 'I find a sense of calm'),
    (9, 3, '하루의 목표를 정리하게 되었습니다', 'set clear golas for the day');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (10, 1, '또한,', 'Additionally,'),
    (10, 2, '저는 노력합니다', 'I try'),
    (10, 3, '10분 정도 책을 읽거나 명상을 하며', 'to spend about 10 minutes reading a book or meditating'),
    (10, 4, '정신적으로도 안전된 상태를 유지하려 노력합니다', 'to maintain mental stability');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (11, 1, '이 짦은 시간이지만', 'Although it.s a short time'),
    (11, 2, '제게는 큰 힘이 됩니다.', 'it gives me great strength');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (12, 1, '지금의 아침 루틴은', 'My current morning routine is'),
    (12, 2, '단순하게 제게 딱 맞는 완벽한 시작이 되어줍니다.', 'simple yet perfect for me');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (13, 1, '이 루틴 덕분에, ', 'Thanks to this routine, '),
    (13, 2, '하루를 활기차고 긍정적으로 시작할 수 있게 되었고, ', 'I can start the day with energy and positivity,'),
    (13, 3, '생활의 질도 눈에 띄게 좋아졌습니다', 'and my quality of life has improved significantly');

INSERT INTO tokens (sentence_id, token_order, korean_token, english_token)
VALUES
    (14, 1, '저는 믿습니다', 'I believe'),
    (14, 2, '모두에게 중요하다고', 'it’s important for everyone'),
    (14, 3, '아침 루틴을 찾는 것이', 'to find a morning routine'),
    (14, 4, '저마다의 삶에 맞는', 'that suits their own lifestyle'),
    (14, 5, '당신도 한번 당신만의 루틴을 만들어보는 건 어떨까요?', 'Why not try creating one for yourself?');