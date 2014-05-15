.class Lcom/android/phone/PhotoRingScreen$11;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->initPhotoRingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2300(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->setOutputX(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2300(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->setOutputY(I)V

    return-void
.end method
