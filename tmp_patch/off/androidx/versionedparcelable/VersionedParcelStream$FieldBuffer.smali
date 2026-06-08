.class Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldBuffer"
.end annotation


# instance fields
.field final mDataStream:Ljava/io/DataOutputStream;

.field private final mFieldId:I

.field final mOutput:Ljava/io/ByteArrayOutputStream;

.field private final mTarget:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(ILjava/io/DataOutputStream;)V
    .registers 5

    #@0
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 544
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    #@a
    .line 545
    new-instance v1, Ljava/io/DataOutputStream;

    #@c
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f
    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    #@11
    .line 550
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    #@13
    .line 551
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    #@15
    return-void
.end method


# virtual methods
.method flushField()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .line 555
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    #@5
    .line 556
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@a
    move-result v0

    #@b
    .line 557
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    #@d
    shl-int/lit8 v1, v1, 0x10

    #@f
    const v2, 0xffff

    #@12
    if-lt v0, v2, :cond_16

    #@14
    move v3, v2

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v3, v0

    #@17
    :goto_17
    or-int/2addr v1, v3

    #@18
    .line 558
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    #@1a
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d
    if-lt v0, v2, :cond_24

    #@1f
    .line 560
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    #@21
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@24
    .line 562
    :cond_24
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    #@26
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    #@28
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@2b
    return-void
.end method
