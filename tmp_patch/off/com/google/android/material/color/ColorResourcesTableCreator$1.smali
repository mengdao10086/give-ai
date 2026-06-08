.class Lcom/google/android/material/color/ColorResourcesTableCreator$1;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .registers 3

    #@0
    .line 63
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    #@3
    move-result p1

    #@4
    # getter for: Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S
    invoke-static {p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    #@7
    move-result p2

    #@8
    sub-int/2addr p1, p2

    #@9
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 60
    check-cast p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@2
    check-cast p2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;->compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    #@7
    move-result p1

    #@8
    return p1
.end method
