.class Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler$1;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler$1;->this$1:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    return-void
.end method
