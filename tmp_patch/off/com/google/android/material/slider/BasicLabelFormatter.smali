.class public final Lcom/google/android/material/slider/BasicLabelFormatter;
.super Ljava/lang/Object;
.source "BasicLabelFormatter.java"

# interfaces
.implements Lcom/google/android/material/slider/LabelFormatter;


# static fields
.field private static final BILLION:I = 0x3b9aca00

.field private static final MILLION:I = 0xf4240

.field private static final THOUSAND:I = 0x3e8

.field private static final TRILLION:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 6

    #@0
    const v0, 0x5368d4a5    # 1.0E12f

    #@3
    cmpl-float v1, p1, v0

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x1

    #@7
    if-ltz v1, :cond_1b

    #@9
    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    div-float/2addr p1, v0

    #@e
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@11
    move-result-object p1

    #@12
    aput-object p1, v3, v2

    #@14
    const-string p1, "%.1fT"

    #@16
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    return-object p1

    #@1b
    :cond_1b
    const v0, 0x4e6e6b28    # 1.0E9f

    #@1e
    cmpl-float v1, p1, v0

    #@20
    if-ltz v1, :cond_34

    #@22
    .line 40
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@24
    new-array v3, v3, [Ljava/lang/Object;

    #@26
    div-float/2addr p1, v0

    #@27
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2a
    move-result-object p1

    #@2b
    aput-object p1, v3, v2

    #@2d
    const-string p1, "%.1fB"

    #@2f
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    return-object p1

    #@34
    :cond_34
    const v0, 0x49742400    # 1000000.0f

    #@37
    cmpl-float v1, p1, v0

    #@39
    if-ltz v1, :cond_4d

    #@3b
    .line 42
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3d
    new-array v3, v3, [Ljava/lang/Object;

    #@3f
    div-float/2addr p1, v0

    #@40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@43
    move-result-object p1

    #@44
    aput-object p1, v3, v2

    #@46
    const-string p1, "%.1fM"

    #@48
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object p1

    #@4c
    return-object p1

    #@4d
    :cond_4d
    const/high16 v0, 0x447a0000    # 1000.0f

    #@4f
    cmpl-float v1, p1, v0

    #@51
    if-ltz v1, :cond_65

    #@53
    .line 44
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@55
    new-array v3, v3, [Ljava/lang/Object;

    #@57
    div-float/2addr p1, v0

    #@58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5b
    move-result-object p1

    #@5c
    aput-object p1, v3, v2

    #@5e
    const-string p1, "%.1fK"

    #@60
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@63
    move-result-object p1

    #@64
    return-object p1

    #@65
    .line 47
    :cond_65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@67
    new-array v1, v3, [Ljava/lang/Object;

    #@69
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6c
    move-result-object p1

    #@6d
    aput-object p1, v1, v2

    #@6f
    const-string p1, "%.0f"

    #@71
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object p1

    #@75
    return-object p1
.end method
