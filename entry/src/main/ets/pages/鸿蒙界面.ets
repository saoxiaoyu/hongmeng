let title : string = '汉堡'
console.log(title)

@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Column({space:30}){
      Image($r('app.media.huawei'))
        .width(100)

      TextInput({
        placeholder:'请输入账号'
      })

      TextInput({
        placeholder:'请输入密码'
      })
        .type(InputType.Password)

      Button('登录')
        .width(250)

      Row({space:25}){
        Text('前往注册')
          .fontWeight(FontWeight.Bold)
        Text('忘记密码')
          .fontWeight(FontWeight.Bold)
      }
    }
    .margin(10)
    .height('100%')

  }
}
