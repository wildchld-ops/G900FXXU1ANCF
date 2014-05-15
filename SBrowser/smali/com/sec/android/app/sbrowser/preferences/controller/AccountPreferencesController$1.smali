.class Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$1;
.super Ljava/lang/Object;
.source "AccountPreferencesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    const-string v0, "com.sec.android.app.sbrowser"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method
