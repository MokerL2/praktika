# dashboard/urls.py
from django.urls import path
from . import views

app_name = 'dashboard'

urlpatterns = [
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('', views.index, name='index'),

    # Страницы партий
    path('batches/', views.batches, name='batches'),
    path('batches/add/', views.add_batch, name='add_batch'),
    path('batches/edit/<int:batch_id>/', views.edit_batch, name='edit_batch'),
    path('batches/delete/<int:batch_id>/', views.delete_batch, name='delete_batch'),

    # Страницы продуктов
    path('products/', views.products, name='products'),
    path('products/add/', views.add_product, name='add_product'),
    path('products/edit/<int:product_id>/', views.edit_product, name='edit_product'),
    path('products/delete/<int:product_id>/', views.delete_product, name='delete_product'),

    # Страницы отчетов
    path('reports/', views.reports, name='reports'),
    path('reports/stock/', views.report_stock, name='report_stock'),
    path('reports/writeoffs/', views.report_writeoffs, name='report_writeoffs'),
    path('reports/expirations/', views.report_expirations, name='report_expirations'),
    path('reports/sales/', views.report_sales, name='report_sales'),
    path('reports/suppliers/', views.report_suppliers, name='report_suppliers'),
    path('reports/temperature/', views.report_temperature, name='report_temperature'),

    # Экспорт отчетов
    path('reports/export/<str:report_type>/', views.export_report, name='export_report'),
]