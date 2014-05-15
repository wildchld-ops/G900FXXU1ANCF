.class Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;
.super Ljava/lang/Object;
.source "IpNumberDeleteCdma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpNumberDeleteCdma;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->deleteIpNumber()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    #getter for: Lcom/android/phone/callsettings/IpNumberDeleteCdma;->mNumberItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->access$000(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->saveIpNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$1;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma;->finish()V

    return-void
.end method
