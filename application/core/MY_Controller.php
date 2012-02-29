<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Extending Controller
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package	CodeIgniter
 * @author      Purwandi <free6300@gmail.com>
 * @since	CodeIgniter Version 2.0
 * @filesource
 */

/**
 * MY Controller Class
 *
 * @package	CodeIgniter
 * @subpackage	Controller
 * @author      Purwandi <free6300@gmail.com>
 */
class MY_Controller extends CI_Controller {
        
        public  $params = array ();
        public  $module = '';
        public	$model 	= '';
	
        /**
         * Constructor
         *
         */
        public function __construct ()
        {
                parent::__construct();
                
                // load spark
		$this->load->spark('template/1.9.0');
		$this->load->spark('DataMapper-ORM/1.8.2');
		
                $this->method   = ucwords(preg_replace('/[_]+/', ' ', strtolower(trim($this->router->fetch_method()))));
		
		$this->params['module']		= $this->module;
		$this->params['method']		= $this->method;
		
	}
        
        // ---------------------------------------------------------------------
        
        /**
         * View content
         *
         * Load content view 
         *
         * @access      protected
         * @param       string
         * @return      void
         * @filesource
         */
        protected function _view ($template = null, $actions = null, $not_found = FALSE)
        {
		$this->params['actions']        = $actions;
		
		// load template
		
		$this->template->build($this->module.'/'.$actions, $this->params);
        }
        
        public function index ($file = 'index', $template = 'main')
        {
                
		$this->_view($template, $file);
        }

        
	/**
	 * Display Delete
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
        protected function delete ($file = 'delete', $template = 'main')
        {
                $this->_view($template, $file);
        }
        
	/**
	 * Display Form
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
        protected function insert ($file = 'form', $template = 'main')
        {
		$this->_view('main', $file);
        }
	
	
	/**
	 * Display Form
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
        protected function update ($file = 'form', $template = 'main')
        {
		$this->_view($template, $file);
        }
	
	
	/**
	 * Display Details
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
	protected function details ($file = 'details', $template = 'main')
	{
		$this->_view($template, $file);
	}
	
	/**
	 * Display Cetak
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
	protected function cetak ($file = 'cetak', $template = 'main')
	{
		
		$this->_view($template, $file);
	}
	
	/**
	 * Display Form
	 *
	 * @access	protected
	 * @param	integer
	 * @return	void
	 */
	private function cek_module ()
	{
		
	}
}

/* End of file MY_Controller.php */
/* Location: ./core/MY_Controller.php */