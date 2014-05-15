.class Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$1;
.super Ljava/lang/Object;
.source "DominantColors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->kMeans([IID)[Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;)I
    .locals 3

    const/high16 v0, 0x42c8

    iget v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->percentage:F

    iget v2, p2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->percentage:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$1;->compare(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;)I

    move-result v0

    return v0
.end method
