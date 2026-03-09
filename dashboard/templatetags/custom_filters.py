# dashboard/templatetags/custom_filters.py
from django import template

register = template.Library()

@register.filter
def get_item(value, arg):
    """Получить элемент списка по индексу"""
    try:
        return value[arg]
    except (IndexError, TypeError):
        return None