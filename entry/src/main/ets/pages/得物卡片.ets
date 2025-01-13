let title : string = '汉堡'
console.log(title)

@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column(){
      Column(){
        Image($r('app.media.nick'))
          .width(250)
          .borderRadius({
            topLeft:10,
            topRight:10
          })
      Column(){
        Text('今晚吃这个|每日艺术分享')
          .fontWeight(FontWeight.Bold)
          .fontSize(18)
        Text('NO.43')
          .fontWeight(FontWeight.Bold)
          .fontSize(20)
      }
      .padding(10)
      .alignItems(HorizontalAlign.Start)

        Row() {
          Row(){
            Image($r('app.media.user'))
              .width(20)
              .borderRadius(10)
            Text('插画师分享聚集地')
              .fontSize(15)
          }
          .justifyContent(FlexAlign.Start)
          .width('100%')
          .layoutWeight(1)

          Row(){
            Image($r('app.media.ic_like'))
              .width(10)
            Text('2300')
              .fontSize(15)
          }
          .backgroundColor(Color.White)
          .borderRadius(10)



        }



      }
      .width(250)
      .backgroundColor(Color.White)
      .padding({
        right:5,
        left:5,
        bottom:10
      })




    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Pink)
  }
}
