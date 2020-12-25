
  <div>
    <div class="message">
      Введите имя
    </div>
    Введите имя пользователя: <input style="color:black;" v-model="username">
    <div
      v-if="error"
      class="error"
    >
      Пожалуйста, введите имя пользователя длиной не менее семи символов.
    </div>
  </div>