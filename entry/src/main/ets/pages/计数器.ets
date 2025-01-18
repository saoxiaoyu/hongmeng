@Entry
@Component
struct Index {
  @State num: number = 1;

  build() {
    Column(){
      Row(){
        Button('-')
          .width(vp2px(20))
          .height(vp2px(20))
          .fontSize(30)
          .onClick(() => {
            this.num -= 1
          })
        Text(this.num.toString())
          .width(50)
          .height(50)
          .textAlign(TextAlign.Center)
        Button('+')
          .width(vp2px(20))
          .height(vp2px(20))
          .fontSize(30)
          .onClick(() => {
            this.num += 1
          })
      }
    }
    .width('100%')
    .height('100%')




  }
}
