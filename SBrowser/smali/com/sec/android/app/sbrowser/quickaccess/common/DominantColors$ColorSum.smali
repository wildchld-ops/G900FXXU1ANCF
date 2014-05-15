.class Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;
.super Ljava/lang/Object;
.source "DominantColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorSum"
.end annotation


# instance fields
.field b:D

.field g:D

.field r:D

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->r:D

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->g:D

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->b:D

    return-void
.end method
