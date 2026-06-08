.class Landroidx/constraintlayout/utils/widget/ImageFilterView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    #@0
    .line 693
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    #@2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    #@0
    .line 696
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    #@2
    invoke-virtual {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    #@5
    move-result v3

    #@6
    .line 697
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    #@8
    invoke-virtual {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    #@b
    move-result v4

    #@c
    .line 698
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    int-to-float p1, p1

    #@11
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    #@13
    # getter for: Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F
    invoke-static {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->access$000(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F

    #@16
    move-result v0

    #@17
    mul-float/2addr p1, v0

    #@18
    const/high16 v0, 0x40000000    # 2.0f

    #@1a
    div-float v5, p1, v0

    #@1c
    const/4 v1, 0x0

    #@1d
    const/4 v2, 0x0

    #@1e
    move-object v0, p2

    #@1f
    .line 699
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@22
    return-void
.end method
