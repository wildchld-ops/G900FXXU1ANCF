.class Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;
.super Ljava/lang/Object;
.source "DateTimeChooserAndroid.java"

# interfaces
.implements Lorg/chromium/content/browser/input/InputDialogContainer$InputActionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDateTimeDialog()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    iget-object v1, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    #getter for: Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:I
    invoke-static {v1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->access$000(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeCancelDialog(I)V
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->access$200(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;I)V

    return-void
.end method

.method public replaceDateTime(IIIIIII)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    iget-object v1, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    #getter for: Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:I
    invoke-static {v1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->access$000(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)I

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    #calls: Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeReplaceDateTime(IIIIIIII)V
    invoke-static/range {v0 .. v8}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->access$100(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;IIIIIIII)V

    return-void
.end method
