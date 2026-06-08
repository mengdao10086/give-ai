.class Lcom/blankj/utilcode/util/KeyboardUtils$2;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decorViewInvisibleHeightPre:[I

.field final synthetic val$listener:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 4

    #@0
    .line 236
    iput-object p1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    #@4
    iput-object p3, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$listener:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    #@0
    .line 239
    iget-object v0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    #@2
    # invokes: Lcom/blankj/utilcode/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$000(Landroid/view/Window;)I

    #@5
    move-result v0

    #@6
    .line 240
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    #@8
    const/4 v2, 0x0

    #@9
    aget v1, v1, v2

    #@b
    if-eq v1, v0, :cond_16

    #@d
    .line 241
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$listener:Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    #@f
    invoke-interface {v1, v0}, Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    #@12
    .line 242
    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    #@14
    aput v0, v1, v2

    #@16
    :cond_16
    return-void
.end method
