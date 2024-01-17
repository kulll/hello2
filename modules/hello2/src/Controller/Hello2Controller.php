<?php declare(strict_types = 1);

namespace Drupal\hello2\Controller;

use Drupal\Core\Controller\ControllerBase;

/**
 * Returns responses for Hello2 routes.
 */
final class Hello2Controller extends ControllerBase {

  /**
   * Builds the response.
   */
  public function __invoke(): array {

    $build['content'] = [
      '#type' => 'item',
      '#markup' => $this->t('Tom Cruise'),
    ];

    return $build;
  }

}
