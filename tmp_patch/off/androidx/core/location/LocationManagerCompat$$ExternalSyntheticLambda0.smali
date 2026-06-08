.class public final synthetic Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/location/LocationManager;

.field public final synthetic f$1:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager;

    #@5
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    #@7
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager;

    #@2
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    #@4
    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat;->lambda$registerGnssStatusCallback$1(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
