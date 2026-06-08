.class Landroidx/versionedparcelable/VersionedParcelStream;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_BOOLEAN_ARRAY:I = 0x6

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_DOUBLE_ARRAY:I = 0x8

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_FLOAT_ARRAY:I = 0xe

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_INT_ARRAY:I = 0xa

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_LONG_ARRAY:I = 0xc

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final TYPE_SUB_BUNDLE:I = 0x1

.field private static final TYPE_SUB_PERSISTABLE_BUNDLE:I = 0x2

.field private static final UTF_16:Ljava/nio/charset/Charset;


# instance fields
.field mCount:I

.field private mCurrentInput:Ljava/io/DataInputStream;

.field private mCurrentOutput:Ljava/io/DataOutputStream;

.field private mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

.field private mFieldId:I

.field mFieldSize:I

.field private mIgnoreParcelables:Z

.field private final mMasterInput:Ljava/io/DataInputStream;

.field private final mMasterOutput:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "UTF-16"

    #@2
    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9

    #@0
    .line 76
    new-instance v3, Landroidx/collection/ArrayMap;

    #@2
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    #@5
    new-instance v4, Landroidx/collection/ArrayMap;

    #@7
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    #@a
    new-instance v5, Landroidx/collection/ArrayMap;

    #@c
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move-object v2, p2

    #@12
    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@15
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
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
    .line 84
    invoke-direct {p0, p3, p4, p5}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@3
    const/4 p3, 0x0

    #@4
    .line 71
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@6
    const/4 p3, -0x1

    #@7
    .line 72
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    #@9
    .line 73
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@b
    const/4 p3, 0x0

    #@c
    if-eqz p1, :cond_19

    #@e
    .line 85
    new-instance p4, Ljava/io/DataInputStream;

    #@10
    new-instance p5, Landroidx/versionedparcelable/VersionedParcelStream$1;

    #@12
    invoke-direct {p5, p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream$1;-><init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V

    #@15
    invoke-direct {p4, p5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move-object p4, p3

    #@1a
    :goto_1a
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    #@1c
    if-eqz p2, :cond_23

    #@1e
    .line 120
    new-instance p3, Ljava/io/DataOutputStream;

    #@20
    invoke-direct {p3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@23
    :cond_23
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    #@25
    .line 121
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@27
    .line 122
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@29
    return-void
.end method

.method private readObject(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    #@0
    packed-switch p1, :pswitch_data_94

    #@3
    .line 536
    new-instance p2, Ljava/lang/RuntimeException;

    #@5
    new-instance p3, Ljava/lang/StringBuilder;

    #@7
    const-string v0, "Unknown type "

    #@9
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw p2

    #@18
    .line 533
    :pswitch_18
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloatArray()[F

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@1f
    goto/16 :goto_93

    #@21
    .line 530
    :pswitch_21
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloat()F

    #@24
    move-result p1

    #@25
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@28
    goto/16 :goto_93

    #@2a
    .line 527
    :pswitch_2a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLongArray()[J

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@31
    goto :goto_93

    #@32
    .line 524
    :pswitch_32
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLong()J

    #@35
    move-result-wide v0

    #@36
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@39
    goto :goto_93

    #@3a
    .line 521
    :pswitch_3a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readIntArray()[I

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@41
    goto :goto_93

    #@42
    .line 518
    :pswitch_42
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    #@45
    move-result p1

    #@46
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@49
    goto :goto_93

    #@4a
    .line 515
    :pswitch_4a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDoubleArray()[D

    #@4d
    move-result-object p1

    #@4e
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@51
    goto :goto_93

    #@52
    .line 512
    :pswitch_52
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDouble()D

    #@55
    move-result-wide v0

    #@56
    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@59
    goto :goto_93

    #@5a
    .line 509
    :pswitch_5a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBooleanArray()[Z

    #@5d
    move-result-object p1

    #@5e
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    #@61
    goto :goto_93

    #@62
    .line 506
    :pswitch_62
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBoolean()Z

    #@65
    move-result p1

    #@66
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@69
    goto :goto_93

    #@6a
    :pswitch_6a
    const/4 p1, 0x0

    #@6b
    new-array p1, p1, [Ljava/lang/String;

    #@6d
    .line 503
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@70
    move-result-object p1

    #@71
    check-cast p1, [Ljava/lang/String;

    #@73
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@76
    goto :goto_93

    #@77
    .line 500
    :pswitch_77
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    #@7a
    move-result-object p1

    #@7b
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    goto :goto_93

    #@7f
    .line 497
    :pswitch_7f
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    #@82
    move-result-object p1

    #@83
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@86
    goto :goto_93

    #@87
    .line 494
    :pswitch_87
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    #@8a
    move-result-object p1

    #@8b
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@8e
    goto :goto_93

    #@8f
    :pswitch_8f
    const/4 p1, 0x0

    #@90
    .line 491
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@93
    :goto_93
    return-void

    #@94
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6a
        :pswitch_62
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method

.method private writeObject(Ljava/lang/Object;)V
    .registers 5

    #@0
    if-nez p1, :cond_8

    #@2
    const/4 p1, 0x0

    #@3
    .line 443
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@6
    goto/16 :goto_ea

    #@8
    .line 444
    :cond_8
    instance-of v0, p1, Landroid/os/Bundle;

    #@a
    if-eqz v0, :cond_17

    #@c
    const/4 v0, 0x1

    #@d
    .line 445
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@10
    .line 446
    check-cast p1, Landroid/os/Bundle;

    #@12
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBundle(Landroid/os/Bundle;)V

    #@15
    goto/16 :goto_ea

    #@17
    .line 447
    :cond_17
    instance-of v0, p1, Ljava/lang/String;

    #@19
    if-eqz v0, :cond_26

    #@1b
    const/4 v0, 0x3

    #@1c
    .line 448
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@1f
    .line 449
    check-cast p1, Ljava/lang/String;

    #@21
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    #@24
    goto/16 :goto_ea

    #@26
    .line 450
    :cond_26
    instance-of v0, p1, [Ljava/lang/String;

    #@28
    if-eqz v0, :cond_37

    #@2a
    const/4 v0, 0x4

    #@2b
    .line 451
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@2e
    .line 452
    check-cast p1, [Ljava/lang/String;

    #@30
    check-cast p1, [Ljava/lang/String;

    #@32
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeArray([Ljava/lang/Object;)V

    #@35
    goto/16 :goto_ea

    #@37
    .line 453
    :cond_37
    instance-of v0, p1, Ljava/lang/Boolean;

    #@39
    if-eqz v0, :cond_4a

    #@3b
    const/4 v0, 0x5

    #@3c
    .line 454
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@3f
    .line 455
    check-cast p1, Ljava/lang/Boolean;

    #@41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@44
    move-result p1

    #@45
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBoolean(Z)V

    #@48
    goto/16 :goto_ea

    #@4a
    .line 456
    :cond_4a
    instance-of v0, p1, [Z

    #@4c
    if-eqz v0, :cond_5b

    #@4e
    const/4 v0, 0x6

    #@4f
    .line 457
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@52
    .line 458
    check-cast p1, [Z

    #@54
    check-cast p1, [Z

    #@56
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBooleanArray([Z)V

    #@59
    goto/16 :goto_ea

    #@5b
    .line 459
    :cond_5b
    instance-of v0, p1, Ljava/lang/Double;

    #@5d
    if-eqz v0, :cond_6e

    #@5f
    const/4 v0, 0x7

    #@60
    .line 460
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@63
    .line 461
    check-cast p1, Ljava/lang/Double;

    #@65
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@68
    move-result-wide v0

    #@69
    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDouble(D)V

    #@6c
    goto/16 :goto_ea

    #@6e
    .line 462
    :cond_6e
    instance-of v0, p1, [D

    #@70
    if-eqz v0, :cond_7f

    #@72
    const/16 v0, 0x8

    #@74
    .line 463
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@77
    .line 464
    check-cast p1, [D

    #@79
    check-cast p1, [D

    #@7b
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDoubleArray([D)V

    #@7e
    goto :goto_ea

    #@7f
    .line 465
    :cond_7f
    instance-of v0, p1, Ljava/lang/Integer;

    #@81
    if-eqz v0, :cond_92

    #@83
    const/16 v0, 0x9

    #@85
    .line 466
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@88
    .line 467
    check-cast p1, Ljava/lang/Integer;

    #@8a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@8d
    move-result p1

    #@8e
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@91
    goto :goto_ea

    #@92
    .line 468
    :cond_92
    instance-of v0, p1, [I

    #@94
    if-eqz v0, :cond_a3

    #@96
    const/16 v0, 0xa

    #@98
    .line 469
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@9b
    .line 470
    check-cast p1, [I

    #@9d
    check-cast p1, [I

    #@9f
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeIntArray([I)V

    #@a2
    goto :goto_ea

    #@a3
    .line 471
    :cond_a3
    instance-of v0, p1, Ljava/lang/Long;

    #@a5
    if-eqz v0, :cond_b6

    #@a7
    const/16 v0, 0xb

    #@a9
    .line 472
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@ac
    .line 473
    check-cast p1, Ljava/lang/Long;

    #@ae
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@b1
    move-result-wide v0

    #@b2
    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLong(J)V

    #@b5
    goto :goto_ea

    #@b6
    .line 474
    :cond_b6
    instance-of v0, p1, [J

    #@b8
    if-eqz v0, :cond_c7

    #@ba
    const/16 v0, 0xc

    #@bc
    .line 475
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@bf
    .line 476
    check-cast p1, [J

    #@c1
    check-cast p1, [J

    #@c3
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLongArray([J)V

    #@c6
    goto :goto_ea

    #@c7
    .line 477
    :cond_c7
    instance-of v0, p1, Ljava/lang/Float;

    #@c9
    if-eqz v0, :cond_da

    #@cb
    const/16 v0, 0xd

    #@cd
    .line 478
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@d0
    .line 479
    check-cast p1, Ljava/lang/Float;

    #@d2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@d5
    move-result p1

    #@d6
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloat(F)V

    #@d9
    goto :goto_ea

    #@da
    .line 480
    :cond_da
    instance-of v0, p1, [F

    #@dc
    if-eqz v0, :cond_eb

    #@de
    const/16 v0, 0xe

    #@e0
    .line 481
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    #@e3
    .line 482
    check-cast p1, [F

    #@e5
    check-cast p1, [F

    #@e7
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloatArray([F)V

    #@ea
    :goto_ea
    return-void

    #@eb
    .line 484
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@ed
    new-instance v1, Ljava/lang/StringBuilder;

    #@ef
    const-string v2, "Unsupported type "

    #@f1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f7
    move-result-object p1

    #@f8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object p1

    #@fc
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object p1

    #@100
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@103
    throw v0
.end method


# virtual methods
.method public closeField()V
    .registers 3

    #@0
    .line 142
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    #@2
    if-eqz v0, :cond_1c

    #@4
    .line 144
    :try_start_4
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 145
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    #@e
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->flushField()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_15

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    .line 150
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    #@14
    goto :goto_1c

    #@15
    :catch_15
    move-exception v0

    #@16
    .line 148
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@18
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1

    #@1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .registers 8

    #@0
    .line 156
    new-instance v6, Landroidx/versionedparcelable/VersionedParcelStream;

    #@2
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@4
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@6
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mReadCache:Landroidx/collection/ArrayMap;

    #@8
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mWriteCache:Landroidx/collection/ArrayMap;

    #@a
    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mParcelizerCache:Landroidx/collection/ArrayMap;

    #@c
    move-object v0, v6

    #@d
    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@10
    return-object v6
.end method

.method public isStream()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public readBoolean()Z
    .registers 3

    #@0
    .line 402
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    #@5
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 404
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@a
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public readBundle()Landroid/os/Bundle;
    .registers 6

    #@0
    .line 429
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 433
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    #@a
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-ge v2, v0, :cond_1e

    #@10
    .line 435
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 436
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    #@17
    move-result v4

    #@18
    invoke-direct {p0, v4, v3, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->readObject(ILjava/lang/String;Landroid/os/Bundle;)V

    #@1b
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_e

    #@1e
    :cond_1e
    return-object v1
.end method

.method public readByteArray()[B
    .registers 3

    #@0
    .line 381
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_10

    #@8
    .line 383
    new-array v0, v0, [B

    #@a
    .line 384
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_12

    #@f
    return-object v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    return-object v0

    #@12
    :catch_12
    move-exception v0

    #@13
    .line 390
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@15
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method protected readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public readDouble()D
    .registers 3

    #@0
    .line 356
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    #@5
    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-wide v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 358
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@a
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public readField(I)Z
    .registers 6

    #@0
    :goto_0
    const/4 v0, 0x0

    #@1
    .line 164
    :try_start_1
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    #@3
    if-ne v1, p1, :cond_7

    #@5
    const/4 p1, 0x1

    #@6
    return p1

    #@7
    .line 167
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-lez v1, :cond_16

    #@15
    return v0

    #@16
    .line 170
    :cond_16
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@18
    iget v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@1a
    if-ge v1, v2, :cond_23

    #@1c
    .line 171
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    #@1e
    sub-int/2addr v2, v1

    #@1f
    int-to-long v1, v2

    #@20
    invoke-virtual {v3, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    #@23
    :cond_23
    const/4 v1, -0x1

    #@24
    .line 173
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    #@26
    .line 174
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    #@28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@2b
    move-result v1

    #@2c
    .line 175
    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    #@2e
    const v2, 0xffff

    #@31
    and-int v3, v1, v2

    #@33
    if-ne v3, v2, :cond_3b

    #@35
    .line 178
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    #@37
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@3a
    move-result v3

    #@3b
    :cond_3b
    shr-int/lit8 v1, v1, 0x10

    #@3d
    and-int/2addr v1, v2

    #@3e
    .line 181
    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    #@40
    .line 182
    iput v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_42} :catch_43

    #@42
    goto :goto_0

    #@43
    :catch_43
    return v0
.end method

.method public readFloat()F
    .registers 3

    #@0
    .line 347
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    #@5
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 349
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@a
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public readInt()I
    .registers 3

    #@0
    .line 329
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 331
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@a
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public readLong()J
    .registers 3

    #@0
    .line 338
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    #@5
    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-wide v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 340
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@a
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 4

    #@0
    .line 365
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_17

    #@8
    .line 367
    new-array v0, v0, [B

    #@a
    .line 368
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@f
    .line 369
    new-instance v1, Ljava/lang/String;

    #@11
    sget-object v2, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    #@13
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_19

    #@16
    return-object v1

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    return-object v0

    #@19
    :catch_19
    move-exception v0

    #@1a
    .line 374
    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@1c
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v1
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setOutputField(I)V
    .registers 4

    #@0
    .line 191
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    #@3
    .line 192
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    #@5
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    #@7
    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;-><init>(ILjava/io/DataOutputStream;)V

    #@a
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    #@c
    .line 193
    iget-object p1, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    #@e
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@10
    return-void
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 137
    iput-boolean p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    #@4
    return-void

    #@5
    .line 135
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    #@7
    const-string p2, "Serialization of this object is not allowed"

    #@9
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public writeBoolean(Z)V
    .registers 3

    #@0
    .line 288
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception p1

    #@7
    .line 290
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@9
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v0
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-eqz p1, :cond_2a

    #@2
    .line 412
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 413
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@f
    .line 414
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_30

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 415
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    #@22
    .line 416
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    .line 417
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeObject(Ljava/lang/Object;)V

    #@29
    goto :goto_13

    #@2a
    .line 420
    :cond_2a
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2c
    const/4 v0, -0x1

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_30} :catch_31

    #@30
    :cond_30
    return-void

    #@31
    :catch_31
    move-exception p1

    #@32
    .line 423
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@34
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v0
.end method

.method public writeByteArray([B)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 200
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@4
    array-length v1, p1

    #@5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@8
    .line 201
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@a
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    #@d
    goto :goto_14

    #@e
    .line 203
    :cond_e
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@10
    const/4 v0, -0x1

    #@11
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception p1

    #@16
    .line 206
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@18
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v0
.end method

.method public writeByteArray([BII)V
    .registers 5

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 214
    :try_start_2
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@4
    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 215
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    #@c
    goto :goto_13

    #@d
    .line 217
    :cond_d
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@f
    const/4 p2, -0x1

    #@10
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception p1

    #@15
    .line 220
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@17
    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw p2
.end method

.method protected writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 226
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    #@2
    if-eqz p1, :cond_5

    #@4
    return-void

    #@5
    .line 227
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    #@7
    const-string v0, "CharSequence cannot be written to an OutputStream"

    #@9
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public writeDouble(D)V
    .registers 4

    #@0
    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception p1

    #@7
    .line 265
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@9
    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw p2
.end method

.method public writeFloat(F)V
    .registers 3

    #@0
    .line 253
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception p1

    #@7
    .line 255
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@9
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v0
.end method

.method public writeInt(I)V
    .registers 3

    #@0
    .line 234
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception p1

    #@7
    .line 236
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@9
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v0
.end method

.method public writeLong(J)V
    .registers 4

    #@0
    .line 243
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception p1

    #@7
    .line 245
    new-instance p2, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@9
    invoke-direct {p2, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw p2
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 303
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    #@2
    if-eqz p1, :cond_5

    #@4
    return-void

    #@5
    .line 304
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    #@7
    const-string v0, "Parcelables cannot be written to an OutputStream"

    #@9
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 4

    #@0
    if-eqz p1, :cond_14

    #@2
    .line 274
    :try_start_2
    sget-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object p1

    #@8
    .line 275
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@a
    array-length v1, p1

    #@b
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@e
    .line 276
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@10
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    #@13
    goto :goto_1a

    #@14
    .line 278
    :cond_14
    iget-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    #@16
    const/4 v0, -0x1

    #@17
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1b

    #@1a
    :goto_1a
    return-void

    #@1b
    :catch_1b
    move-exception p1

    #@1c
    .line 281
    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    #@1e
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    #@21
    throw v0
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .registers 3

    #@0
    .line 296
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    #@2
    if-eqz p1, :cond_5

    #@4
    return-void

    #@5
    .line 297
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    #@7
    const-string v0, "Binders cannot be written to an OutputStream"

    #@9
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3

    #@0
    .line 310
    iget-boolean p1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    #@2
    if-eqz p1, :cond_5

    #@4
    return-void

    #@5
    .line 311
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    #@7
    const-string v0, "Binders cannot be written to an OutputStream"

    #@9
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method
