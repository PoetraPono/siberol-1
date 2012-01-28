<?php defined ('SISPATH') or die ('Acces Denied');

// --------------------------------------------------------------------

/**
 * Filter segments for malicious characters
 * 
 * @param	string
 * @return	string
 */
if ( ! function_exists('filter_uri'))
{
        function filter_uri($str)
        {
                if ($str != '')
                {
                        try
                        {
                                if ( ! preg_match("/^([a-z0-9-?=])+$/i", $str))
                                {
                                        throw new Exception ('The URI you submitted has disallowed characters.');
                                }
                                else
                                {
                                        // Convert programatic characters to entities
                                        $bad	= array('$',		'(',		')',		'%28',		'%29');
                                        $good	= array('&#36;',	'&#40;',	'&#41;',	'&#40;',	'&#41;');
                                
                                        return str_replace($bad, $good, $str);
                                }
                        }
                        catch ( Exception $m)
                        {
                                echo " Error : ". $m->getMessage ();
                        }       
                }
        }
}

// --------------------------------------------------------------------

/**
 * Get Base Url
 * 
 * @return	string
 */
if ( ! function_exists('method_name'))
{
        function base_url ()
        {
                if (isset($_SERVER['HTTP_HOST']))
                {
                        $base_url = isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off' ? 'https' : 'http';
                        $base_url .= '://'. $_SERVER['HTTP_HOST'];
                        $base_url .= str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
                }
        
                else
                {
                        $base_url = 'http://localhost/';
                }
                
                return $base_url;
        }
}

// --------------------------------------------------------------------

/**
 * Get Method Name
 * 
 * @return	string
 */
if ( ! function_exists('method_name'))
{
        function method_name ()
        {
                if (isset($_SERVER['HTTP_HOST']))
                {
                        $base = isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off' ? 'https' : 'http';
                        $base .= "://". $_SERVER['SERVER_NAME'];
                        $base .= $_SERVER['REQUEST_URI'];
                        
                        $method = str_replace ( base_url(),'', $base );
                }
                $post = strpos($method,'?');
                
                if ( $post )
                {
                        return filter_uri( substr($method, 0, $post));
                }
                else
                {
                        return filter_uri($method);
                }
        }
}


// ------------------------------------------------------------------------

/**
 * Word Limiter
 *
 * Limits a string to X number of words.
 *
 * @access	public
 * @param	string
 * @param	integer
 * @param	string	the end character. Usually an ellipsis
 * @return	string
 */
if ( ! function_exists('word_limiter'))
{
	function word_limit ($str, $limit = 100, $end_char = '&#8230;')
	{
		if (trim($str) == '')
		{
			return $str;
		}

		preg_match('/^\s*+(?:\S++\s*+){1,'.(int) $limit.'}/', $str, $matches);

		if (strlen($str) == strlen($matches[0]))
		{
			$end_char = '';
		}

		return rtrim($matches[0]).$end_char;
	}
}

// ------------------------------------------------------------------------

/**
 * Get Data
 *
 * @access	public
 * @param	string	the end character. Usually an ellipsis
 * @return	string
 */
if ( ! function_exists('get_post'))
{
	function get_post ($string)
    {
    	try
        {
        	if ( @$_POST[$string])
            {
            	return mysql_real_escape_string ($_POST[$string]);
				//return htmlentities($string, ENT_QUOTES);
            }
            elseif ( @$_GET[$string])
            {
            	return mysql_real_escape_string ($_GET[$string]);
				//return htmlentities($string, ENT_QUOTES);
            }
       	}
        catch ( Exception $m)
       	{
             echo 'Error : '. $m->getMessage ();
        }
	}
}

// ------------------------------------------------------------------------

/**
 * Form Dropdown
 *
 * @access	public
 * @param	string 	name form drowpdown
 * @param	array 	array item
 * @param	string	value
 * @return	string
 */
if ( ! function_exists('form_dropdown'))
{
		function form_dropdown ($name , $item = array (), $value)
		{
				echo '<select name="'.$name.'">';
				foreach ($item as $val=>$key)
				{
						if ( $val == $value)
						{
								echo '<option value="'.$val.'" selected="selected">'.$key.'</option>';
						}
						else
						{
								echo '<option value="'.$val.'">'.$key.'</option>';
						}
				}
				echo '</select>';
		}
}
// get  real ip address
function getRealIpAddr()
{
    if ( ! empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
    {
      	return $_SERVER['HTTP_CLIENT_IP'];
    }
    elseif ( ! empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
    {
      	return $_SERVER['HTTP_X_FORWARDED_FOR'];
    }	
    else
    {
     	 return $_SERVER['REMOTE_ADDR'];
    } 
}

function hexrgb ($hexstr)
	{
	  $int = hexdec($hexstr);
	
	  return array("red" => 0xFF & ($int >> 0x10),
		       "green" => 0xFF & ($int >> 0x8),
		       "blue" => 0xFF & $int);
	}