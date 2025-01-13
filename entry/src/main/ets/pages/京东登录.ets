let title : string = '汉堡'
console.log(title)

@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column(){
      Row(){
        Image($r('app.media.jd_cancel'))
          .width(20)
        Text('帮助')
          .height(16)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left:20,
        right:20,
        top:20
      })
      Image($r('app.media.jd_logo'))
        .width(250)

      Row(){
        Text('国家/地址')
          .layoutWeight(1)
        Text('中国（+86）')

        Image($r('app.media.jd_right'))
          .width(16)

      }
      .backgroundColor(Color.White)
      .borderRadius(20)
      .width(300)
      .height(40)
      .padding({
        left:20,
        right:20,
      })

      Row(){
        TextInput({
          placeholder:'请输入手机号'
        })
      }
      .backgroundColor(Color.White)
      .borderRadius(20)
      .width(300)
      .height(40)
      .margin({
        top:20,
        bottom:20
      })

      Row(){
        Checkbox()
          .width(10)

        Text(){
          Span('我同意')
          Span('用户准则').fontColor(Color.Blue)
          Span('用户规范').fontColor(Color.Blue)
        }
        .lineHeight(16)
      }
      Row(){
        Button('登录')
      }
      .height(vp2px(10))
      .margin({top:25})
      .width('100%')


    }

    .backgroundImage($r('app.media.jd_login_bg'))
    .width('100%')
    .height('100%')
    .backgroundImageSize(ImageSize.Cover)

  }
}
