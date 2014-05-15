.class public Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;
.super Ljava/lang/Object;
.source "DialerTutorialDialog.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/impl/DialerTutorialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;
    invoke-static {v2}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$900(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Lcom/samsung/dialer/impl/DialerTutorialActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;->this$0:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    #getter for: Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;
    invoke-static {v2}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->access$900(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Lcom/samsung/dialer/impl/DialerTutorialActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method
