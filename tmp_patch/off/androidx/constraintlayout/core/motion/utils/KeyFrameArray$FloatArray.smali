.class Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;
.super Ljava/lang/Object;
.source "KeyFrameArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyFrameArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatArray"
.end annotation


# static fields
.field private static final EMPTY:I = 0x3e7


# instance fields
.field count:I

.field keys:[I

.field values:[[F


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x65

    #@5
    new-array v1, v0, [I

    #@7
    .line 153
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@9
    new-array v0, v0, [[F

    #@b
    .line 154
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@d
    .line 159
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->clear()V

    #@10
    return-void
.end method


# virtual methods
.method public append(I[F)V
    .registers 5

    #@0
    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 191
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->remove(I)V

    #@9
    .line 193
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@b
    aput-object p2, v0, p1

    #@d
    .line 194
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@f
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@11
    add-int/lit8 v1, v0, 0x1

    #@13
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@15
    aput p1, p2, v0

    #@17
    .line 195
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    #@1a
    return-void
.end method

.method public clear()V
    .registers 3

    #@0
    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@2
    const/16 v1, 0x3e7

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@7
    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    const/4 v0, 0x0

    #@e
    .line 165
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@10
    return-void
.end method

.method public dump()V
    .registers 5

    #@0
    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "V: "

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@b
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@d
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@10
    move-result-object v2

    #@11
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string v1, "K: ["

    #@24
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@27
    const/4 v0, 0x0

    #@28
    .line 171
    :goto_28
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@2a
    if-ge v0, v1, :cond_54

    #@2c
    .line 172
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    if-nez v0, :cond_38

    #@35
    const-string v3, ""

    #@37
    goto :goto_3a

    #@38
    :cond_38
    const-string v3, ", "

    #@3a
    :goto_3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    #@41
    move-result-object v3

    #@42
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@51
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_28

    #@54
    .line 174
    :cond_54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@56
    const-string v1, "]"

    #@58
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    return-void
.end method

.method public keyAt(I)I
    .registers 3

    #@0
    .line 186
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@2
    aget p1, v0, p1

    #@4
    return p1
.end method

.method public remove(I)V
    .registers 6

    #@0
    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@2
    const/4 v1, 0x0

    #@3
    aput-object v1, v0, p1

    #@5
    const/4 v0, 0x0

    #@6
    move v1, v0

    #@7
    .line 200
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@9
    if-ge v0, v2, :cond_22

    #@b
    .line 201
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@d
    aget v3, v2, v0

    #@f
    if-ne p1, v3, :cond_17

    #@11
    const/16 v3, 0x3e7

    #@13
    .line 202
    aput v3, v2, v0

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    :cond_17
    if-eq v0, v1, :cond_1d

    #@19
    .line 206
    aget v3, v2, v1

    #@1b
    aput v3, v2, v0

    #@1d
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_7

    #@22
    :cond_22
    add-int/lit8 v2, v2, -0x1

    #@24
    .line 211
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@26
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 178
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    #@2
    return v0
.end method

.method public valueAt(I)[F
    .registers 4

    #@0
    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    #@4
    aget p1, v1, p1

    #@6
    aget-object p1, v0, p1

    #@8
    return-object p1
.end method
