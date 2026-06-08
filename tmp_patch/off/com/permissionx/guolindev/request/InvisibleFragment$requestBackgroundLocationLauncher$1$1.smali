.class final Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InvisibleFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/permissionx/guolindev/request/InvisibleFragment;->requestBackgroundLocationLauncher$lambda-1(Lcom/permissionx/guolindev/request/InvisibleFragment;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $granted:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method constructor <init>(Lcom/permissionx/guolindev/request/InvisibleFragment;Ljava/lang/Boolean;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2
    iput-object p2, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;->$granted:Ljava/lang/Boolean;

    #@4
    const/4 p1, 0x0

    #@5
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    #@8
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    #@0
    .line 69
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;->invoke()V

    #@3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    #@5
    return-object v0
.end method

.method public final invoke()V
    .registers 4

    #@0
    .line 70
    iget-object v0, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;->this$0:Lcom/permissionx/guolindev/request/InvisibleFragment;

    #@2
    iget-object v1, p0, Lcom/permissionx/guolindev/request/InvisibleFragment$requestBackgroundLocationLauncher$1$1;->$granted:Ljava/lang/Boolean;

    #@4
    const-string v2, "granted"

    #@6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v1

    #@d
    # invokes: Lcom/permissionx/guolindev/request/InvisibleFragment;->onRequestBackgroundLocationPermissionResult(Z)V
    invoke-static {v0, v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->access$onRequestBackgroundLocationPermissionResult(Lcom/permissionx/guolindev/request/InvisibleFragment;Z)V

    #@10
    return-void
.end method
