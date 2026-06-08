.class public final Landroidx/core/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .registers 1

    #@0
    .line 42
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3
    move-result-object p0

    #@4
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@6
    return p0
.end method
