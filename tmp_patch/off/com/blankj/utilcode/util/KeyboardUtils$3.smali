.class Lcom/blankj/utilcode/util/KeyboardUtils$3;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentViewChild:Landroid/view/View;

.field final synthetic val$contentViewInvisibleHeightPre5497:[I

.field final synthetic val$paddingBottom:I

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILandroid/view/View;I)V
    .registers 5

    #@0
    .line 294
    iput-object p1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    #@4
    iput-object p3, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    #@6
    iput p4, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$paddingBottom:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 9

    #@0
    .line 297
    iget-object v0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    #@2
    # invokes: Lcom/blankj/utilcode/util/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$100(Landroid/view/Window;)I

    #@5
    move-result v0

    #@6
    .line 298
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    #@8
    const/4 v2, 0x0

    #@9
    aget v1, v1, v2

    #@b
    if-eq v1, v0, :cond_2f

    #@d
    .line 299
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    #@f
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    #@12
    move-result v3

    #@13
    iget-object v4, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    #@15
    .line 300
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    #@18
    move-result v4

    #@19
    iget-object v5, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    #@1b
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    #@1e
    move-result v5

    #@1f
    iget v6, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$paddingBottom:I

    #@21
    iget-object v7, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    #@23
    .line 301
    # invokes: Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I
    invoke-static {v7}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$000(Landroid/view/Window;)I

    #@26
    move-result v7

    #@27
    add-int/2addr v6, v7

    #@28
    .line 299
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    #@2b
    .line 302
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    #@2d
    aput v0, v1, v2

    #@2f
    :cond_2f
    return-void
.end method
