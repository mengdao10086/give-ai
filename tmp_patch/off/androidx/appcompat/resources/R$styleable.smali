.class public final Landroidx/appcompat/resources/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/resources/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnimatedStateListDrawableCompat:[I

.field public static final AnimatedStateListDrawableCompat_android_constantSize:I = 0x3

.field public static final AnimatedStateListDrawableCompat_android_dither:I = 0x0

.field public static final AnimatedStateListDrawableCompat_android_enterFadeDuration:I = 0x4

.field public static final AnimatedStateListDrawableCompat_android_exitFadeDuration:I = 0x5

.field public static final AnimatedStateListDrawableCompat_android_variablePadding:I = 0x2

.field public static final AnimatedStateListDrawableCompat_android_visible:I = 0x1

.field public static final AnimatedStateListDrawableItem:[I

.field public static final AnimatedStateListDrawableItem_android_drawable:I = 0x1

.field public static final AnimatedStateListDrawableItem_android_id:I = 0x0

.field public static final AnimatedStateListDrawableTransition:[I

.field public static final AnimatedStateListDrawableTransition_android_drawable:I = 0x0

.field public static final AnimatedStateListDrawableTransition_android_fromId:I = 0x2

.field public static final AnimatedStateListDrawableTransition_android_reversible:I = 0x3

.field public static final AnimatedStateListDrawableTransition_android_toId:I = 0x1

.field public static final StateListDrawable:[I

.field public static final StateListDrawableItem:[I

.field public static final StateListDrawableItem_android_drawable:I = 0x0

.field public static final StateListDrawable_android_constantSize:I = 0x3

.field public static final StateListDrawable_android_dither:I = 0x0

.field public static final StateListDrawable_android_enterFadeDuration:I = 0x4

.field public static final StateListDrawable_android_exitFadeDuration:I = 0x5

.field public static final StateListDrawable_android_variablePadding:I = 0x2

.field public static final StateListDrawable_android_visible:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x6

    #@1
    new-array v1, v0, [I

    #@3
    fill-array-data v1, :array_2c

    #@6
    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    #@8
    const/4 v1, 0x2

    #@9
    new-array v1, v1, [I

    #@b
    fill-array-data v1, :array_3c

    #@e
    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    #@10
    const/4 v1, 0x4

    #@11
    new-array v1, v1, [I

    #@13
    fill-array-data v1, :array_44

    #@16
    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    #@18
    new-array v0, v0, [I

    #@1a
    fill-array-data v0, :array_50

    #@1d
    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    #@1f
    const/4 v0, 0x1

    #@20
    new-array v0, v0, [I

    #@22
    const/4 v1, 0x0

    #@23
    const v2, 0x1010199

    #@26
    aput v2, v0, v1

    #@28
    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    #@2a
    return-void

    #@2b
    nop

    #@2c
    :array_2c
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data

    #@3c
    :array_3c
    .array-data 4
        0x10100d0
        0x1010199
    .end array-data

    #@44
    :array_44
    .array-data 4
        0x1010199
        0x1010449
        0x101044a
        0x101044b
    .end array-data

    #@50
    :array_50
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
