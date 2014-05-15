.class public Lcom/android/mms/ui/DeleteInfo;
.super Ljava/lang/Object;
.source "DeleteInfo.java"


# instance fields
.field public mLast:Z

.field public mThreadId:J

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    iput-boolean p4, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    iput-object p3, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    iput-boolean p3, p0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteInfo;->mUri:Landroid/net/Uri;

    return-void
.end method
