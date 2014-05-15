.class public Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;
.super Ljava/lang/Object;
.source "HistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/model/HistoryModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryData"
.end annotation


# instance fields
.field public mIsBookmarked:Z

.field public mIsChecked:Z

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mVisitCount:I

.field public mVisitTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitCount:I

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsBookmarked:Z

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    return-void
.end method
