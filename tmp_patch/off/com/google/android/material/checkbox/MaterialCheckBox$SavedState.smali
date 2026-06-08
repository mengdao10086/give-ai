.class Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MaterialCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/checkbox/MaterialCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkedState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 923
    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    .line 904
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 905
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Ljava/lang/Integer;

    #@11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result p1

    #@15
    iput p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    #@17
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/checkbox/MaterialCheckBox$1;)V
    .registers 3

    #@0
    .line 889
    invoke-direct {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    #@0
    .line 897
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    return-void
.end method

.method private getCheckedStateString()Ljava/lang/String;
    .registers 3

    #@0
    .line 938
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_e

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_b

    #@8
    const-string v0, "unchecked"

    #@a
    return-object v0

    #@b
    :cond_b
    const-string v0, "indeterminate"

    #@d
    return-object v0

    #@e
    :cond_e
    const-string v0, "checked"

    #@10
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "MaterialCheckBox.SavedState{"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 918
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, " CheckedState="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 919
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->getCheckedStateString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, "}"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    .line 910
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 911
    iget p2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    #@5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object p2

    #@9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@c
    return-void
.end method
