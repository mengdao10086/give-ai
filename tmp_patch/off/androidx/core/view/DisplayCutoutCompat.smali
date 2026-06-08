.class public final Landroidx/core/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCutoutCompat$Api29Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api30Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
    }
.end annotation


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    invoke-static {p1, p2}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-direct {p0, p1}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    #@f
    return-void
.end method

.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .registers 2

    #@0
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iput-object p1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@5
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V
    .registers 7

    #@0
    .line 77
    invoke-static/range {p1 .. p6}, Landroidx/core/view/DisplayCutoutCompat;->constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    #@7
    return-void
.end method

.method private static constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;
    .registers 14

    #@0
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_17

    #@6
    .line 85
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    #@9
    move-result-object v2

    #@a
    .line 86
    invoke-virtual {p5}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    #@d
    move-result-object v7

    #@e
    move-object v3, p1

    #@f
    move-object v4, p2

    #@10
    move-object v5, p3

    #@11
    move-object v6, p4

    #@12
    .line 85
    invoke-static/range {v2 .. v7}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    #@15
    move-result-object p0

    #@16
    return-object p0

    #@17
    .line 87
    :cond_17
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@19
    const/16 v0, 0x1d

    #@1b
    if-lt p5, v0, :cond_26

    #@1d
    .line 88
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    #@20
    move-result-object p0

    #@21
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/DisplayCutoutCompat$Api29Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    #@24
    move-result-object p0

    #@25
    return-object p0

    #@26
    .line 90
    :cond_26
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@28
    const/16 v0, 0x1c

    #@2a
    if-lt p5, v0, :cond_57

    #@2c
    .line 91
    new-instance p5, Landroid/graphics/Rect;

    #@2e
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    #@30
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    #@32
    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    #@34
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    #@36
    invoke-direct {p5, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@39
    .line 93
    new-instance p0, Ljava/util/ArrayList;

    #@3b
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3e
    if-eqz p1, :cond_43

    #@40
    .line 95
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    :cond_43
    if-eqz p2, :cond_48

    #@45
    .line 98
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    :cond_48
    if-eqz p3, :cond_4d

    #@4a
    .line 101
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d
    :cond_4d
    if-eqz p4, :cond_52

    #@4f
    .line 104
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 106
    :cond_52
    invoke-static {p5, p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    #@55
    move-result-object p0

    #@56
    return-object p0

    #@57
    :cond_57
    const/4 p0, 0x0

    #@58
    return-object p0
.end method

.method static wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_a

    #@4
    .line 213
    :cond_4
    new-instance v0, Landroidx/core/view/DisplayCutoutCompat;

    #@6
    invoke-direct {v0, p0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    #@9
    move-object p0, v0

    #@a
    :goto_a
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-ne p0, p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    :cond_4
    if-eqz p1, :cond_1c

    #@6
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_11

    #@10
    goto :goto_1c

    #@11
    .line 197
    :cond_11
    check-cast p1, Landroidx/core/view/DisplayCutoutCompat;

    #@13
    .line 198
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@15
    iget-object p1, p1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@17
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result p1

    #@1b
    return p1

    #@1c
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    #@1d
    return p1
.end method

.method public getBoundingRects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 164
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 166
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getSafeInsetBottom()I
    .registers 3

    #@0
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 128
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetBottom(Landroid/view/DisplayCutout;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getSafeInsetLeft()I
    .registers 3

    #@0
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 137
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetLeft(Landroid/view/DisplayCutout;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getSafeInsetRight()I
    .registers 3

    #@0
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 146
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetRight(Landroid/view/DisplayCutout;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getSafeInsetTop()I
    .registers 3

    #@0
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 119
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetTop(Landroid/view/DisplayCutout;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_11

    #@6
    .line 183
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@8
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 185
    :cond_11
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@13
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 203
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "DisplayCutoutCompat{"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "}"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method unwrap()Landroid/view/DisplayCutout;
    .registers 2

    #@0
    .line 218
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    #@2
    return-object v0
.end method
