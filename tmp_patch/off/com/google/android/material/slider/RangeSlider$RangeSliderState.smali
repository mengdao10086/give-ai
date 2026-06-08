.class Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
.super Landroid/view/AbsSavedState;
.source "RangeSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSliderState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/slider/RangeSlider$RangeSliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private minSeparation:F

.field private separationUnit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 251
    new-instance v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 239
    const-class v0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@d
    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    #@13
    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result p1

    #@17
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    #@19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/slider/RangeSlider$1;)V
    .registers 3

    #@0
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 235
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)F
    .registers 1

    #@0
    .line 229
    iget p0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    #@2
    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;F)F
    .registers 2

    #@0
    .line 229
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    #@2
    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)I
    .registers 1

    #@0
    .line 229
    iget p0, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    #@2
    return p0
.end method

.method static synthetic access$102(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;I)I
    .registers 2

    #@0
    .line 229
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    #@2
    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 247
    iget p2, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->minSeparation:F

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@8
    .line 248
    iget p2, p0, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->separationUnit:I

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    return-void
.end method
