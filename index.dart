import 'dart:html';
import 'dart:math' as math;

void main() {
  querySelector('#sample_text_id')
    ..text = '1+2+...+100='//����ȥlanguage��text.text=''
    ..onClick.listen(Add);//text.onclick=onclick.listen()����������
}

void reverseText(MouseEvent event) {
  var text = querySelector('#sample_text_id').text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector('#sample_text_id').text = buffer.toString();
}


void randomSelectStu(MouseEvent event) {
  var stuMap = {
    0:10130340109,
    1:10130340110,
    2:101303040111,
    3:10130340108
  };
  var random = new math.Random();

  var randomID = random.nextInt(4);
  var stuID = stuMap[randomID];
  querySelector('#sample_studentid_id').text =stuID.toString();
}

void Add(MouseEvent event){
  int i;
  int sum=0;
  for(i=1;i<=100;i++)
  {
    sum=sum+i;
  }
  querySelector('#sample_Addid_id').text =sum.toString();
}
