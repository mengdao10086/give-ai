.class public Lcom/google/android/material/resources/MaterialAttributes;
.super Ljava/lang/Object;
.source "MaterialAttributes.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static resolve(Landroid/content/Context;I)Landroid/util/TypedValue;
    .registers 4

    #@0
    .line 46
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object p0

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@d
    move-result p0

    #@e
    if-eqz p0, :cond_11

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    return-object p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .registers 4

    #@0
    .line 121
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_13

    #@6
    .line 122
    iget p1, p0, Landroid/util/TypedValue;->type:I

    #@8
    const/16 v0, 0x12

    #@a
    if-ne p1, v0, :cond_13

    #@c
    .line 123
    iget p0, p0, Landroid/util/TypedValue;->data:I

    #@e
    if-eqz p0, :cond_12

    #@10
    const/4 p2, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 p2, 0x0

    #@13
    :cond_13
    :goto_13
    return p2
.end method

.method public static resolveBooleanOrThrow(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 3

    #@0
    .line 112
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method

.method public static resolveDimension(Landroid/content/Context;II)I
    .registers 5

    #@0
    .line 153
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_1a

    #@6
    .line 154
    iget v0, p1, Landroid/util/TypedValue;->type:I

    #@8
    const/4 v1, 0x5

    #@9
    if-eq v0, v1, :cond_c

    #@b
    goto :goto_1a

    #@c
    .line 157
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object p0

    #@10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object p0

    #@14
    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@17
    move-result p0

    #@18
    :goto_18
    float-to-int p0, p0

    #@19
    return p0

    #@1a
    .line 155
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object p0

    #@1e
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    #@21
    move-result p0

    #@22
    goto :goto_18
.end method

.method public static resolveInteger(Landroid/content/Context;II)I
    .registers 4

    #@0
    .line 133
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_e

    #@6
    .line 134
    iget p1, p0, Landroid/util/TypedValue;->type:I

    #@8
    const/16 v0, 0x10

    #@a
    if-ne p1, v0, :cond_e

    #@c
    .line 135
    iget p2, p0, Landroid/util/TypedValue;->data:I

    #@e
    :cond_e
    return p2
.end method

.method public static resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I
    .registers 3

    #@0
    .line 142
    sget v0, Lcom/google/android/material/R$attr;->minTouchTargetSize:I

    #@2
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    #@4
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveDimension(Landroid/content/Context;II)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I
    .registers 3

    #@0
    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    #@3
    move-result-object p0

    #@4
    iget p0, p0, Landroid/util/TypedValue;->data:I

    #@6
    return p0
.end method

.method public static resolveOrThrow(Landroid/view/View;I)I
    .registers 2

    #@0
    .line 100
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;

    #@3
    move-result-object p0

    #@4
    iget p0, p0, Landroid/util/TypedValue;->data:I

    #@6
    return p0
.end method

.method public static resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;
    .registers 6

    #@0
    .line 65
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object v0

    #@7
    .line 71
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const/4 v1, 0x2

    #@a
    new-array v1, v1, [Ljava/lang/Object;

    #@c
    const/4 v2, 0x0

    #@d
    aput-object p2, v1, v2

    #@f
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object p0

    #@13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@16
    move-result-object p0

    #@17
    const/4 p1, 0x1

    #@18
    aput-object p0, v1, p1

    #@1a
    const-string p0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    #@1c
    .line 72
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public static resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;
    .registers 3

    #@0
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 56
    invoke-static {v0, p1, p0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method
