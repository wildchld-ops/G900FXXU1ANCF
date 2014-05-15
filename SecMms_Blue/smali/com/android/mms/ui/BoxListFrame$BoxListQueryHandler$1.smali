.class Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;->this$1:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iput-wide p2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;->this$1:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;->val$threadId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    return-void
.end method
