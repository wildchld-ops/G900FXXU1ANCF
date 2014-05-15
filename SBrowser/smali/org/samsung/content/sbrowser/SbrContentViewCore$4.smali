.class Lorg/samsung/content/sbrowser/SbrContentViewCore$4;
.super Ljava/lang/Object;
.source "SbrContentViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrContentViewCore;->showCustomContextMenu(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field final synthetic val$contextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;->val$contextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;->val$contextMenuInfo:Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;

    invoke-virtual {v1, p2}, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;->getCustomItemAt(I)Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;

    move-result-object v1

    iget v0, v1, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mAction:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$4;->this$0:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1, v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onCustomMenuAction(I)V

    return-void
.end method
