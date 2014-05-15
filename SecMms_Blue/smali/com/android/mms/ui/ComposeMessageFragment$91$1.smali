.class Lcom/android/mms/ui/ComposeMessageFragment$91$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$91;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$91;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$91;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$91;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$91$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$91;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mLocationSensor:Lcom/samsung/mms/location/LocationSensor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/samsung/mms/location/LocationSensor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/LocationSensor;->controlLocationSensor(I)V

    return-void
.end method
