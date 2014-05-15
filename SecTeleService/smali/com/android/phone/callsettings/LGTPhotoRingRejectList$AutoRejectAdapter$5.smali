.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z
    invoke-static {v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v1, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->showDialog(I)V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
