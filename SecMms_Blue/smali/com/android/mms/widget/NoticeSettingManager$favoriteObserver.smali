.class Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;
.super Landroid/database/ContentObserver;
.source "NoticeSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "favoriteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/NoticeSettingManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/widget/NoticeSettingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;->this$0:Lcom/android/mms/widget/NoticeSettingManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/widget/NoticeSettingManager;Lcom/android/mms/widget/NoticeSettingManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;-><init>(Lcom/android/mms/widget/NoticeSettingManager;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/widget/NoticeSettingManager$favoriteObserver;->this$0:Lcom/android/mms/widget/NoticeSettingManager;

    #getter for: Lcom/android/mms/widget/NoticeSettingManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeSettingManager;->access$000(Lcom/android/mms/widget/NoticeSettingManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuddiesObserver OnChange called!!!+ Contact Uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
