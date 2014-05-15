.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteManyItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "LGTPhotoRingRejectList"

    const-string v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const v5, 0x7f090375

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1500(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$14;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    goto :goto_1
.end method
