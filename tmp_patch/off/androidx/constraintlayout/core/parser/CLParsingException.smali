.class public Landroidx/constraintlayout/core/parser/CLParsingException;
.super Ljava/lang/Exception;
.source "CLParsingException.java"


# instance fields
.field private final mElementClass:Ljava/lang/String;

.field private final mLineNumber:I

.field private final mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V
    .registers 3

    #@0
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mReason:Ljava/lang/String;

    #@5
    if-eqz p2, :cond_14

    #@7
    .line 26
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mElementClass:Ljava/lang/String;

    #@d
    .line 27
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLElement;->getLine()I

    #@10
    move-result p1

    #@11
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mLineNumber:I

    #@13
    goto :goto_1b

    #@14
    :cond_14
    const-string p1, "unknown"

    #@16
    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mElementClass:Ljava/lang/String;

    #@18
    const/4 p1, 0x0

    #@19
    .line 30
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mLineNumber:I

    #@1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public reason()Ljava/lang/String;
    .registers 3

    #@0
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mReason:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, " ("

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mElementClass:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, " at line "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLParsingException;->mLineNumber:I

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, ")"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "CLParsingException ("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ") : "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLParsingException;->reason()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
