.class Lcom/sec/android/app/sbrowser/common/Tab$TabState;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabState"
.end annotation


# instance fields
.field public isIncognito:Z

.field public lastShownTimestamp:J

.field public openerAppId:Ljava/lang/String;

.field public parentId:I

.field public state:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
