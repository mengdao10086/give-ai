.class public final Landroidx/core/content/ContentProviderCompat;
.super Ljava/lang/Object;
.source "ContentProviderCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static requireContext(Landroid/content/ContentProvider;)Landroid/content/Context;
    .registers 2

    #@0
    .line 45
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_7

    #@6
    return-object p0

    #@7
    .line 47
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    #@9
    const-string v0, "Cannot find context from the provider."

    #@b
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw p0
.end method
