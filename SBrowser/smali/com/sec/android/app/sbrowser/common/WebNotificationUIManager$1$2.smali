.class Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$2;
.super Ljava/lang/Object;
.source "WebNotificationUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1$2;->this$0:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "WebNotificationUIManager"

    const-string v1, "Inside WebNotificationUIManager handleButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
