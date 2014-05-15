.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;
.super Landroid/os/storage/StorageEventListener;
.source "PrivacySecurityPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "mounted"

    const-string v1, "unmounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #setter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$002(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #setter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->mStorage_state:Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$002(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->LOGTAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged is call, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->checkStorageState(Z)V

    :cond_5
    return-void
.end method
