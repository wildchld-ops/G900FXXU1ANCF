.class Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8$3;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8$3;->this$1:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8$3;->this$1:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;

    iget-object v0, v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    #getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$1200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
