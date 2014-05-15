.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v5, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a002f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_unknown_mode"

    iget-object v4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->val$item:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$902(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #calls: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->callMatchCriteriaToEditNum()V
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
