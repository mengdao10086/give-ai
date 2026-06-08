.class Lcom/google/android/material/transition/FadeModeEvaluators;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"


# static fields
.field private static final CROSS:Lcom/google/android/material/transition/FadeModeEvaluator;

.field private static final IN:Lcom/google/android/material/transition/FadeModeEvaluator;

.field private static final OUT:Lcom/google/android/material/transition/FadeModeEvaluator;

.field private static final THROUGH:Lcom/google/android/material/transition/FadeModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 29
    new-instance v0, Lcom/google/android/material/transition/FadeModeEvaluators$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeModeEvaluators$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@7
    .line 40
    new-instance v0, Lcom/google/android/material/transition/FadeModeEvaluators$2;

    #@9
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeModeEvaluators$2;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@e
    .line 51
    new-instance v0, Lcom/google/android/material/transition/FadeModeEvaluators$3;

    #@10
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeModeEvaluators$3;-><init>()V

    #@13
    sput-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@15
    .line 62
    new-instance v0, Lcom/google/android/material/transition/FadeModeEvaluators$4;

    #@17
    invoke-direct {v0}, Lcom/google/android/material/transition/FadeModeEvaluators$4;-><init>()V

    #@1a
    sput-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@1c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static get(IZ)Lcom/google/android/material/transition/FadeModeEvaluator;
    .registers 4

    #@0
    if-eqz p0, :cond_2e

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_26

    #@5
    const/4 p1, 0x2

    #@6
    if-eq p0, p1, :cond_23

    #@8
    const/4 p1, 0x3

    #@9
    if-ne p0, p1, :cond_e

    #@b
    .line 85
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@d
    return-object p0

    #@e
    .line 87
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    const-string v1, "Invalid fade mode: "

    #@14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1

    #@23
    .line 83
    :cond_23
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@25
    return-object p0

    #@26
    :cond_26
    if-eqz p1, :cond_2b

    #@28
    .line 81
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@2a
    goto :goto_2d

    #@2b
    :cond_2b
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@2d
    :goto_2d
    return-object p0

    #@2e
    :cond_2e
    if-eqz p1, :cond_33

    #@30
    .line 79
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@32
    goto :goto_35

    #@33
    :cond_33
    sget-object p0, Lcom/google/android/material/transition/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@35
    :goto_35
    return-object p0
.end method
