.class Lcom/android/mms/spam/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$2;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "demo1"

    const-string v1, "IUpdateService onServiceConnected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/update/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/update/IUpdateService;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    return-void
.end method
