.class public final synthetic Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/fragment/app/FragmentActivity;

    #@5
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/fragment/app/FragmentActivity;

    #@2
    check-cast p1, Landroid/content/Intent;

    #@4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->lambda$init$2$androidx-fragment-app-FragmentActivity(Landroid/content/Intent;)V

    #@7
    return-void
.end method
