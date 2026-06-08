.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static all()I
    .registers 1

    #@0
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static captionBar()I
    .registers 1

    #@0
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public static displayCutout()I
    .registers 1

    #@0
    const/16 v0, 0x80

    #@2
    return v0
.end method

.method public static ime()I
    .registers 1

    #@0
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method static indexOf(I)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_42

    #@3
    const/4 v1, 0x2

    #@4
    if-eq p0, v1, :cond_41

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p0, v0, :cond_40

    #@9
    const/16 v1, 0x8

    #@b
    if-eq p0, v1, :cond_3e

    #@d
    const/16 v2, 0x10

    #@f
    if-eq p0, v2, :cond_3d

    #@11
    const/16 v0, 0x20

    #@13
    if-eq p0, v0, :cond_3b

    #@15
    const/16 v0, 0x40

    #@17
    if-eq p0, v0, :cond_39

    #@19
    const/16 v0, 0x80

    #@1b
    if-eq p0, v0, :cond_37

    #@1d
    const/16 v0, 0x100

    #@1f
    if-ne p0, v0, :cond_22

    #@21
    return v1

    #@22
    .line 2046
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    #@28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object p0

    #@2f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    const/4 p0, 0x7

    #@38
    return p0

    #@39
    :cond_39
    const/4 p0, 0x6

    #@3a
    return p0

    #@3b
    :cond_3b
    const/4 p0, 0x5

    #@3c
    return p0

    #@3d
    :cond_3d
    return v0

    #@3e
    :cond_3e
    const/4 p0, 0x3

    #@3f
    return p0

    #@40
    :cond_40
    return v1

    #@41
    :cond_41
    return v0

    #@42
    :cond_42
    const/4 p0, 0x0

    #@43
    return p0
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    #@0
    const/16 v0, 0x20

    #@2
    return v0
.end method

.method public static navigationBars()I
    .registers 1

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public static statusBars()I
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static systemBars()I
    .registers 1

    #@0
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public static systemGestures()I
    .registers 1

    #@0
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public static tappableElement()I
    .registers 1

    #@0
    const/16 v0, 0x40

    #@2
    return v0
.end method
