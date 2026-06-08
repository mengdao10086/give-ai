.class abstract Landroidx/databinding/BaseObservableField;
.super Landroidx/databinding/BaseObservable;
.source "BaseObservableField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/BaseObservableField$DependencyCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 8
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    #@3
    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .registers 5

    #@0
    .line 11
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    #@3
    if-eqz p1, :cond_19

    #@5
    .line 12
    array-length v0, p1

    #@6
    if-eqz v0, :cond_19

    #@8
    .line 13
    new-instance v0, Landroidx/databinding/BaseObservableField$DependencyCallback;

    #@a
    invoke-direct {v0, p0}, Landroidx/databinding/BaseObservableField$DependencyCallback;-><init>(Landroidx/databinding/BaseObservableField;)V

    #@d
    const/4 v1, 0x0

    #@e
    .line 15
    :goto_e
    array-length v2, p1

    #@f
    if-ge v1, v2, :cond_19

    #@11
    .line 16
    aget-object v2, p1, v1

    #@13
    invoke-interface {v2, v0}, Landroidx/databinding/Observable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_e

    #@19
    :cond_19
    return-void
.end method
