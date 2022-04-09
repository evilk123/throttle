<?php
/**
 * 节流设置
 * @copyright The PHP-Tools
 */

namespace app\api\middleware;

use Webman\MiddlewareInterface;
use Webman\Http\Response;
use Webman\Http\Request;

/**
 * Class Throttle
 * @package app\api\middleware
 */
class Throttle implements MiddlewareInterface
{
    public function process(Request $request, callable $next, array $params = []): Response
    {
        return (new \yzh52521\middleware\Throttle())->handle($request, $next, $params);
}
}