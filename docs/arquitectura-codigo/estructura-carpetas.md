src/
├── domain/                         <-- Aquí va el MODELO DE DOMINIO (Lógica/Tipos)
│   └── auth/
│       ├── auth.types.ts           # Definición de tipos (Usuario, Credenciales)
│       └── passwordValidator.ts    # Lógica pura de JS/TS que valida las 5 reglas de la clave
│
├── components/                     <-- Componentes compartidos globales
│   └── ui/
│       ├── Button.jsx              # El botón púrpura genérico
│       └── Input.jsx               # Input genérico (recibe estado de error para ponerse rojo)
│
└── views/                          <-- DIAGRAMA DE PÁGINAS (Secciones de la Web)
    └── auth/
        ├── layout/                 # Estructura de 2 columnas que comparten ambos mockups
        │   ├── AuthLayout.jsx      # Contenedor principal
        │   └── SideMedia.jsx       # Columna izquierda (Imagen de evento + Redes)
        │
        ├── login/                  # MÓDULO LOGIN (Mockups 1 y 2)
        │   ├── LoginPage.jsx       # Componente Orquestador de la página
        │   ├── LoginForm.jsx       # Formulario con los inputs y check 'Recordarme'
        │   └── LoginError.jsx      # El texto rojo de "Usuario y/o contraseña incorrectos"
        │
        └── register/               # MÓDULO REGISTRO (Mockups 3 y 4)
            ├── RegisterPage.jsx    # Componente Orquestador de la página
            ├── RegisterForm.jsx    # Formulario de alta con sus inputs correspondientes
            ├── PasswordChecklist.jsx # Caja de texto con los 5 requisitos de seguridad
            └── SuccessModal.jsx    # Pop-up de "Cuenta Creada exitosamente!!!" con botón de login