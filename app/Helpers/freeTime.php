<?php 

namespace App\Helpers;

class FreeTime{

    #ham load thoi gian bat dau ranh
	public static function loadStartTime($hStart, $mStart){
		$x = '<select name="'.$hStart.'">';
        $x .= '<option value=""></option>';
            for($i = 0; $i <= 23; $i++){
                $x .= '<option value="'. $i .'">'. $i .'</option>';
            }
        $x .= '</select>h<select name="'.$mStart.'">';
        $x .= '<option value=""></option>';
            for($i = 0; $i <= 0.55; $i = $i + 0.05){
                $x .=   '<option value="'. $i .'">'. $i*100 .'</option>';
            }
         
        $x .= '</select>'; 
        return $x;
	}

    #Hàm load thời gian kết thúc
	public static function loadEndTime($hEnd, $mEnd){
		$x = '<select name="'.$hEnd.'">';
        $x .= '<option value=""></option>';
            for($i = 0; $i <= 23; $i++){
                $x .= '<option value="'. $i .'">'. $i .'</option>';
            }
        $x .= '</select>h<select name="'.$mEnd.'">';
        $x .= '<option value=""></option>';
            for($i = 0; $i <= 0.55; $i = $i + 0.05){
                $x .=   '<option value="'. $i .'">'. $i*100 .'</option>';
            }
         
        $x .= '</select>'; 
        return $x;
	}
    #Hàm load day
	public static function loadDate($date){

		$x = '<select name="'.$date.'">';
        $x .= '<option value=""></option>';
            for($i = 1; $i <= 31; $i++){
                $x .= '<option value="'. $i .'">Ngày '. $i .'</option>';
            }
        $x .= '</select>'; 
        return $x;
	}

    #Hàm load month
	public static function loadMonth($month){
		$x = '<select name="'.$month.'">';
        $x .= '<option value=""></option>';
            for($i = 1; $i <= 12; $i++){
                $x .= '<option value="'. $i .'">Tháng '. $i .'</option>';
            }
        $x .= '</select>'; 
        return $x;
	}

    #Ham load thứ trong tuần
	public static function loadDay($day){
		$x = '<select name="'.$day.'">';
        $x .= '<option value=""></option>';
        for($i = 1; $i <= 7; $i++){
        	if($i != 1){
	          	$x .= '<option value="'. $i .'">Thứ '. $i .'</option>';
        	}else{
	          	$x .= '<option value="'. $i .'">Chủ nhật</option>';
        	}
        }
        $x .= '</select>';
        return $x;
	}
	public static function test(){
		return 'Test thoi';
	}
}