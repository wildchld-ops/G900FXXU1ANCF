.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$1;,
        Lcom/android/contacts/ContactsApplication$DelayedInitializer;,
        Lcom/android/contacts/ContactsApplication$Knox;
    }
.end annotation


# static fields
.field public static callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static contactsEditEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static contactsPid:[I

.field public static contactsSearch:Lcom/samsung/contacts/ContactsPerformance;

.field public static dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static favoriteEnter:Lcom/samsung/contacts/ContactsPerformance;

.field public static groupEnter:Lcom/samsung/contacts/ContactsPerformance;

.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;

.field public static ttfEditTextTypeface:Landroid/graphics/Typeface;

.field public static ttfNumTypeface:Landroid/graphics/Typeface;

.field public static ttfStringTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/contacts/ContactsApplication;->contactsPid:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0

    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    goto :goto_0

    :cond_2
    const-string v1, "snsPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/samsung/contacts/detail/SnsPhotoManager;->createSnsPhotoManager(Landroid/content/Context;)Lcom/samsung/contacts/detail/SnsPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mSnsPhotoManager:Lcom/samsung/contacts/detail/SnsPhotoManager;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const/4 v6, 0x3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    move-object v0, p0

    const-string v4, "ContactsPerformance"

    const-string v5, "ContactsApplication.onCreate start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "dialer"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "callLog"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->callLogEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "callDetail"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "contactList"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "contactDetail"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "edit"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->contactsEditEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "search"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->contactsSearch:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "group"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->groupEnter:Lcom/samsung/contacts/ContactsPerformance;

    new-instance v4, Lcom/samsung/contacts/ContactsPerformance;

    const-string v5, "favorite"

    invoke-direct {v4, v5}, Lcom/samsung/contacts/ContactsPerformance;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/contacts/ContactsApplication;->favoriteEnter:Lcom/samsung/contacts/ContactsPerformance;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/SamsungSansNum-3L.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/ContactsApplication;->ttfEditTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/SamsungSansNum-3Lv.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/ContactsApplication;->ttfNumTypeface:Landroid/graphics/Typeface;

    const-string v4, "/system/fonts/SamsungSans-Regular.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/ContactsApplication;->ttfStringTypeface:Landroid/graphics/Typeface;

    const-string v4, "ContactsPerf"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ContactsPerf"

    const-string v5, "ContactsApplication.onCreate start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "persona"

    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    const/16 v4, 0x64

    if-lt v2, v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    sput-boolean v4, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    sget-boolean v4, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    const-string v4, "KNOX"

    iget-object v5, v3, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    :goto_1
    sput-object v4, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    :cond_1
    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSim;->getOperation()Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/contacts/sim/contactsapplication/ContactsApplicationSimOperation;->sendBroadcast(Landroid/content/Context;)V

    :cond_2
    const-string v4, "ContactsStrictMode"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_3
    new-instance v4, Lcom/android/contacts/ContactsApplication$DelayedInitializer;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;-><init>(Lcom/android/contacts/ContactsApplication;Lcom/android/contacts/ContactsApplication$1;)V

    invoke-virtual {v4}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->execute()V

    const-string v4, "ContactsPerf"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ContactsPerf"

    const-string v5, "ContactsApplication.onCreate finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX2:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    goto :goto_1
.end method
