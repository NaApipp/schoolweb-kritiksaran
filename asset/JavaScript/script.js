//JS Hamburger For Mobile View
const mobileNav = document.querySelector(".hamburger");
const navbar = document.querySelector(".menubar");


//Script Agar Ketika di Scroll navbar jadi berwarna
const toggleNav = () => {
  navbar.classList.toggle("active");
  mobileNav.classList.toggle("hamburger-active");
};
mobileNav.addEventListener("click", () => toggleNav());

window.addEventListener("scroll", function () {
  let navbar = document.getElementById("navbar");
  if (window.scrollY > 50) {
      navbar.classList.add("navbar-scrolled");
  } else {
      navbar.classList.remove("navbar-scrolled");
  }
});



//Animasi teks class "Sub-Judul"
const text = "'Sekolah Dengan Segudang Pestasi Yang Memiliki Tenaga Pendidik Profesional!'";
const container = document.querySelector(".sub-judul");
let i = 0;

function typeText() {
    if (i < text.length) {
        container.innerHTML += text.charAt(i);
        i++;
        setTimeout(typeText, 100); // Kecepatan mengetik (100ms per karakter)
    } else {
        container.style.borderRight = "none"; // Hapus kursor setelah selesai
    }
}  

typeText();