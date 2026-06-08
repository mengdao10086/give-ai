.class Lcom/google/android/material/color/DynamicColors$2;
.super Ljava/lang/Object;
.source "DynamicColors.java"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private version:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isSupported()Z
    .registers 8

    #@0
    .line 63
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColors$2;->version:Ljava/lang/Long;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-nez v0, :cond_37

    #@6
    .line 65
    :try_start_6
    const-class v0, Landroid/os/Build;

    #@8
    const-string v3, "getLong"

    #@a
    new-array v4, v2, [Ljava/lang/Class;

    #@c
    const-class v5, Ljava/lang/String;

    #@e
    aput-object v5, v4, v1

    #@10
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v0

    #@14
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@17
    new-array v3, v2, [Ljava/lang/Object;

    #@19
    const-string v4, "ro.build.version.oneui"

    #@1b
    aput-object v4, v3, v1

    #@1d
    const/4 v4, 0x0

    #@1e
    .line 67
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/Long;

    #@24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v3

    #@28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColors$2;->version:Ljava/lang/Long;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_2f

    #@2e
    goto :goto_37

    #@2f
    :catch_2f
    const-wide/16 v3, -0x1

    #@31
    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColors$2;->version:Ljava/lang/Long;

    #@37
    .line 72
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColors$2;->version:Ljava/lang/Long;

    #@39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3c
    move-result-wide v3

    #@3d
    const-wide/32 v5, 0x9ca4

    #@40
    cmp-long v0, v3, v5

    #@42
    if-ltz v0, :cond_45

    #@44
    move v1, v2

    #@45
    :cond_45
    return v1
.end method
