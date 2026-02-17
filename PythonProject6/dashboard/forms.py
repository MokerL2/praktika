# dashboard/forms.py
from django import forms

class LoginForm(forms.Form):
    username = forms.CharField(
        label='Логин',
        max_length=50,
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'placeholder': 'Введите логин',
            'required': 'required'
        })
    )
    password = forms.CharField(  # ✅ Должно называться именно 'password'
        label='Пароль',
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Введите пароль',
            'required': 'required'
        })
    )