<TeXmacs|1.99.4>

<style|generic>

<\body>
  <\equation*>
    min<rsub|G> max<rsub|D> \<Epsilon\><rsub|x\<sim\>p<around*|(|x|)>>log<around*|(|D<around*|(|x|)>|)>+\<Epsilon\><rsub|z\<in\>p<rsub|z><around*|(|z|)>>log<around*|(|1-D<around*|(|G<around*|(|z|)>|)>|)>
  </equation*>

  <\equation*>
    E<rsub|x\<sim\>P<rsub|r><around*|(|x|)>>log<frac|P<rsub|r><around*|(|x|)>|P<rsub|r><around*|(|x|)>+P<rsub|g><around*|(|x|)>>+E<rsub|x\<sim\>P<rsub|g><around*|(|x|)>>log<frac|P<rsub|g><around*|(|x|)>|P<rsub|r><around*|(|x|)>+P<rsub|g><around*|(|x|)>>=KS<around*|(|P<rsub|r>,P<rsub|g>|)>-log<around*|(|4|)>
  </equation*>

  <\equation*>
    <frac|1|m><big|sum><rsub|i=1><rsup|m>log<around*|(|P<rsub|g><around*|(|x<rsub|i>|)>|)>
  </equation*>

  <\itemize>
    <item>Generative adversarial nets (2014), I. Goodfellow et al.

    <item>Unsupervised representation learning with deep convolutional
    generative adversarial networks (2015), A. Radford et al.
  </itemize>

  <\itemize>
    <item>generative model; sampling from distribution(explicit density,
    transformation)

    <item>framework of GAN

    <item>optimization of GAN

    <item>DCGAN(simple arthemetric)

    <item>WGAN

    <item>application of GAN
  </itemize>

  <\equation*>
    KL<around*|(|P<rsub|r>,P<rsub|g>|)>=<big|int>P<rsub|r><around*|(|x|)>log<frac|P<rsub|r><around*|(|x|)>|P<rsub|g><around*|(|x|)>>\<mathd\>x
  </equation*>

  <\equation*>
    W<around*|(|P,Q|)>=inf<rsub|\<gamma\>\<in\>\<Gamma\>>E<rsub|x,y\<sim\>\<gamma\>><around*|(|<around*|\<\|\|\>|x-y|\<\|\|\>>|)>=inf<rsub|\<gamma\>\<in\>\<Gamma\>><big|int><rsub|X,X><around*|\<\|\|\>|x-y|\<\|\|\>>\<gamma\><around*|(|x,y|)>\<mathd\>x\<mathd\>y
  </equation*>

  <\equation*>
    W<around*|(|P,Q|)>=<frac|1|K>sup<rsub|<around*|\<\|\|\>|f|\<\|\|\>><rsub|L>\<leqslant\>K>E<rsub|x\<in\>P>f<around*|(|x|)>-E<rsub|x\<in\>Q>f<around*|(|x|)>
  </equation*>

  <\equation*>
    <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\>K<around*|\<\|\|\>|x-y|\<\|\|\>>,\<forall\>x,y
  </equation*>

  <\equation*>
    min<rsub|\<theta\>> max<rsub|w> E<rsub|x\<sim\>P<rsub|r>><around*|(|f<rsub|w><around*|(|x|)>|)>-E<rsub|z\<sim\>P<rsub|z>><around*|(|f<rsub|w><around*|(|g<rsub|\<theta\>><around*|(|z|)>|)>|)>
  </equation*>
</body>