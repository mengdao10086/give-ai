.class public final Landroidx/core/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/Insets$Api29Impl;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/core/graphics/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 37
    new-instance v0, Landroidx/core/graphics/Insets;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    #@6
    sput-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@8
    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 5

    #@0
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput p1, p0, Landroidx/core/graphics/Insets;->left:I

    #@5
    .line 46
    iput p2, p0, Landroidx/core/graphics/Insets;->top:I

    #@7
    .line 47
    iput p3, p0, Landroidx/core/graphics/Insets;->right:I

    #@9
    .line 48
    iput p4, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@b
    return-void
.end method

.method public static add(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    .line 90
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@7
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@9
    add-int/2addr v1, v2

    #@a
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@c
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@e
    add-int/2addr v2, v3

    #@f
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@11
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@13
    add-int/2addr p0, p1

    #@14
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    .line 116
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v0

    #@8
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@a
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@12
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@14
    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v2

    #@18
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@1a
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@1c
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result p0

    #@20
    .line 116
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@23
    move-result-object p0

    #@24
    return-object p0
.end method

.method public static min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    .line 130
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v0

    #@8
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@a
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v1

    #@10
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@12
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@14
    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v2

    #@18
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@1a
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@1c
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result p0

    #@20
    .line 130
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@23
    move-result-object p0

    #@24
    return-object p0
.end method

.method public static of(IIII)Landroidx/core/graphics/Insets;
    .registers 5

    #@0
    if-nez p0, :cond_b

    #@2
    if-nez p1, :cond_b

    #@4
    if-nez p2, :cond_b

    #@6
    if-nez p3, :cond_b

    #@8
    .line 65
    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@a
    return-object p0

    #@b
    .line 67
    :cond_b
    new-instance v0, Landroidx/core/graphics/Insets;

    #@d
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    #@10
    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;
    .registers 4

    #@0
    .line 78
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@6
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static subtract(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    .line 103
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@7
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@9
    sub-int/2addr v1, v2

    #@a
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@c
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@e
    sub-int/2addr v2, v3

    #@f
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@11
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@13
    sub-int/2addr p0, p1

    #@14
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@17
    move-result-object p0

    #@18
    return-object p0
.end method

.method public static toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 4

    #@0
    .line 192
    iget v0, p0, Landroid/graphics/Insets;->left:I

    #@2
    iget v1, p0, Landroid/graphics/Insets;->top:I

    #@4
    iget v2, p0, Landroid/graphics/Insets;->right:I

    #@6
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    #@8
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@b
    move-result-object p0

    #@c
    return-object p0
.end method

.method public static wrap(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 182
    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    if-eqz p1, :cond_31

    #@7
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_12

    #@11
    goto :goto_31

    #@12
    .line 147
    :cond_12
    check-cast p1, Landroidx/core/graphics/Insets;

    #@14
    .line 149
    iget v2, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@16
    iget v3, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@18
    if-eq v2, v3, :cond_1b

    #@1a
    return v1

    #@1b
    .line 150
    :cond_1b
    iget v2, p0, Landroidx/core/graphics/Insets;->left:I

    #@1d
    iget v3, p1, Landroidx/core/graphics/Insets;->left:I

    #@1f
    if-eq v2, v3, :cond_22

    #@21
    return v1

    #@22
    .line 151
    :cond_22
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@24
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@26
    if-eq v2, v3, :cond_29

    #@28
    return v1

    #@29
    .line 152
    :cond_29
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    #@2b
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    #@2d
    if-eq v2, p1, :cond_30

    #@2f
    return v1

    #@30
    :cond_30
    return v0

    #@31
    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 159
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 160
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    .line 161
    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    #@b
    add-int/2addr v0, v1

    #@c
    mul-int/lit8 v0, v0, 0x1f

    #@e
    .line 162
    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public toPlatformInsets()Landroid/graphics/Insets;
    .registers 5

    #@0
    .line 202
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@2
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@4
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@6
    iget v3, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@8
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets$Api29Impl;->of(IIII)Landroid/graphics/Insets;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Insets{left="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", top="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", right="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", bottom="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const/16 v1, 0x7d

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method
