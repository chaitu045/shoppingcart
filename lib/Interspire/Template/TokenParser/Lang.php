<?php

class Interspire_Template_TokenParser_Lang extends Twig_TokenParser
{
	public function getTag()
	{
		return 'lang';
	}

	public function parse(Twig_Token $token)
	{
		$lineNo = $token->getLine();
		$name   = $this->parser->getExpressionParser()->parseExpression();
		$vars   = array();

		if ($this->parser->getStream()->test(Twig_Token::NAME_TYPE, 'with')) {
			$this->parser->getStream()->next();

			$vars = $this->parser->getExpressionParser()->parseExpression();
		}

		$this->parser->getStream()->expect(Twig_Token::BLOCK_END_TYPE);

		return new Interspire_Template_Node_Lang($name, $vars, $lineNo);
	}
}