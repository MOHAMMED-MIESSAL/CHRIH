<?php

namespace TCG\Voyager\Widgets;

use App\Models\Category;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class PostDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
       */
      public function run()
      {
          $count = Category::count();
          $string = trans_choice('Category', $count);
  
          return view('voyager::dimmer', array_merge($this->config, [
              'icon'   => 'voyager-file-text',
              'title'  => "{$count} {$string}",
              'text'   => __('You have ' .$count.'posts in your database. Click on button below to view all posts.', ['count' => $count, 'string' => Str::lower($string)]),
              'button' => [
                  'text' => __('view all Category'),
                  'link' => route('voyager.Category.index'),
              ],
              'image' => voyager_asset('images/widget-backgrounds/03.jpg'),
          ]));
      }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('Post'));
    }
}
