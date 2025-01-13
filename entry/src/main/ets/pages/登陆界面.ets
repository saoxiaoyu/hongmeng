let title : string = '汉堡'
console.log(title)

@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column({space:20}){
      Image($r('app.media.m_user'))
        .width(150)
      Text('大王叫我来巡山')
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
      Button('QQ登录')
        .backgroundColor('#87CEFA')
        .width('80%')
        .margin({
          top:30
        })
        .fontWeight(FontWeight.Bold)
      Button('微信登录')
        .backgroundColor(Color.Gray)
        .width('80%')
        .fontWeight(FontWeight.Bold)
    }
    .width('100%')
    .height('100%')

  }
}
