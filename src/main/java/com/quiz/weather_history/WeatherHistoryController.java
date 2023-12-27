package com.quiz.weather_history;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/weather-history")
@Controller
public class WeatherHistoryController {

	// 날씨 추가 화면
	@GetMapping("/add-weather-view")
	public String addWeatherView() {
		return "weather_history/addWeather";
	}
	
	// 날씨 목록 화면
	@GetMapping("/weather-list-view")
	public String weatherListView() {
		return "weather_history/weatherList";
	}
}
