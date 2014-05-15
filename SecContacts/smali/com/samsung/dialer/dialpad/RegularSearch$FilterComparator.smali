.class Lcom/samsung/dialer/dialpad/RegularSearch$FilterComparator;
.super Ljava/lang/Object;
.source "RegularSearch.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/dialpad/RegularSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterComparator"
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
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/dialer/dialpad/ContactItem;->getFilterPriority()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/dialer/dialpad/ContactItem;->getFilterPriority()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-ge v1, v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/dialer/dialpad/ContactItem;

    check-cast p2, Lcom/samsung/dialer/dialpad/ContactItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/dialer/dialpad/RegularSearch$FilterComparator;->compare(Lcom/samsung/dialer/dialpad/ContactItem;Lcom/samsung/dialer/dialpad/ContactItem;)I

    move-result v0

    return v0
.end method
