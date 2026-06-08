.class public Landroidx/constraintlayout/core/state/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# static fields
.field private static final sRegistry:Landroidx/constraintlayout/core/state/Registry;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/RegistryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 23
    new-instance v0, Landroidx/constraintlayout/core/state/Registry;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Registry;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@a
    return-void
.end method

.method public static getInstance()Landroidx/constraintlayout/core/state/Registry;
    .registers 1

    #@0
    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    #@2
    return-object v0
.end method


# virtual methods
.method public currentContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 56
    invoke-interface {p1}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentMotionScene()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return-object p1
.end method

.method public currentLayoutInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 64
    invoke-interface {p1}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentLayoutInformation()Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return-object p1
.end method

.method public getLastModified(Ljava/lang/String;)J
    .registers 4

    #@0
    .line 88
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 90
    invoke-interface {p1}, Landroidx/constraintlayout/core/state/RegistryCallback;->getLastModified()J

    #@d
    move-result-wide v0

    #@e
    return-wide v0

    #@f
    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    #@14
    return-wide v0
.end method

.method public getLayoutList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public register(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 4

    #@0
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public setDrawDebug(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 72
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setDrawDebug(I)V

    #@d
    :cond_d
    return-void
.end method

.method public setLayoutInformationMode(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 79
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setLayoutInformationMode(I)V

    #@d
    :cond_d
    return-void
.end method

.method public unregister(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 3

    #@0
    .line 36
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 42
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onNewMotionScene(Ljava/lang/String;)V

    #@d
    :cond_d
    return-void
.end method

.method public updateDimensions(Ljava/lang/String;II)V
    .registers 5

    #@0
    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 98
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/state/RegistryCallback;->onDimensions(II)V

    #@d
    :cond_d
    return-void
.end method

.method public updateProgress(Ljava/lang/String;F)V
    .registers 4

    #@0
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/state/RegistryCallback;

    #@8
    if-eqz p1, :cond_d

    #@a
    .line 49
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onProgress(F)V

    #@d
    :cond_d
    return-void
.end method
