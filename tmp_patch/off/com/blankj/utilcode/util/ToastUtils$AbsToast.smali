.class abstract Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/util/ToastUtils$IToast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsToast"
.end annotation


# instance fields
.field protected mToast:Landroid/widget/Toast;

.field protected mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

.field protected mToastView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;)V
    .registers 5

    #@0
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 793
    new-instance v0, Landroid/widget/Toast;

    #@5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@e
    .line 794
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@10
    .line 796
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$400(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@13
    move-result p1

    #@14
    const/4 v0, -0x1

    #@15
    if-ne p1, v0, :cond_27

    #@17
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@19
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$500(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@1c
    move-result p1

    #@1d
    if-ne p1, v0, :cond_27

    #@1f
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@21
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$600(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@24
    move-result p1

    #@25
    if-eq p1, v0, :cond_3e

    #@27
    .line 797
    :cond_27
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@29
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@2b
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mGravity:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$400(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@2e
    move-result v0

    #@2f
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@31
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mXOffset:I
    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->access$500(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@34
    move-result v1

    #@35
    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@37
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mYOffset:I
    invoke-static {v2}, Lcom/blankj/utilcode/util/ToastUtils;->access$600(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    #@3e
    :cond_3e
    return-void
.end method

.method private processRtlIfNeed()V
    .registers 2

    #@0
    .line 834
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    const/4 v0, -0x1

    #@7
    .line 835
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->getToastViewSnapshot(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    #@e
    :cond_e
    return-void
.end method

.method private setBg(Landroid/widget/TextView;)V
    .registers 7

    #@0
    .line 840
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@2
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$1000(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    const/4 v2, 0x0

    #@8
    if-eq v0, v1, :cond_19

    #@a
    .line 841
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@c
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@e
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I
    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->access$1000(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@15
    .line 842
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    #@18
    goto :goto_83

    #@19
    .line 843
    :cond_19
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@1b
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@1e
    move-result v0

    #@1f
    const v1, -0x1000001

    #@22
    if-eq v0, v1, :cond_83

    #@24
    .line 844
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@26
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v0

    #@2a
    .line 845
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v0, :cond_4a

    #@30
    if-eqz v1, :cond_4a

    #@32
    .line 847
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v0

    #@36
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    #@38
    iget-object v3, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@3a
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I
    invoke-static {v3}, Lcom/blankj/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@3d
    move-result v3

    #@3e
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@40
    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@43
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@46
    .line 848
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    #@49
    goto :goto_83

    #@4a
    :cond_4a
    if-eqz v0, :cond_61

    #@4c
    .line 850
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object p1

    #@50
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@52
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@54
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I
    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@57
    move-result v1

    #@58
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@5a
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@5d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@60
    goto :goto_83

    #@61
    :cond_61
    if-eqz v1, :cond_78

    #@63
    .line 852
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@66
    move-result-object p1

    #@67
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@69
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@6b
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I
    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@6e
    move-result v1

    #@6f
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@71
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@74
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@77
    goto :goto_83

    #@78
    .line 854
    :cond_78
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@7a
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@7c
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@7f
    move-result v0

    #@80
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@83
    :cond_83
    :goto_83
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    .line 862
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 863
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 865
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@a
    .line 866
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@c
    return-void
.end method

.method getToastViewSnapshot(I)Landroid/view/View;
    .registers 6

    #@0
    .line 870
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@2
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    .line 871
    new-instance v1, Landroid/widget/ImageView;

    #@8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@f
    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    const-string v3, "TAG_TOAST"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    #@21
    .line 873
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@24
    return-object v1
.end method

.method public setToastView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 803
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@2
    .line 804
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    #@7
    return-void
.end method

.method public setToastView(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 809
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@2
    # invokes: Lcom/blankj/utilcode/util/ToastUtils;->tryApplyUtilsToastView(Ljava/lang/CharSequence;)Landroid/view/View;
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$700(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 811
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    #@b
    .line 812
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    #@e
    return-void

    #@f
    .line 816
    :cond_f
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    #@11
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@17
    const v1, 0x102000b

    #@1a
    if-eqz v0, :cond_22

    #@1c
    .line 817
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1f
    move-result-object v0

    #@20
    if-nez v0, :cond_2b

    #@22
    .line 818
    :cond_22
    sget v0, Lcom/blankj/utilcode/R$layout;->utils_toast_view:I

    #@24
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->layoutId2View(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    #@2b
    .line 821
    :cond_2b
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/widget/TextView;

    #@33
    .line 822
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@36
    .line 823
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@38
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$800(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@3b
    move-result p1

    #@3c
    const v1, -0x1000001

    #@3f
    if-eq p1, v1, :cond_4a

    #@41
    .line 824
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@43
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$800(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@46
    move-result p1

    #@47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@4a
    .line 826
    :cond_4a
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@4c
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$900(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@4f
    move-result p1

    #@50
    const/4 v1, -0x1

    #@51
    if-eq p1, v1, :cond_5d

    #@53
    .line 827
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    #@55
    # getter for: Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->access$900(Lcom/blankj/utilcode/util/ToastUtils;)I

    #@58
    move-result p1

    #@59
    int-to-float p1, p1

    #@5a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    #@5d
    .line 829
    :cond_5d
    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->setBg(Landroid/widget/TextView;)V

    #@60
    .line 830
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    #@63
    return-void
.end method
