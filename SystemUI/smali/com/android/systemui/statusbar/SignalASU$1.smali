.class Lcom/android/systemui/statusbar/SignalASU$1;
.super Landroid/telephony/PhoneStateListener;
.source "SignalASU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalASU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalASU;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalASU;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalASU$1;->this$0:Lcom/android/systemui/statusbar/SignalASU;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU$1;->this$0:Lcom/android/systemui/statusbar/SignalASU;

    #calls: Lcom/android/systemui/statusbar/SignalASU;->setTxt(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalASU;->access$0(Lcom/android/systemui/statusbar/SignalASU;I)V

    return-void
.end method
