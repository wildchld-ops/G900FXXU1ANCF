.class Lcom/android/mms/ui/DirectCallTutorialActivity$1;
.super Ljava/lang/Object;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DirectCallTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DirectCallTutorialActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DirectCallTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTutorialActivity$1;->this$0:Lcom/android/mms/ui/DirectCallTutorialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishTutorial()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTutorialActivity$1;->this$0:Lcom/android/mms/ui/DirectCallTutorialActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DirectCallTutorialActivity;->finish()V

    return-void
.end method
