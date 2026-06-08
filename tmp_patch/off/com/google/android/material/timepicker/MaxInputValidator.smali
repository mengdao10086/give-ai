.class Lcom/google/android/material/timepicker/MaxInputValidator;
.super Ljava/lang/Object;
.source "MaxInputValidator.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private max:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    #@5
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 8

    #@0
    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 43
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    invoke-virtual {v0, p5, p6, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result p1

    #@18
    .line 46
    iget p2, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1a} :catch_1e

    #@1a
    if-gt p1, p2, :cond_1e

    #@1c
    const/4 p1, 0x0

    #@1d
    return-object p1

    #@1e
    :catch_1e
    :cond_1e
    const-string p1, ""

    #@20
    return-object p1
.end method

.method public getMax()I
    .registers 2

    #@0
    .line 35
    iget v0, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    #@2
    return v0
.end method

.method public setMax(I)V
    .registers 2

    #@0
    .line 31
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    #@2
    return-void
.end method
