 //string2.js
 const str = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis sequi facilis quos quidem nesciunt maiores, adipisci atque veritatis reiciendis in culpa et quibusdam accusantium quod. Quam necessitatibus tempore fugiat soluta?'
 const strAry = str.split (" ");
 console.log(strAry);

 //문자열 생성.
 const container = document.querySelector("div.container");
 for(let word of strAry) { 
  let span = document.createElement("span")
  span.innerHTML = word;
  container.appendChild(span)
 }

///////////////////////////////////////////////////////////////
// 1.버튼에 클릭이벤트 등록.
// 2.사용자 입력값 체크.
// 3. 화면의 span 요소를 가져와서 사용자 입력값과 비교 =>remove