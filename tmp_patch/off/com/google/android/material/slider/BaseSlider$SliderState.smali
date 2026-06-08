.class Lcom/google/android/material/slider/BaseSlider$SliderState;
.super Landroid/view/View$BaseSavedState;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliderState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/slider/BaseSlider$SliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hasFocus:Z

.field stepSize:F

.field valueFrom:F

.field valueTo:F

.field values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 2647
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$SliderState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/slider/BaseSlider$SliderState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    #@0
    .line 2668
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 2669
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    #@9
    .line 2670
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    #@f
    .line 2671
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    #@16
    .line 2672
    const-class v1, Ljava/lang/Float;

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@1f
    .line 2673
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@22
    move-result v0

    #@23
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    #@25
    .line 2674
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    #@28
    move-result-object p1

    #@29
    const/4 v0, 0x0

    #@2a
    aget-boolean p1, p1, v0

    #@2c
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    #@2e
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/slider/BaseSlider$1;)V
    .registers 3

    #@0
    .line 2639
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 2664
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    .line 2679
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 2680
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    #@5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@8
    .line 2681
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    #@a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@d
    .line 2682
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    #@f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@12
    .line 2683
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    #@14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@17
    const/4 p2, 0x1

    #@18
    new-array p2, p2, [Z

    #@1a
    const/4 v0, 0x0

    #@1b
    .line 2685
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    #@1d
    aput-boolean v1, p2, v0

    #@1f
    .line 2686
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@22
    return-void
.end method
