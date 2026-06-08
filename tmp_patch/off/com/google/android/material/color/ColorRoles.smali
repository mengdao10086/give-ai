.class public final Lcom/google/android/material/color/ColorRoles;
.super Ljava/lang/Object;
.source "ColorRoles.java"


# instance fields
.field private final accent:I

.field private final accentContainer:I

.field private final onAccent:I

.field private final onAccentContainer:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput p1, p0, Lcom/google/android/material/color/ColorRoles;->accent:I

    #@5
    .line 39
    iput p2, p0, Lcom/google/android/material/color/ColorRoles;->onAccent:I

    #@7
    .line 40
    iput p3, p0, Lcom/google/android/material/color/ColorRoles;->accentContainer:I

    #@9
    .line 41
    iput p4, p0, Lcom/google/android/material/color/ColorRoles;->onAccentContainer:I

    #@b
    return-void
.end method


# virtual methods
.method public getAccent()I
    .registers 2

    #@0
    .line 47
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->accent:I

    #@2
    return v0
.end method

.method public getAccentContainer()I
    .registers 2

    #@0
    .line 62
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->accentContainer:I

    #@2
    return v0
.end method

.method public getOnAccent()I
    .registers 2

    #@0
    .line 56
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->onAccent:I

    #@2
    return v0
.end method

.method public getOnAccentContainer()I
    .registers 2

    #@0
    .line 71
    iget v0, p0, Lcom/google/android/material/color/ColorRoles;->onAccentContainer:I

    #@2
    return v0
.end method
