.class public Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;
.super Ljava/lang/Object;
.source "CloudUrlCategorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryResult"
.end annotation


# instance fields
.field public bookmarkCategoryCode:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public code:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->bookmarkCategoryCode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->category:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->bookmarkCategoryCode:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/solutions/CloudUrlCategorization$CategoryResult;->code:I

    return-void
.end method
