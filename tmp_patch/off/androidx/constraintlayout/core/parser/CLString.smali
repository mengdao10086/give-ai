.class public Landroidx/constraintlayout/core/parser/CLString;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLString.java"


# direct methods
.method public constructor <init>([C)V
    .registers 2

    #@0
    .line 21
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    #@3
    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    #@0
    .line 24
    new-instance v0, Landroidx/constraintlayout/core/parser/CLString;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLString;-><init>([C)V

    #@5
    return-object v0
.end method


# virtual methods
.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 4

    #@0
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 31
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/CLString;->addIndent(Ljava/lang/StringBuilder;I)V

    #@8
    const-string p1, "\'"

    #@a
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 33
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLString;->content()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 4

    #@0
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "\'"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLString;->content()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method
