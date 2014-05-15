.class Lcom/samsung/dialer/dialpad/SmartDialSearch$NameComparator;
.super Ljava/lang/Object;
.source "SmartDialSearch.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/SmartDialSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/dialer/dialpad/ContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/dialer/dialpad/ContactItem;Lcom/samsung/dialer/dialpad/ContactItem;)I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v2

    :cond_0
    if-nez v4, :cond_1

    if-nez v1, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    if-nez v4, :cond_5

    if-nez v1, :cond_5

    move v2, v5

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    move v2, v6

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    move v2, v7

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_8
    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    if-nez v4, :cond_9

    if-nez v1, :cond_9

    move v2, v5

    goto :goto_0

    :cond_9
    if-nez v4, :cond_a

    move v2, v6

    goto :goto_0

    :cond_a
    if-nez v1, :cond_b

    move v2, v7

    goto :goto_0

    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_c
    if-nez v3, :cond_10

    if-nez v0, :cond_10

    if-nez v4, :cond_d

    if-nez v1, :cond_d

    move v2, v5

    goto :goto_0

    :cond_d
    if-nez v4, :cond_e

    move v2, v6

    goto :goto_0

    :cond_e
    if-nez v1, :cond_f

    move v2, v7

    goto :goto_0

    :cond_f
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_10
    move v2, v7

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/dialer/dialpad/ContactItem;

    check-cast p2, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/dialer/dialpad/SmartDialSearch$NameComparator;->compare(Lcom/samsung/dialer/dialpad/ContactItem;Lcom/samsung/dialer/dialpad/ContactItem;)I

    move-result v0

    return v0
.end method
