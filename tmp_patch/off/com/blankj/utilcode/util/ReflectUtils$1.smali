.class Lcom/blankj/utilcode/util/ReflectUtils$1;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->sortConstructors(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;)V
    .registers 2

    #@0
    .line 161
    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 161
    check-cast p1, Ljava/lang/reflect/Constructor;

    #@2
    check-cast p2, Ljava/lang/reflect/Constructor;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils$1;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    #@0
    .line 164
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@3
    move-result-object p1

    #@4
    .line 165
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@7
    move-result-object p2

    #@8
    .line 166
    array-length v0, p1

    #@9
    const/4 v1, 0x0

    #@a
    move v2, v1

    #@b
    :goto_b
    if-ge v2, v0, :cond_34

    #@d
    .line 168
    aget-object v3, p1, v2

    #@f
    aget-object v4, p2, v2

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_31

    #@17
    .line 169
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@19
    aget-object p1, p1, v2

    #@1b
    # invokes: Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    #@1e
    move-result-object p1

    #@1f
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    #@21
    aget-object p2, p2, v2

    #@23
    # invokes: Lcom/blankj/utilcode/util/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    #@26
    move-result-object p2

    #@27
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result p1

    #@2b
    if-eqz p1, :cond_2f

    #@2d
    const/4 p1, 0x1

    #@2e
    return p1

    #@2f
    :cond_2f
    const/4 p1, -0x1

    #@30
    return p1

    #@31
    :cond_31
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_b

    #@34
    :cond_34
    return v1
.end method
