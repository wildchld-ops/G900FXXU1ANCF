.class public Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridUtils;
.super Ljava/lang/Object;
.source "QuickAccessGridUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reorder(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method
