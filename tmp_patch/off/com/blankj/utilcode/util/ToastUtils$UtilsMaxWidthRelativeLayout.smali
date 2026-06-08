.class public final Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UtilsMaxWidthRelativeLayout"
.end annotation


# static fields
.field private static final SPACING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/high16 v0, 0x42a00000    # 80.0f

    #@2
    .line 891
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->dp2px(F)I

    #@5
    move-result v0

    #@6
    sput v0, Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;->SPACING:I

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 894
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    #@0
    .line 898
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 902
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 907
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getAppScreenWidth()I

    #@3
    move-result p1

    #@4
    sget v0, Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;->SPACING:I

    #@6
    sub-int/2addr p1, v0

    #@7
    const/high16 v0, -0x80000000

    #@9
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c
    move-result p1

    #@d
    .line 908
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    #@10
    return-void
.end method
