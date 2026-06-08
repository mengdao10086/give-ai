.class Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;
.super Ljava/lang/Object;
.source "CLObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/CLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CLObjectIterator"
.end annotation


# instance fields
.field index:I

.field myObject:Landroidx/constraintlayout/core/parser/CLObject;

.field final synthetic this$0:Landroidx/constraintlayout/core/parser/CLObject;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 3

    #@0
    .line 75
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->this$0:Landroidx/constraintlayout/core/parser/CLObject;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 p1, 0x0

    #@6
    .line 74
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    #@8
    .line 76
    iput-object p2, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

    #@a
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    #@0
    .line 81
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    #@0
    .line 86
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->myObject:Landroidx/constraintlayout/core/parser/CLObject;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/parser/CLObject;->mElements:Ljava/util/ArrayList;

    #@4
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/constraintlayout/core/parser/CLKey;

    #@c
    .line 87
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    iput v1, p0, Landroidx/constraintlayout/core/parser/CLObject$CLObjectIterator;->index:I

    #@12
    return-object v0
.end method
