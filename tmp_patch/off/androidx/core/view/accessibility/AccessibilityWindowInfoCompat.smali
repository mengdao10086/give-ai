.class public Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api33Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api24Impl;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;
    }
.end annotation


# static fields
.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@5
    return-void
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 1

    #@0
    .line 344
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_10

    #@4
    .line 364
    :cond_4
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@6
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@8
    .line 365
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@b
    move-result-object p0

    #@c
    .line 364
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@f
    move-result-object p0

    #@10
    :goto_10
    return-object p0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_18

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_15

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p0, v0, :cond_12

    #@9
    const/4 v0, 0x4

    #@a
    if-eq p0, v0, :cond_f

    #@c
    const-string p0, "<UNKNOWN>"

    #@e
    return-object p0

    #@f
    :cond_f
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    #@11
    return-object p0

    #@12
    :cond_12
    const-string p0, "TYPE_SYSTEM"

    #@14
    return-object p0

    #@15
    :cond_15
    const-string p0, "TYPE_INPUT_METHOD"

    #@17
    return-object p0

    #@18
    :cond_18
    const-string p0, "TYPE_APPLICATION"

    #@1a
    return-object p0
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    #@0
    if-eqz p0, :cond_8

    #@2
    .line 85
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@4
    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    #@7
    return-object v0

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

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
    if-nez p1, :cond_8

    #@7
    return v1

    #@8
    .line 410
    :cond_8
    instance-of v2, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@a
    if-nez v2, :cond_d

    #@c
    return v1

    #@d
    .line 413
    :cond_d
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@f
    .line 414
    iget-object v2, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@11
    if-nez v2, :cond_1a

    #@13
    .line 415
    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@15
    if-nez p1, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v0, v1

    #@19
    :goto_19
    return v0

    #@1a
    .line 417
    :cond_1a
    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result p1

    #@20
    return p1
.end method

.method public getAnchor()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    #@0
    .line 328
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    .line 329
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api24Impl;->getAnchor(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    move-result-object v0

    #@8
    .line 328
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    .line 213
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getBoundsInScreen(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V

    #@7
    return-void
.end method

.method public getChild(I)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 3

    #@0
    .line 280
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getChild(Landroid/view/accessibility/AccessibilityWindowInfo;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@7
    move-result-object p1

    #@8
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    #@0
    .line 265
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getChildCount(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDisplayId()I
    .registers 3

    #@0
    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x21

    #@4
    if-lt v0, v1, :cond_f

    #@6
    .line 299
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@a
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api33Impl;->getDisplayId(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 174
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getId(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getLayer()I
    .registers 2

    #@0
    .line 119
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getLayer(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .registers 2

    #@0
    .line 161
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getParent(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getRegionInScreen(Landroid/graphics/Region;)V
    .registers 4

    #@0
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x21

    #@4
    if-lt v0, v1, :cond_e

    #@6
    .line 193
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@a
    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api33Impl;->getRegionInScreen(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Region;)V

    #@d
    goto :goto_1d

    #@e
    .line 195
    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    .line 196
    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@15
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@17
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getBoundsInScreen(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V

    #@1a
    .line 197
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@1d
    :goto_1d
    return-void
.end method

.method public getRoot()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    #@0
    .line 133
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    .line 134
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getRoot(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7
    move-result-object v0

    #@8
    .line 133
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 314
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api24Impl;->getTitle(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->getType(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 399
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    #@0
    .line 252
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->isAccessibilityFocused(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isActive()Z
    .registers 2

    #@0
    .line 226
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->isActive(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isFocused()Z
    .registers 2

    #@0
    .line 239
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->isFocused(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isInPictureInPictureMode()Z
    .registers 3

    #@0
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x21

    #@4
    if-lt v0, v1, :cond_f

    #@6
    .line 147
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@a
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api33Impl;->isInPictureInPictureMode(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public recycle()V
    .registers 2

    #@0
    .line 381
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api21Impl;->recycle(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    #@7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "AccessibilityWindowInfo[id="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 424
    new-instance v1, Landroid/graphics/Rect;

    #@9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@c
    .line 425
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@f
    .line 427
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    const-string v2, ", type="

    #@18
    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    #@1f
    move-result v3

    #@20
    invoke-static {v3}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    const-string v2, ", layer="

    #@29
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    #@30
    move-result v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    const-string v2, ", bounds="

    #@36
    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    const-string v1, ", focused="

    #@3f
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    #@46
    move-result v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    const-string v1, ", active="

    #@4c
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    #@53
    move-result v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57
    const-string v1, ", hasParent="

    #@59
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    #@60
    move-result-object v2

    #@61
    const/4 v3, 0x1

    #@62
    const/4 v4, 0x0

    #@63
    if-eqz v2, :cond_67

    #@65
    move v2, v3

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v2, v4

    #@68
    :goto_68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6b
    const-string v1, ", hasChildren="

    #@6d
    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    #@74
    move-result v2

    #@75
    if-lez v2, :cond_78

    #@77
    goto :goto_79

    #@78
    :cond_78
    move v3, v4

    #@79
    :goto_79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7c
    const/16 v1, 0x5d

    #@7e
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    return-object v0
.end method

.method public unwrap()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    #@0
    .line 391
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@4
    return-object v0
.end method
