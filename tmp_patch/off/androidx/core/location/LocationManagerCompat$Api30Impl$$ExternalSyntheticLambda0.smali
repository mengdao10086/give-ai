.class public final synthetic Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    #@5
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    #@2
    check-cast p1, Landroid/location/Location;

    #@4
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@7
    return-void
.end method
