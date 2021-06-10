window.addEventListener('load', () => {
  const articleb = document.getElementById("article_b");
  const articlec = document.getElementById("article_c");
  const articled = document.getElementById("article_d");
  const articlee = document.getElementById("article_e");
  const articlef = document.getElementById("article_f");
  const articleg = document.getElementById("article_g");
  const articleh = document.getElementById("article_h");
  const articlei = document.getElementById("article_i");
  const articlej = document.getElementById("article_j");
  const articlek = document.getElementById("article_k");
  const imagea = document.getElementById("image_a");
  const imageb = document.getElementById("image_b");
  const imagec = document.getElementById("image_c");
  const imaged = document.getElementById("image_d");
  const imagee = document.getElementById("image_e");
  const imagef = document.getElementById("image_f");
  const imageg = document.getElementById("image_g");
  const imageh = document.getElementById("image_h");
  const imagei = document.getElementById("image_i");
  const imagej = document.getElementById("image_j");

  const articlebOriginal = articleb.style.display;

  articleb.style.display = 'none';
  articlec.style.display = 'none';
  articled.style.display = 'none';
  articlee.style.display = 'none';
  articlef.style.display = 'none';
  articleg.style.display = 'none';
  articleh.style.display = 'none';
  articlei.style.display = 'none';
  articlej.style.display = 'none';
  articlek.style.display = 'none';

  imagea.addEventListener('change', () => {
    articleb.style.display = articlebOriginal;

 })
});