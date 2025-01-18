


@Entry
@Component


struct Index3 {
  @State scroller_y :number = 0

  myscroller : Scroller = new Scroller()
  build() {
    Column() {
      Stack({ alignContent: Alignment.BottomEnd }) {
        // 顶部滚动区域
        Scroll(this.myscroller) {
          Column() {
            Image($r('app.media.ic_jd_scroll_01'))
            Image($r('app.media.ic_jd_scroll_02'))
            Image($r('app.media.ic_jd_scroll_03'))
          }
        }
        .scrollBar(BarState.Off)
        .width('100%')
        .backgroundColor(Color.Orange)
        .onWillScroll(()=>{
          this.scroller_y=this.myscroller.currentOffset().yOffset
        })

        if (this.scroller_y>400){
          Image($r('app.media.ic_jd_rocket'))
            .width(40)
            .backgroundColor(Color.White)
            .borderRadius(20)
            .padding(5)// .margin({right:20,bottom:20})
            .offset({ x: -20, y: -20 })
            .onClick(()=>{
              this.myscroller.scrollEdge(Edge.Top)
            })
        }


      }
      .layoutWeight(1)

      // 底部 tabbar 图片(后面会学)
      Image($r('app.media.ic_jd_tab'))
        .width('100%')
    }
  }
}