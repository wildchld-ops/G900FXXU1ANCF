.class public Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterInputConnectionFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/AdapterInputConnection;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/content/browser/input/AdapterInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method
