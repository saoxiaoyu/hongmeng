import { text } from '@kit.ArkGraphics2D';

@Entry
@Component
struct Index {
  @State num: number = 8888
  @State ColorText : String = '#ffffff'

  build() {
    Column(){
     Column(){
       Image($r('app.media.eyes'))
         .width(200)
       Text('考眼力又来了，你能看到几只鸭子？')

       Row(){
         Row(){
           Image($r('app.media.avatar'))
             .width(20)
           Text('lucky')


         }
         .layoutWeight(1)
         Row() {
           Image($r('app.media.ic_love'))
             .width(20)
             .fillColor(this.ColorText)
           Text(this.num.toString())
             .fontColor(this.ColorText)
         }
         .onClick(()=>{
           this.num+=1


         })
       }
       .padding({left:10,right:10})
     }
     .width(200)
    }
    .width('100%')
    .height('100%')




  }
}
