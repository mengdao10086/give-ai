.class final Landroidx/appcompat/widget/AppCompatTextClassifierHelper$Api26Impl;
.super Ljava/lang/Object;
.source "AppCompatTextClassifierHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextClassifierHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getTextClassifier(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;
    .registers 2

    #@0
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object p0

    #@4
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    #@6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    #@c
    if-eqz p0, :cond_13

    #@e
    .line 81
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    #@11
    move-result-object p0

    #@12
    return-object p0

    #@13
    .line 83
    :cond_13
    sget-object p0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    #@15
    return-object p0
.end method
