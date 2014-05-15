.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteDialog(ZIZ)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    #getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mFromContextMenu:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1300(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteFromContextMenu()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$12;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->deleteManyItems()V

    goto :goto_0
.end method
