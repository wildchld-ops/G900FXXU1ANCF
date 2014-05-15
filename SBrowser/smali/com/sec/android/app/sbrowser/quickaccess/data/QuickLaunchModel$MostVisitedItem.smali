.class public Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;
.super Ljava/lang/Object;
.source "QuickLaunchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MostVisitedItem"
.end annotation


# instance fields
.field public mThumbnail:[B

.field public final mTitle:Ljava/lang/String;

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickLaunchModel$MostVisitedItem;->mThumbnail:[B

    return-void
.end method
