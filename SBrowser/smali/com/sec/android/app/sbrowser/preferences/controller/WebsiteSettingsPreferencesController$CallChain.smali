.class abstract Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
.super Ljava/lang/Object;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallChain"
.end annotation


# instance fields
.field private mNext:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V

    return-void
.end method


# virtual methods
.method chain(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;)Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->mNext:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    return-object p1
.end method

.method protected next()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->mNext:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->mNext:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;->run()V

    :cond_0
    return-void
.end method

.method abstract run()V
.end method
