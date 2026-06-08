.class public final synthetic Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/permissionx/guolindev/request/ChainTask;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/permissionx/guolindev/request/PermissionBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;

    #@5
    iput-boolean p2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$1:Z

    #@7
    iput-object p3, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$2:Lcom/permissionx/guolindev/request/ChainTask;

    #@9
    iput-object p4, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    #@b
    iput-object p5, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$4:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@d
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;

    #@2
    iget-boolean v1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$1:Z

    #@4
    iget-object v2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$2:Lcom/permissionx/guolindev/request/ChainTask;

    #@6
    iget-object v3, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    #@8
    iget-object v4, p0, Lcom/permissionx/guolindev/request/PermissionBuilder$$ExternalSyntheticLambda0;->f$4:Lcom/permissionx/guolindev/request/PermissionBuilder;

    #@a
    move-object v5, p1

    #@b
    invoke-static/range {v0 .. v5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->$r8$lambda$Lryy70HiIObb0uxPBzOJHCEctvI(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    #@e
    return-void
.end method
