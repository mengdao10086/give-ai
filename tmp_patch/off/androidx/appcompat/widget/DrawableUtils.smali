.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DrawableUtils$Api29Impl;,
        Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const v1, 0x10100a0

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 50
    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    #@b
    new-array v0, v2, [I

    #@d
    .line 51
    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    #@f
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    #@16
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    #@0
    const/4 p0, 0x1

    #@1
    return p0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@a
    const/16 v2, 0x1d

    #@c
    if-lt v1, v2, :cond_1f

    #@e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v2, 0x1f

    #@12
    if-ge v1, v2, :cond_1f

    #@14
    const-string v1, "android.graphics.drawable.ColorStateListDrawable"

    #@16
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1f

    #@1c
    .line 98
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V

    #@1f
    :cond_1f
    return-void
.end method

.method private static forceDrawableStateChange(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 150
    array-length v1, v0

    #@7
    if-nez v1, :cond_a

    #@9
    goto :goto_10

    #@a
    .line 155
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    #@c
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@f
    goto :goto_15

    #@10
    .line 152
    :cond_10
    :goto_10
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    #@12
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@15
    .line 158
    :goto_15
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 5

    #@0
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_18

    #@6
    .line 66
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils$Api29Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Insets;

    #@9
    move-result-object p0

    #@a
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    #@c
    iget v1, p0, Landroid/graphics/Insets;->left:I

    #@e
    iget v2, p0, Landroid/graphics/Insets;->top:I

    #@10
    iget v3, p0, Landroid/graphics/Insets;->right:I

    #@12
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    #@14
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@17
    return-object v0

    #@18
    .line 74
    :cond_18
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object p0

    #@1c
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    #@1f
    move-result-object p0

    #@20
    return-object p0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p0, v0, :cond_1d

    #@3
    const/4 v0, 0x5

    #@4
    if-eq p0, v0, :cond_1a

    #@6
    const/16 v0, 0x9

    #@8
    if-eq p0, v0, :cond_17

    #@a
    packed-switch p0, :pswitch_data_20

    #@d
    return-object p1

    #@e
    .line 177
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@10
    return-object p0

    #@11
    .line 175
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@13
    return-object p0

    #@14
    .line 173
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@16
    return-object p0

    #@17
    .line 171
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@19
    return-object p0

    #@1a
    .line 169
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@1c
    return-object p0

    #@1d
    .line 167
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@1f
    return-object p0

    #@20
    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
