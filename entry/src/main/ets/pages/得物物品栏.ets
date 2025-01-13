let title : string = '汉堡'
console.log(title)

@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column(){
      Row(){
        Column({space:10}){
          Text('超好玩')
            .fontWeight(FontWeight.Bold)
            .fontSize(25)
          Text('签到兑礼|超多大奖 超好玩')
            .fontWeight(FontWeight.Regular)
            .fontSize(15)
            .fontColor(Color.Gray)

        }
        .alignItems(HorizontalAlign.Start)
        Row(){
          Image($r('app.media.tree'))
            .width('80')
            .backgroundColor(Color.Gray)
            .borderRadius(25)
          Image($r('app.media.ic_arrow_right'))
            .width('25')
            .fillColor(Color.White)
            .margin({left:20})
        }


      }
      .width('100%')
      // .height(200)
      .padding(10)
      .borderRadius(10)
      .backgroundColor(Color.Pink)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(20)
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Gray)
  }
}
