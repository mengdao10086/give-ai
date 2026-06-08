.class public final synthetic Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    #@5
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    #@0
    iget-object v0, p0, Landroidx/core/app/ActivityCompat$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    #@2
    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->lambda$recreate$0(Landroid/app/Activity;)V

    #@5
    return-void
.end method
