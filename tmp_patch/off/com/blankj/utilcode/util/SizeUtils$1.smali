.class Lcom/blankj/utilcode/util/SizeUtils$1;
.super Ljava/lang/Object;
.source "SizeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/SizeUtils;->forceGetViewSize(Landroid/view/View;Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;Landroid/view/View;)V
    .registers 3

    #@0
    .line 112
    iput-object p1, p0, Lcom/blankj/utilcode/util/SizeUtils$1;->val$listener:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

    #@2
    iput-object p2, p0, Lcom/blankj/utilcode/util/SizeUtils$1;->val$view:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    .line 115
    iget-object v0, p0, Lcom/blankj/utilcode/util/SizeUtils$1;->val$listener:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 116
    iget-object v1, p0, Lcom/blankj/utilcode/util/SizeUtils$1;->val$view:Landroid/view/View;

    #@6
    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;->onGetSize(Landroid/view/View;)V

    #@9
    :cond_9
    return-void
.end method
