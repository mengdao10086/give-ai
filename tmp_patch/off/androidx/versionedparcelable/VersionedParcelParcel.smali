.class Landroidx/versionedparcelable/VersionedParcelParcel;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private mCurrentField:I

.field private final mEnd:I

.field private mFieldId:I

.field private mNextRead:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;

.field private final mPositionLookup:Landroid/util/SparseIntArray;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    #@0
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    #@7
    move-result v3

    #@8
    const-string v4, ""

    #@a
    new-instance v5, Landroidx/collection/ArrayMap;

    #@c
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    #@f
    new-instance v6, Landroidx/collection/ArrayMap;

    #@11
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    #@14
    new-instance v7, Landroidx/collection/ArrayMap;

    #@16
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    #@19
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@1e
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@3
    .line 41
    new-instance p5, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    #@a
    const/4 p5, -0x1

    #@b
    .line 46
    iput p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    #@d
    .line 48
    iput p5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    #@f
    .line 61
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@11
    .line 62
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    #@13
    .line 63
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    #@15
    .line 64
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@17
    .line 65
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    #@19
    return-void
.end method


# virtual methods
.method public closeField()V
    .registers 5

    #@0
    .line 99
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    #@2
    if-ltz v0, :cond_21

    #@4
    .line 100
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@9
    move-result v0

    #@a
    .line 101
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v1

    #@10
    sub-int v2, v1, v0

    #@12
    .line 107
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@14
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@17
    .line 108
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@19
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 109
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@21
    :cond_21
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .registers 10

    #@0
    .line 119
    new-instance v8, Landroidx/versionedparcelable/VersionedParcelParcel;

    #@2
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@a
    iget v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    #@c
    if-ne v0, v3, :cond_10

    #@e
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    #@10
    :cond_10
    move v3, v0

    #@11
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string v4, "  "

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mReadCache:Landroidx/collection/ArrayMap;

    #@28
    iget-object v6, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    #@2a
    iget-object v7, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    #@2c
    move-object v0, v8

    #@2d
    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@30
    return-object v8
.end method

.method public readBoolean()Z
    .registers 2

    #@0
    .line 258
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method public readBundle()Landroid/os/Bundle;
    .registers 3

    #@0
    .line 253
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public readByteArray()[B
    .registers 3

    #@0
    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 240
    :cond_a
    new-array v0, v0, [B

    #@c
    .line 241
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@11
    return-object v0
.end method

.method protected readCharSequence()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@4
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/CharSequence;

    #@a
    return-object v0
.end method

.method public readDouble()D
    .registers 3

    #@0
    .line 221
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public readField(I)Z
    .registers 6

    #@0
    .line 70
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@2
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    if-ge v0, v1, :cond_37

    #@8
    .line 71
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    #@a
    if-ne v0, p1, :cond_d

    #@c
    return v2

    #@d
    .line 74
    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    if-lez v0, :cond_1c

    #@1b
    return v3

    #@1c
    .line 77
    :cond_1c
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@1e
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@23
    .line 78
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@25
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    .line 79
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    #@31
    .line 82
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@33
    add-int/2addr v1, v0

    #@34
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    #@36
    goto :goto_0

    #@37
    .line 84
    :cond_37
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    #@39
    if-ne v0, p1, :cond_3c

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v2, v3

    #@3d
    :goto_3d
    return v2
.end method

.method public readFloat()F
    .registers 2

    #@0
    .line 216
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readInt()I
    .registers 2

    #@0
    .line 206
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readLong()J
    .registers 3

    #@0
    .line 211
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    #@0
    .line 248
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 2

    #@0
    .line 226
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    .line 231
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setOutputField(I)V
    .registers 4

    #@0
    .line 89
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelParcel;->closeField()V

    #@3
    .line 90
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    #@5
    .line 91
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    #@7
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@10
    const/4 v0, 0x0

    #@11
    .line 93
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    #@14
    .line 94
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    #@17
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3

    #@0
    .line 181
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    return-void
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .registers 3

    #@0
    .line 191
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public writeByteArray([B)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 127
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@4
    array-length v1, p1

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 128
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@a
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@d
    goto :goto_14

    #@e
    .line 130
    :cond_e
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@10
    const/4 v0, -0x1

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    :goto_14
    return-void
.end method

.method public writeByteArray([BII)V
    .registers 6

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 137
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@4
    array-length v1, p1

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 138
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@d
    goto :goto_14

    #@e
    .line 140
    :cond_e
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@10
    const/4 p2, -0x1

    #@11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    :goto_14
    return-void
.end method

.method protected writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 196
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@6
    return-void
.end method

.method public writeDouble(D)V
    .registers 4

    #@0
    .line 161
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    #@5
    return-void
.end method

.method public writeFloat(F)V
    .registers 3

    #@0
    .line 156
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    return-void
.end method

.method public writeInt(I)V
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    return-void
.end method

.method public writeLong(J)V
    .registers 4

    #@0
    .line 151
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    return-void
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .registers 4

    #@0
    .line 176
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 166
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .registers 3

    #@0
    .line 171
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5
    return-void
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3

    #@0
    .line 186
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@5
    return-void
.end method
