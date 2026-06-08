.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->workAroundOreoBug(Landroid/animation/ObjectAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field floatEvaluator:Landroid/animation/FloatEvaluator;

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .registers 2

    #@0
    .line 683
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 684
    new-instance p1, Landroid/animation/FloatEvaluator;

    #@7
    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    #@a
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Landroid/animation/FloatEvaluator;

    #@c
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 5

    #@0
    .line 687
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->floatEvaluator:Landroid/animation/FloatEvaluator;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    const p2, 0x3dcccccd    # 0.1f

    #@d
    cmpg-float p2, p1, p2

    #@f
    if-gez p2, :cond_12

    #@11
    const/4 p1, 0x0

    #@12
    .line 688
    :cond_12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15
    move-result-object p1

    #@16
    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    .line 683
    check-cast p2, Ljava/lang/Float;

    #@2
    check-cast p3, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$5;->evaluate(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method
