.class Lcom/android/mms/replyservice/MiniModeService$MoveParam;
.super Ljava/lang/Object;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveParam"
.end annotation


# instance fields
.field public bodyViewHeight:I

.field public bodyViewWidth:I

.field public mainViewHeight:I

.field public mainViewWidth:I

.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method public constructor <init>(Lcom/android/mms/replyservice/MiniModeService;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->mainViewWidth:I

    iput p3, p0, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->mainViewHeight:I

    iput p4, p0, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->bodyViewWidth:I

    iput p5, p0, Lcom/android/mms/replyservice/MiniModeService$MoveParam;->bodyViewHeight:I

    return-void
.end method
