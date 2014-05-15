.class public Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;
.super Ljava/lang/Object;
.source "BookmarkWidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkAccount"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field public rootFolderId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->accountName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->accountType:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->rootFolderId:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->accountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->mLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c012c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->mLabel:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->accountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->accountType:Ljava/lang/String;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0058

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetConfigure$BookmarkAccount;->mLabel:Ljava/lang/String;

    return-object v0
.end method
