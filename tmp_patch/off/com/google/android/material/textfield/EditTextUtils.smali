.class Lcom/google/android/material/textfield/EditTextUtils;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isEditable(Landroid/widget/EditText;)Z
    .registers 1

    #@0
    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method
