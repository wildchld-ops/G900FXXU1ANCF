.class Lcom/android/systemui/PhoneSettingService$1;
.super Landroid/os/Handler;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PhoneSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/PhoneSettingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/PhoneSettingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/PhoneSettingService$1;->this$0:Lcom/android/systemui/PhoneSettingService;

    #calls: Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V
    invoke-static {v0}, Lcom/android/systemui/PhoneSettingService;->access$000(Lcom/android/systemui/PhoneSettingService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
