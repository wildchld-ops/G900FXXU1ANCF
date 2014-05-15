.class Lcom/android/mms/replyservice/MiniModeService$8;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$8;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    check-cast p2, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    check-cast p3, Lcom/android/mms/replyservice/MiniModeService$Vec2D;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/mms/replyservice/MiniModeService$Vec2D;-><init>(Lcom/android/mms/replyservice/MiniModeService$Vec2D;Lcom/android/mms/replyservice/MiniModeService$Vec2D;F)V

    return-object v0
.end method
