.class Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "SbrowserCreditCardEditorUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardNumberKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI$CardNumberKeyListener;-><init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserCreditCardEditorUI;)V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 2

    const/16 v1, 0xb

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
