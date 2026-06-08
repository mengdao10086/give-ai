.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 4

    #@0
    .line 14
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    #@2
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    #@5
    .line 15
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    #@b
    move-result v1

    #@c
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@e
    .line 16
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@10
    const/4 v2, 0x2

    #@11
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray([BI)[B

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@17
    .line 17
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@20
    .line 18
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@22
    const/4 v2, 0x4

    #@23
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@29
    .line 19
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@2b
    const/4 v2, 0x5

    #@2c
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    #@2f
    move-result v1

    #@30
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@32
    .line 20
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@34
    const/4 v2, 0x6

    #@35
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/content/res/ColorStateList;

    #@3b
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@3d
    .line 21
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@3f
    const/4 v2, 0x7

    #@40
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@46
    .line 22
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@48
    const/16 v2, 0x8

    #@4a
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    #@4d
    move-result-object p0

    #@4e
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@50
    .line 23
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->onPostParceling()V

    #@53
    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 29
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    #@4
    .line 30
    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->onPreParceling(Z)V

    #@b
    const/4 v1, -0x1

    #@c
    .line 31
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@e
    if-eq v1, v2, :cond_15

    #@10
    .line 32
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    #@12
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    #@15
    .line 34
    :cond_15
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@17
    if-eqz v0, :cond_1f

    #@19
    .line 35
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    #@1b
    const/4 v1, 0x2

    #@1c
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BI)V

    #@1f
    .line 37
    :cond_1f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@21
    if-eqz v0, :cond_29

    #@23
    .line 38
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    #@25
    const/4 v1, 0x3

    #@26
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@29
    .line 40
    :cond_29
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@2b
    if-eqz v0, :cond_33

    #@2d
    .line 41
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    #@2f
    const/4 v1, 0x4

    #@30
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    #@33
    .line 43
    :cond_33
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@35
    if-eqz v0, :cond_3d

    #@37
    .line 44
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    #@39
    const/4 v1, 0x5

    #@3a
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    #@3d
    .line 46
    :cond_3d
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@3f
    if-eqz v0, :cond_47

    #@41
    .line 47
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    #@43
    const/4 v1, 0x6

    #@44
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@47
    .line 49
    :cond_47
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@49
    if-eqz v0, :cond_51

    #@4b
    .line 50
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    #@4d
    const/4 v1, 0x7

    #@4e
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    #@51
    .line 52
    :cond_51
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@53
    if-eqz v0, :cond_5c

    #@55
    .line 53
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    #@57
    const/16 v0, 0x8

    #@59
    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    #@5c
    :cond_5c
    return-void
.end method
