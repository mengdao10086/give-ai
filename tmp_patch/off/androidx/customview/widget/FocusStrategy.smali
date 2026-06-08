.class Landroidx/customview/widget/FocusStrategy;
.super Ljava/lang/Object;
.source "FocusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/FocusStrategy$CollectionAdapter;,
        Landroidx/customview/widget/FocusStrategy$BoundsAdapter;,
        Landroidx/customview/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    #@0
    .line 243
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    .line 244
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    if-nez v1, :cond_2c

    #@b
    if-nez v0, :cond_e

    #@d
    goto :goto_2c

    #@e
    .line 257
    :cond_e
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@11
    move-result v0

    #@12
    const/4 v1, 0x1

    #@13
    if-nez v0, :cond_16

    #@15
    return v1

    #@16
    :cond_16
    const/16 v0, 0x11

    #@18
    if-eq p0, v0, :cond_2b

    #@1a
    const/16 v0, 0x42

    #@1c
    if-ne p0, v0, :cond_1f

    #@1e
    goto :goto_2b

    #@1f
    .line 271
    :cond_1f
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@22
    move-result p2

    #@23
    .line 272
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@26
    move-result p0

    #@27
    if-ge p2, p0, :cond_2a

    #@29
    move v2, v1

    #@2a
    :cond_2a
    return v2

    #@2b
    :cond_2b
    :goto_2b
    return v1

    #@2c
    :cond_2c
    :goto_2c
    return v2
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    #@0
    const/16 v0, 0x11

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eq p0, v0, :cond_2a

    #@6
    const/16 v0, 0x21

    #@8
    if-eq p0, v0, :cond_1b

    #@a
    const/16 v0, 0x42

    #@c
    if-eq p0, v0, :cond_2a

    #@e
    const/16 v0, 0x82

    #@10
    if-ne p0, v0, :cond_13

    #@12
    goto :goto_1b

    #@13
    .line 334
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw p0

    #@1b
    .line 332
    :cond_1b
    :goto_1b
    iget p0, p2, Landroid/graphics/Rect;->right:I

    #@1d
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@1f
    if-lt p0, v0, :cond_28

    #@21
    iget p0, p2, Landroid/graphics/Rect;->left:I

    #@23
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@25
    if-gt p0, p1, :cond_28

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v1, v2

    #@29
    :goto_29
    return v1

    #@2a
    .line 329
    :cond_2a
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    #@2c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@2e
    if-lt p0, v0, :cond_37

    #@30
    iget p0, p2, Landroid/graphics/Rect;->top:I

    #@32
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@34
    if-gt p0, p1, :cond_37

    #@36
    goto :goto_38

    #@37
    :cond_37
    move v1, v2

    #@38
    :goto_38
    return v1
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    #@0
    .line 145
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@5
    const/16 v1, 0x11

    #@7
    const/4 v2, 0x0

    #@8
    if-eq p5, v1, :cond_3e

    #@a
    const/16 v1, 0x21

    #@c
    if-eq p5, v1, :cond_34

    #@e
    const/16 v1, 0x42

    #@10
    if-eq p5, v1, :cond_29

    #@12
    const/16 v1, 0x82

    #@14
    if-ne p5, v1, :cond_21

    #@16
    .line 158
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    neg-int v1, v1

    #@1d
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    #@20
    goto :goto_47

    #@21
    .line 161
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw p0

    #@29
    .line 152
    :cond_29
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@2c
    move-result v1

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    neg-int v1, v1

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@33
    goto :goto_47

    #@34
    .line 155
    :cond_34
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@37
    move-result v1

    #@38
    add-int/lit8 v1, v1, 0x1

    #@3a
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    #@3d
    goto :goto_47

    #@3e
    .line 149
    :cond_3e
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@41
    move-result v1

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@47
    .line 167
    :goto_47
    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    #@4a
    move-result v1

    #@4b
    .line 168
    new-instance v3, Landroid/graphics/Rect;

    #@4d
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@50
    const/4 v4, 0x0

    #@51
    :goto_51
    if-ge v2, v1, :cond_6a

    #@53
    .line 170
    invoke-interface {p1, p0, v2}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    if-ne v5, p3, :cond_5a

    #@59
    goto :goto_67

    #@5a
    .line 176
    :cond_5a
    invoke-interface {p2, v5, v3}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    #@5d
    .line 177
    invoke-static {p5, p4, v3, v0}, Landroidx/customview/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_67

    #@63
    .line 178
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@66
    move-object v4, v5

    #@67
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_51

    #@6a
    :cond_6a
    return-object v4
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroidx/customview/widget/FocusStrategy$CollectionAdapter;Landroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "T",
            "L;",
            "TT;>;",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;TT;IZZ)TT;"
        }
    .end annotation

    #@0
    .line 40
    invoke-interface {p1, p0}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v0, :cond_16

    #@c
    .line 43
    invoke-interface {p1, p0, v2}, Landroidx/customview/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_a

    #@16
    .line 46
    :cond_16
    new-instance p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    #@18
    invoke-direct {p0, p5, p2}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V

    #@1b
    .line 47
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1e
    const/4 p0, 0x1

    #@1f
    if-eq p4, p0, :cond_31

    #@21
    const/4 p0, 0x2

    #@22
    if-ne p4, p0, :cond_29

    #@24
    .line 51
    invoke-static {p3, v1, p6}, Landroidx/customview/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    #@27
    move-result-object p0

    #@28
    return-object p0

    #@29
    .line 55
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    #@2d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw p0

    #@31
    .line 53
    :cond_31
    invoke-static {p3, v1, p6}, Landroidx/customview/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    #@34
    move-result-object p0

    #@35
    return-object p0
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    #@0
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, -0x1

    #@7
    goto :goto_c

    #@8
    .line 65
    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@b
    move-result p0

    #@c
    :goto_c
    add-int/lit8 p0, p0, 0x1

    #@e
    if-ge p0, v0, :cond_15

    #@10
    .line 67
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    :cond_15
    if-eqz p2, :cond_1f

    #@17
    if-lez v0, :cond_1f

    #@19
    const/4 p0, 0x0

    #@1a
    .line 69
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object p0

    #@1e
    return-object p0

    #@1f
    :cond_1f
    const/4 p0, 0x0

    #@20
    return-object p0
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    #@0
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    if-nez p0, :cond_8

    #@6
    move p0, v0

    #@7
    goto :goto_c

    #@8
    .line 80
    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@b
    move-result p0

    #@c
    :goto_c
    add-int/lit8 p0, p0, -0x1

    #@e
    if-ltz p0, :cond_15

    #@10
    .line 82
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    :cond_15
    if-eqz p2, :cond_20

    #@17
    if-lez v0, :cond_20

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 84
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object p0

    #@1f
    return-object p0

    #@20
    :cond_20
    const/4 p0, 0x0

    #@21
    return-object p0
.end method

.method private static getWeightedDistanceFor(II)I
    .registers 3

    #@0
    mul-int/lit8 v0, p0, 0xd

    #@2
    mul-int/2addr v0, p0

    #@3
    mul-int/2addr p1, p1

    #@4
    add-int/2addr v0, p1

    #@5
    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    #@0
    .line 203
    invoke-static {p1, p2, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 209
    :cond_8
    invoke-static {p1, p3, p0}, Landroidx/customview/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@b
    move-result v0

    #@c
    const/4 v2, 0x1

    #@d
    if-nez v0, :cond_10

    #@f
    return v2

    #@10
    .line 214
    :cond_10
    invoke-static {p0, p1, p2, p3}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    return v2

    #@17
    .line 219
    :cond_17
    invoke-static {p0, p1, p3, p2}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    return v1

    #@1e
    .line 226
    :cond_1e
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@21
    move-result v0

    #@22
    .line 227
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@25
    move-result p2

    #@26
    .line 225
    invoke-static {v0, p2}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    #@29
    move-result p2

    #@2a
    .line 229
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@2d
    move-result v0

    #@2e
    .line 230
    invoke-static {p0, p1, p3}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@31
    move-result p0

    #@32
    .line 228
    invoke-static {v0, p0}, Landroidx/customview/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    #@35
    move-result p0

    #@36
    if-ge p2, p0, :cond_39

    #@38
    move v1, v2

    #@39
    :cond_39
    return v1
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 6

    #@0
    const/16 v0, 0x11

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eq p2, v0, :cond_59

    #@6
    const/16 v0, 0x21

    #@8
    if-eq p2, v0, :cond_44

    #@a
    const/16 v0, 0x42

    #@c
    if-eq p2, v0, :cond_2f

    #@e
    const/16 v0, 0x82

    #@10
    if-ne p2, v0, :cond_27

    #@12
    .line 308
    iget p2, p0, Landroid/graphics/Rect;->top:I

    #@14
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@16
    if-lt p2, v0, :cond_1e

    #@18
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    #@1a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@1c
    if-gt p2, v0, :cond_25

    #@1e
    :cond_1e
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    #@20
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@22
    if-ge p0, p1, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v1, v2

    #@26
    :goto_26
    return v1

    #@27
    .line 311
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p0

    #@2f
    .line 302
    :cond_2f
    iget p2, p0, Landroid/graphics/Rect;->left:I

    #@31
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@33
    if-lt p2, v0, :cond_3b

    #@35
    iget p2, p0, Landroid/graphics/Rect;->right:I

    #@37
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@39
    if-gt p2, v0, :cond_42

    #@3b
    :cond_3b
    iget p0, p0, Landroid/graphics/Rect;->right:I

    #@3d
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@3f
    if-ge p0, p1, :cond_42

    #@41
    goto :goto_43

    #@42
    :cond_42
    move v1, v2

    #@43
    :goto_43
    return v1

    #@44
    .line 305
    :cond_44
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    #@46
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@48
    if-gt p2, v0, :cond_50

    #@4a
    iget p2, p0, Landroid/graphics/Rect;->top:I

    #@4c
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@4e
    if-lt p2, v0, :cond_57

    #@50
    :cond_50
    iget p0, p0, Landroid/graphics/Rect;->top:I

    #@52
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@54
    if-le p0, p1, :cond_57

    #@56
    goto :goto_58

    #@57
    :cond_57
    move v1, v2

    #@58
    :goto_58
    return v1

    #@59
    .line 299
    :cond_59
    iget p2, p0, Landroid/graphics/Rect;->right:I

    #@5b
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@5d
    if-gt p2, v0, :cond_65

    #@5f
    iget p2, p0, Landroid/graphics/Rect;->left:I

    #@61
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@63
    if-lt p2, v0, :cond_6c

    #@65
    :cond_65
    iget p0, p0, Landroid/graphics/Rect;->left:I

    #@67
    iget p1, p1, Landroid/graphics/Rect;->left:I

    #@69
    if-le p0, p1, :cond_6c

    #@6b
    goto :goto_6d

    #@6c
    :cond_6c
    move v1, v2

    #@6d
    :goto_6d
    return v1
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    #@0
    const/16 v0, 0x11

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-eq p0, v0, :cond_35

    #@6
    const/16 v0, 0x21

    #@8
    if-eq p0, v0, :cond_2c

    #@a
    const/16 v0, 0x42

    #@c
    if-eq p0, v0, :cond_23

    #@e
    const/16 v0, 0x82

    #@10
    if-ne p0, v0, :cond_1b

    #@12
    .line 351
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    #@14
    iget p1, p2, Landroid/graphics/Rect;->top:I

    #@16
    if-gt p0, p1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v1, v2

    #@1a
    :goto_1a
    return v1

    #@1b
    .line 353
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@1f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p0

    #@23
    .line 347
    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->right:I

    #@25
    iget p1, p2, Landroid/graphics/Rect;->left:I

    #@27
    if-gt p0, p1, :cond_2a

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v1, v2

    #@2b
    :goto_2b
    return v1

    #@2c
    .line 349
    :cond_2c
    iget p0, p1, Landroid/graphics/Rect;->top:I

    #@2e
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    #@30
    if-lt p0, p1, :cond_33

    #@32
    goto :goto_34

    #@33
    :cond_33
    move v1, v2

    #@34
    :goto_34
    return v1

    #@35
    .line 345
    :cond_35
    iget p0, p1, Landroid/graphics/Rect;->left:I

    #@37
    iget p1, p2, Landroid/graphics/Rect;->right:I

    #@39
    if-lt p0, p1, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v1, v2

    #@3d
    :goto_3d
    return v1
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 365
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@4
    move-result p0

    #@5
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result p0

    #@9
    return p0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    #@0
    const/16 v0, 0x11

    #@2
    if-eq p0, v0, :cond_28

    #@4
    const/16 v0, 0x21

    #@6
    if-eq p0, v0, :cond_23

    #@8
    const/16 v0, 0x42

    #@a
    if-eq p0, v0, :cond_1e

    #@c
    const/16 v0, 0x82

    #@e
    if-ne p0, v0, :cond_16

    #@10
    .line 378
    iget p0, p2, Landroid/graphics/Rect;->top:I

    #@12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@14
    :goto_14
    sub-int/2addr p0, p1

    #@15
    return p0

    #@16
    .line 380
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0

    #@1e
    .line 374
    :cond_1e
    iget p0, p2, Landroid/graphics/Rect;->left:I

    #@20
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@22
    goto :goto_14

    #@23
    .line 376
    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->top:I

    #@25
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    #@27
    goto :goto_14

    #@28
    .line 372
    :cond_28
    iget p0, p1, Landroid/graphics/Rect;->left:I

    #@2a
    iget p1, p2, Landroid/graphics/Rect;->right:I

    #@2c
    goto :goto_14
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 392
    invoke-static {p0, p1, p2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@4
    move-result p0

    #@5
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result p0

    #@9
    return p0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    #@0
    const/16 v0, 0x11

    #@2
    if-eq p0, v0, :cond_28

    #@4
    const/16 v0, 0x21

    #@6
    if-eq p0, v0, :cond_23

    #@8
    const/16 v0, 0x42

    #@a
    if-eq p0, v0, :cond_1e

    #@c
    const/16 v0, 0x82

    #@e
    if-ne p0, v0, :cond_16

    #@10
    .line 406
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    #@12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@14
    :goto_14
    sub-int/2addr p0, p1

    #@15
    return p0

    #@16
    .line 408
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw p0

    #@1e
    .line 402
    :cond_1e
    iget p0, p2, Landroid/graphics/Rect;->right:I

    #@20
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@22
    goto :goto_14

    #@23
    .line 404
    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->top:I

    #@25
    iget p1, p2, Landroid/graphics/Rect;->top:I

    #@27
    goto :goto_14

    #@28
    .line 400
    :cond_28
    iget p0, p1, Landroid/graphics/Rect;->left:I

    #@2a
    iget p1, p2, Landroid/graphics/Rect;->left:I

    #@2c
    goto :goto_14
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    #@0
    const/16 v0, 0x11

    #@2
    if-eq p0, v0, :cond_31

    #@4
    const/16 v0, 0x21

    #@6
    if-eq p0, v0, :cond_19

    #@8
    const/16 v0, 0x42

    #@a
    if-eq p0, v0, :cond_31

    #@c
    const/16 v0, 0x82

    #@e
    if-ne p0, v0, :cond_11

    #@10
    goto :goto_19

    #@11
    .line 435
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw p0

    #@19
    .line 432
    :cond_19
    :goto_19
    iget p0, p1, Landroid/graphics/Rect;->left:I

    #@1b
    .line 433
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@1e
    move-result p1

    #@1f
    div-int/lit8 p1, p1, 0x2

    #@21
    add-int/2addr p0, p1

    #@22
    iget p1, p2, Landroid/graphics/Rect;->left:I

    #@24
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@27
    move-result p2

    #@28
    div-int/lit8 p2, p2, 0x2

    #@2a
    add-int/2addr p1, p2

    #@2b
    sub-int/2addr p0, p1

    #@2c
    .line 432
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@2f
    move-result p0

    #@30
    return p0

    #@31
    .line 427
    :cond_31
    iget p0, p1, Landroid/graphics/Rect;->top:I

    #@33
    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@36
    move-result p1

    #@37
    div-int/lit8 p1, p1, 0x2

    #@39
    add-int/2addr p0, p1

    #@3a
    iget p1, p2, Landroid/graphics/Rect;->top:I

    #@3c
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@3f
    move-result p2

    #@40
    div-int/lit8 p2, p2, 0x2

    #@42
    add-int/2addr p1, p2

    #@43
    sub-int/2addr p0, p1

    #@44
    .line 427
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@47
    move-result p0

    #@48
    return p0
.end method
