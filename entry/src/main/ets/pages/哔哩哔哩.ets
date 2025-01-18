@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column(){
      Column(){
        Stack(){
          Image($r('app.media.bz_img'))
            .width(200)
            .height(125)
          Row(){
            Image($r('app.media.bz_play'))
              .width(14)
              .fillColor(Color.White)
            Text('288万').fontColor(Color.White).fontWeight(FontWeight.Bold).fontSize(10)
              .margin({
                left:3
              })

            Image($r('app.media.bz_msg'))
              .margin({
                left:10
              })
              .width(14)
              .fillColor(Color.White)
            Text('8655').fontColor(Color.White).fontWeight(FontWeight.Bold).fontSize(10)
              .margin({
                left:3,
                right:75
              })



            Text('4:33').fontColor(Color.White).fontWeight(FontWeight.Bold).fontSize(10)


          }
          .height(24)
          .padding(5)

        }
        .alignContent(Alignment.BottomStart)

        Text('法庭上根本不他让我帮他我虽然不是八十八啊人格人格股权认购FTHBRSR')
          .maxLines(2)
          .textOverflow({overflow:TextOverflow.Ellipsis})
          .lineHeight(16)
          .margin(10)
          .fontSize(13)
        Row(){
          Text('10万电子')
            .backgroundColor(Color.Orange)
            .fontSize(13)

          Blank()

          Image($r('app.media.bz_more'))
            .width(10)
        }
        .justifyContent(FlexAlign.Start)
        .width('100%')
        .padding({
          left:10,
          right:10
        })

      }
      .width(200)
      .height(200)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)



  }
}
