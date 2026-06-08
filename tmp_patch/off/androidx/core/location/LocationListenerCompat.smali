.class public interface abstract Landroidx/core/location/LocationListenerCompat;
.super Ljava/lang/Object;
.source "LocationListenerCompat.java"

# interfaces
.implements Landroid/location/LocationListener;


# virtual methods
.method public onFlushComplete(I)V
    .registers 2

    #@0
    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_13

    #@7
    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/location/Location;

    #@d
    invoke-interface {p0, v2}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Landroid/location/Location;)V

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_5

    #@13
    :cond_13
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    #@0
    return-void
.end method
