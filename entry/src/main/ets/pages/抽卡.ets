
interface imagecount{
  url : string
  count : number
}




@Entry
@Component
struct Index {

  @State images : imagecount[] =[
    { url:'app.media.bg_00',count:0 },
    { url:'app.media.bg_01',count:0 },
    { url:'app.media.bg_02',count:0 },
    { url:'app.media.bg_03',count:0 },
    { url:'app.media.bg_04',count:0 },
    { url:'app.media.bg_05',count:0 }
  ]

  //遮罩层级
  @State maskZindex : number =-1
  //遮罩透明度
  @State maskopacity : number =0
  //缩放
  @State imageX : number =0
  @State imageY : number =0

  //卡片索引
  @State imageindex : number = -1

  @State jflage :boolean = false


  build() {
    Stack(){
      Column(){
        Grid(){
          ForEach(this.images,(item:imagecount,index:number)=>{
            GridItem(){
              Column(){
                Badge({
                  count:item.count,
                  position:BadgePosition.RightTop,
                  style:{
                    badgeSize:20,
                    fontSize:16
                  }
                }){
                  Image($r(item.url))
                    .width(100)
                }

              }
            }
          })


        }
        .width('100%')
        .height('500')
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .padding({right:20,left:20})

        Button('立即抽奖')
          .width(100)
          .onClick(()=>{
            this.imageindex=Math.floor(Math.random()*6)
            this.maskZindex=999
            this.maskopacity=1
            this.imageX =1
            this.imageY =1
          })
      }
      .width('100%')
      .height('100%')



      Column({space:40}){
        Text('获得生肖卡')
          .fontSize(30)
          .fontColor(Color.White)
        Image($r(`app.media.img_0${this.imageindex}`))
          .width(200)
          .scale({
            x : this.imageX,
            y: this.imageY
          })
          .animation({
            duration:500
          })
        Button('开心收下')
          .width(vp2px(40))
          .backgroundColor(Color.Transparent)
          .border({width:2})
          .borderColor(Color.White)
          .onClick(()=>{
            this.maskZindex=-1
            this.maskopacity=0
            this.imageX =0
            this.imageY =0
            this.images[this.imageindex]={
              url : `app.media.img_0${this.imageindex}`,
              count:this.images[this.imageindex].count+1
            }
          })

        let flage : boolean =true
        for (let item of this.images) {
          if (item.count == 0) {
            flage = false
            break
          }
        }
        }

        if (this.jflage){
          Column({space:40}) {
            Text('获得手机一部')
              .fontSize(30)
              .fontColor(Color.White)
            Image($r('app.media.hw'))
              .width(200)
              .animation({
                duration: 500
              })
            Button('再来一次')
              .width(vp2px(40))
              .backgroundColor(Color.Transparent)
              .border({ width: 2 })
              .borderColor(Color.White)

          }

          .width('100%')
          .height('100%')
          .justifyContent(FlexAlign.Center)
          .backgroundColor('#cc000000')

        }



      }
      .width('100%')
      .height('100%')
      .backgroundColor('#cc000000')
      .justifyContent(FlexAlign.Center)
      .opacity(this.maskopacity)
      .zIndex(this.maskZindex)
      .animation({
        duration:500
      })



    }
    .width('100%')
    .height('100%')







  }
}