.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 230
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    #@2
    const-string v1, "circularRevealScrimColor"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    #@9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 234
    const-class v0, Ljava/lang/Integer;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .registers 2

    #@0
    .line 240
    invoke-interface {p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    #@3
    move-result p1

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 228
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .registers 3

    #@0
    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result p2

    #@4
    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    #@7
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 228
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    #@2
    check-cast p2, Ljava/lang/Integer;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    #@7
    return-void
.end method
