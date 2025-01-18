@Entry
@Component
struct Index {
  @State message: string = 'Hello';

  build() {
    Stack({alignContent:Alignment.Bottom}){
      Stack({alignContent:Alignment.Top}){
        Row(){
          Column(){
            Row(){
              Text('北京').fontColor(Color.White)
              Image($r('app.media.zfb_head_down')).fillColor(Color.White)
                .width(15)
            }
            Text('晴 2℃').fontSize(10).fontColor(Color.White)

          }

          .alignItems(HorizontalAlign.Start)
          .margin({right:20})

          Row(){
            Image($r('app.media.zfb_head_search')).width(20).fillColor(Color.Gray)
            Text('北京欢迎你').fontSize(15).layoutWeight(1)
            Text('搜索').border({width:{left:1.5}})
          }
          .backgroundColor(Color.White)
          .height(32)
          .layoutWeight(1)
          .borderRadius(15)
          .padding({
            left:10,right:10
          })

          Image($r('app.media.zfb_head_plus')).width(32).fillColor(Color.White)
            .margin({
              left:12,
              right:5
            })




        }
        .height(65)
        .width('100%')
        .backgroundColor(Color.White)
        .zIndex(999)
        .padding({left:10,right:10,bottom:5})
        .backgroundColor('#5b73de')

        Scroll(){
          Row(){
            Column(){
              Image($r('app.media.zfb_top_scan'))
                .fillColor(Color.White)
                .width(35)
              Text('扫一扫').fontColor(Color.White)

            }
            .layoutWeight(1)

            Column(){
              Image($r('app.media.zfb_top_pay'))
                .fillColor(Color.White)
                .width(35)
              Text('收付款').fontColor(Color.White)

            }
            .layoutWeight(1)

            Column(){
              Image($r('app.media.zfb_top_travel'))
                .fillColor(Color.White)
                .width(35)
              Text('出行').fontColor(Color.White)

            }
            .layoutWeight(1)

            Column(){
              Image($r('app.media.zfb_top_card'))
                .fillColor(Color.White)
                .width(35)
              Text('卡包').fontColor(Color.White)

            }
            .layoutWeight(1)
          }
          .padding({
            top:15,
            bottom:5
          })
          .backgroundColor('#5b73de')







        }
        .padding({
          top:60,bottom:60
        })
      }
      .width('100%')
      .height('100%')






      Row(){
        Column(){
          Image($r('app.media.zfb_tab_home'))
            .width(35)
        }

        Column(){
          Image($r('app.media.zfb_tab_money'))
            .width(28)
          Text('理财')
            .fontSize(12)
        }

        Column(){
          Image($r('app.media.zfb_tab_life'))
            .width(28)
          Text('生活')
            .fontSize(12)
        }

        Column(){
          Image($r('app.media.zfb_tab_chat'))
            .width(28)
          Text('消息')
            .fontSize(12)
        }

        Column(){
          Image($r('app.media.zfb_tab_me'))
            .width(28)
          Text('我的')
            .fontSize(12)
        }


      }
      .height(60)
      .width('100%')
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceAround)



    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)


  }
}
