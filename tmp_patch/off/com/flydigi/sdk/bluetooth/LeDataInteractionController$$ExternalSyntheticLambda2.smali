.class public final synthetic Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;


# direct methods
.method public synthetic constructor <init>(Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;[BLcom/flydigi/sdk/bluetooth/LeDataInteractionController;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$0:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@5
    iput-object p2, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$1:[B

    #@7
    iput-object p3, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$2:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@9
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$0:Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;

    #@2
    iget-object v1, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$1:[B

    #@4
    iget-object v2, p0, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController$$ExternalSyntheticLambda2;->f$2:Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;

    #@6
    invoke-static {v0, v1, v2}, Lcom/flydigi/sdk/bluetooth/LeDataInteractionController;->$r8$lambda$M8wnp4MtRSECE4q2tqOKL9oxG-Q(Lcom/flydigi/sdk/bluetooth/ota/OtaFactory;[BLcom/flydigi/sdk/bluetooth/LeDataInteractionController;)V

    #@9
    return-void
.end method
