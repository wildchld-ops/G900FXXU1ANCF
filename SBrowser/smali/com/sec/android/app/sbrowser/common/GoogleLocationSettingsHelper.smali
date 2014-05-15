.class public final Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper$isGoogleLocationSettingsAvailableAsyncTask;
    }
.end annotation


# static fields
.field private static final ACTION_GOOGLE_APPS_LOCATION_SETTINGS:Ljava/lang/String; = "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

.field private static final ACTION_GOOGLE_LOCATION_SETTINGS:Ljava/lang/String; = "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

.field private static final GOOGLE_SETTINGS_AUTHORITY:Ljava/lang/String; = "com.google.settings"

.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field private static NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GoogleLocationSettingHelper"

.field private static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field private static final USE_LOCATION_FOR_SERVICES_NOT_SET:I = 0x2

.field private static final USE_LOCATION_FOR_SERVICES_OFF:I = 0x0

.field private static final USE_LOCATION_FOR_SERVICES_ON:I = 0x1

.field private static VALUE:Ljava/lang/String;

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "name"

    sput-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->NAME:Ljava/lang/String;

    const-string v0, "value"

    sput-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isMasterLocationProviderEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGoogleLocationSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInfoBarAllowTextFromLocationSetting()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isGoogleLocationSettingsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isMasterLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->getUseLocationForServices()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "GoogleLocationSettingHelper"

    const-string v1, "getInfoBarAllowTextFromLocationSetting() returning null "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUseLocationForServices()I
    .locals 12

    const/4 v10, 0x2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->VALUE:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "use_location_for_services"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-nez v9, :cond_3

    move v1, v10

    :goto_1
    return v1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v1, "GoogleLocationSettingHelper"

    const-string v2, "Failed to get \'Use My Location\' setting"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    goto :goto_1

    :catch_1
    move-exception v8

    move v1, v10

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static isEnforceable()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGoogleAppsLocationSettingEnabled()Z
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isGoogleLocationSettingsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->getUseLocationForServices()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGoogleLocationSettingsActionIntentAvailable()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGoogleLocationSettingsAvailable()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isEnforceable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->isGoogleLocationSettingsActionIntentAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->getUseLocationForServices()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMasterLocationProviderEnabled()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static onMainActivityResume()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper$isGoogleLocationSettingsAvailableAsyncTask;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper$isGoogleLocationSettingsAvailableAsyncTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper$isGoogleLocationSettingsAvailableAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static startGoogleLocationSettingsActivity()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->sApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/GoogleLocationSettingsHelper;->getGoogleLocationSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
