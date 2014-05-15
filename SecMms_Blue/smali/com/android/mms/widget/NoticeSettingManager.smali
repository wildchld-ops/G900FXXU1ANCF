.class public Lcom/android/mms/widget/NoticeSettingManager;
.super Ljava/lang/Object;
.source "NoticeSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeSettingManager$1;,
        Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;
    }
.end annotation


# static fields
.field private static final FLAG_COUNT:Ljava/lang/String; = "flag_count"

.field public static final FLAG_EDIT:Ljava/lang/String; = "flag_edit"

.field public static final NOTICE_THREADS_MAX_COUNT:I = 0xa

.field public static final NOTICE_THREADS_MIN_COUNT:I = 0x0

.field public static final WIDGET_ID:Ljava/lang/String; = "widget_id"

.field public static mFavoriteDetail:Lcom/android/mms/widget/NoticeSettingManager;

.field public static mFavoriteObserver:Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteObserver:Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeSettingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/widget/NoticeSettingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeSettingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addThreadCount(Landroid/content/Context;IZ)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/mms/widget/NoticeSettingManager;->setThreadCount(Landroid/content/Context;II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getEditFlag(Landroid/content/Context;IZ)Z
    .locals 3

    const-string v1, "widget_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "flag_edit"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/widget/NoticeSettingManager;
    .locals 4

    sget-object v0, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteDetail:Lcom/android/mms/widget/NoticeSettingManager;

    if-nez v0, :cond_0

    const-string v0, "NoticeSettingManager"

    const-string v1, "create new buddy manager"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/mms/widget/NoticeSettingManager;

    invoke-direct {v0}, Lcom/android/mms/widget/NoticeSettingManager;-><init>()V

    sput-object v0, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteDetail:Lcom/android/mms/widget/NoticeSettingManager;

    new-instance v0, Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;

    sget-object v1, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteDetail:Lcom/android/mms/widget/NoticeSettingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;-><init>(Lcom/android/mms/widget/NoticeSettingManager;Lcom/android/mms/widget/NoticeSettingManager$1;)V

    sput-object v0, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteObserver:Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteObserver:Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    sget-object v0, Lcom/android/mms/widget/NoticeSettingManager;->mFavoriteDetail:Lcom/android/mms/widget/NoticeSettingManager;

    return-object v0
.end method

.method public static getThreadCount(Landroid/content/Context;I)I
    .locals 3

    const/4 v2, 0x0

    const-string v1, "widget_id"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "flag_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static setEditFlag(Landroid/content/Context;IZ)V
    .locals 4

    const-string v2, "widget_id"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "flag_edit"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setThreadCount(Landroid/content/Context;II)V
    .locals 4

    const/16 v2, 0xa

    if-le p2, v2, :cond_1

    const/16 p2, 0xa

    :cond_0
    :goto_0
    const-string v2, "widget_id"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "flag_count"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method
