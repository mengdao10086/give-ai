.class public final synthetic Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;->f$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    #@5
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    #@0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda2;->f$0:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    #@2
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cancel()V

    #@5
    return-void
.end method
