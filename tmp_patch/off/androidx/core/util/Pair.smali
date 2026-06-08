.class public Landroidx/core/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@5
    .line 39
    iput-object p2, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Landroidx/core/util/Pair<",
            "TA;TB;>;"
        }
    .end annotation

    #@0
    .line 84
    new-instance v0, Landroidx/core/util/Pair;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    .line 52
    instance-of v0, p1, Landroidx/core/util/Pair;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 55
    :cond_6
    check-cast p1, Landroidx/core/util/Pair;

    #@8
    .line 56
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@a
    iget-object v2, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@c
    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1d

    #@12
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@14
    iget-object v0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@16
    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 4

    #@0
    .line 66
    iget-object v0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_7

    #@5
    move v0, v1

    #@6
    goto :goto_b

    #@7
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v0

    #@b
    :goto_b
    iget-object v2, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@d
    if-nez v2, :cond_10

    #@f
    goto :goto_14

    #@10
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@13
    move-result v1

    #@14
    :goto_14
    xor-int/2addr v0, v1

    #@15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Pair{"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, " "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "}"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
