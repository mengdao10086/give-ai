.class public final synthetic Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    #@5
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    #@0
    iget-object v0, p0, Landroidx/core/content/PackageManagerCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    #@2
    invoke-virtual {v0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->disconnectFromService()V

    #@5
    return-void
.end method
