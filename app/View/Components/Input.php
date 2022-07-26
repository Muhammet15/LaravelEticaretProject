<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Input extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
   

    private string $type;
    private string $label;
    private string $placeholder;
    private string $field;
    private string $value;
    public function __construct(string $label,string $placeholder,string $field, string $type="text",string $value="value")
    {
        $this->type=$type;
        $this->label=$label;
        $this->placeholder=$placeholder;
        $this->field=$field;
        $this->value=$value;


    }
    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.input',[
            "type" => $this->type,
            "label"=> $this->label,
            "placeholder"=>$this->placeholder,
            "field"=>$this->field,
            "value"=>$this->value
        ]);
    }
}
