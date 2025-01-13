@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column(){
      Column(){
        Image($r('app.media.position_moco'))
          .height(210)
          .width(168)
          .borderRadius(20)


      }


      Row(){
        Image($r('app.media.position_earphone'))
          .width(20)
          .backgroundColor('#f0f0f0')
          .borderRadius(10)
          .padding(3)
          .margin({
            right:6
          })
        Text('飞狗MOCO')
          .fontWeight(FontWeight.Bold)
      }
      .height(30)



      Text('VIP')
        .fontWeight(FontWeight.Bold)
        .fontStyle(FontStyle.Italic)
        .fontColor(Color.White)
        .border({width:2}).borderColor(Color.White)
        .width(40)
        .height(20)
        .backgroundColor(Color.Orange)
        .borderRadius({
          topLeft:10,
          bottomRight:10
        })
        .textAlign(TextAlign.Center)
        .position({
          x:0,
          y:0
        })



    }
    .height(240)
    .width(168)
    .backgroundColor(Color.Pink)



  }
}
