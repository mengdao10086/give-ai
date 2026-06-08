.class public Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
.super Ljava/lang/Object;
.source "KeyFrameArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyFrameArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomVar"
.end annotation


# static fields
.field private static final EMPTY:I = 0x3e7


# instance fields
.field count:I

.field keys:[I

.field values:[Landroidx/constraintlayout/core/motion/CustomVariable;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/16 v0, 0x65

    #@5
    new-array v1, v0, [I

    #@7
    .line 90
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@9
    new-array v0, v0, [Landroidx/constraintlayout/core/motion/CustomVariable;

    #@b
    .line 91
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@d
    .line 96
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->clear()V

    #@10
    return-void
.end method


# virtual methods
.method public append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 5

    #@0
    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 128
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->remove(I)V

    #@9
    .line 130
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@b
    aput-object p2, v0, p1

    #@d
    .line 131
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@f
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@11
    add-int/lit8 v1, v0, 0x1

    #@13
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@15
    aput p1, p2, v0

    #@17
    .line 132
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    #@1a
    return-void
.end method

.method public clear()V
    .registers 3

    #@0
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@2
    const/16 v1, 0x3e7

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@7
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    const/4 v0, 0x0

    #@e
    .line 102
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@10
    return-void
.end method

.method public dump()V
    .registers 5

    #@0
    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "V: "

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@b
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

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
    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    const-string v1, "K: ["

    #@24
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@27
    const/4 v0, 0x0

    #@28
    .line 108
    :goto_28
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@2a
    if-ge v0, v1, :cond_50

    #@2c
    .line 109
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
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4d
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_28

    #@50
    .line 111
    :cond_50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@52
    const-string v1, "]"

    #@54
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    return-void
.end method

.method public keyAt(I)I
    .registers 3

    #@0
    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@2
    aget p1, v0, p1

    #@4
    return p1
.end method

.method public remove(I)V
    .registers 6

    #@0
    .line 136
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object v1, v0, p1

    #@5
    const/4 v0, 0x0

    #@6
    move v1, v0

    #@7
    .line 137
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@9
    if-ge v0, v2, :cond_22

    #@b
    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@d
    aget v3, v2, v0

    #@f
    if-ne p1, v3, :cond_17

    #@11
    const/16 v3, 0x3e7

    #@13
    .line 139
    aput v3, v2, v0

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    :cond_17
    if-eq v0, v1, :cond_1d

    #@19
    .line 143
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
    .line 148
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@26
    return-void
.end method

.method public size()I
    .registers 2

    #@0
    .line 115
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->count:I

    #@2
    return v0
.end method

.method public valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 4

    #@0
    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->values:[Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keys:[I

    #@4
    aget p1, v1, p1

    #@6
    aget-object p1, v0, p1

    #@8
    return-object p1
.end method
