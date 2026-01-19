 //문자열 메소드
 document.
 
 let pos = "hello, World".indexOf("ox");
 console.log(pos);

 // indexOf 인덱스반환. vs. includes true/false 반환.
 const names  = ["홍길동" , "박인기", "박길동"];
 let cnt = 0;
 for (let name of nmames){
  //  if(name.indexof("길동" != -1 {
   if (name.includes("길동")){  
    cnt++;
   }
 }
console.log('길동은 ${cnt}명입니다.');

// filter() => 조건을 만족하는 값을 새로운 배열.
const newNames = names //
  //  .filter(elem => elem.indexOf('길동') != -1);
   .filter(elem => elem.includes('길동'));
console.log(newNames);