.class public Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;
.super Ljava/lang/Object;
.source "WebNotificationUIManager.java"


# static fields
.field public static final ACTION_NOTIFICATION:Ljava/lang/String; = "notifications"

.field private static final LOGTAG:Ljava/lang/String; = "WebNotificationUIManager"

.field public static final NOTIFICATION_ID:I = 0x639

.field private static mBody:Ljava/lang/String;

.field private static mContentUrl:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsHtmlWebNotification:Z

.field private static mTextBody:Landroid/widget/TextView;

.field private static mTextTitle:Landroid/widget/TextView;

.field private static mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mIsHtmlWebNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sput-object v2, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    :cond_0
    sput-object p1, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sput-object v2, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextTitle:Landroid/widget/TextView;

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextTitle:Landroid/widget/TextView;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextBody:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sput-object v2, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextBody:Landroid/widget/TextView;

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextBody:Landroid/widget/TextView;

    return-void
.end method

.method public static CreateHTMLNotification(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContentUrl:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mIsHtmlWebNotification:Z

    return-void
.end method

.method public static CreateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput-object p1, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTitle:Ljava/lang/String;

    sput-object p2, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mBody:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mIsHtmlWebNotification:Z

    return-void
.end method

.method public static ShowNotification()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mIsHtmlWebNotification:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextBody:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextTitle:Landroid/widget/TextView;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->mTextBody:Landroid/widget/TextView;

    return-void
.end method
