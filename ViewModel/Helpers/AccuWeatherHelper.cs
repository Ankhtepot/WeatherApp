using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using WeatherApp.Model;

namespace WeatherApp.ViewModel.Helpers
{
    public class AccuWeatherHelper
    {
        // location example http://dataservice.accuweather.com/locations/v1/cities/autocomplete?apikey=NFlqJPZl7TSF5O8fagyUqVhrHlydBmgK&q=Brno
        // current weather example http://dataservice.accuweather.com/currentconditions/v1/347629?apikey=NFlqJPZl7TSF5O8fagyUqVhrHlydBmgK
        public const string BASE_URL = "http://dataservice.accuweather.com/";
        public const string AUTOCOMPLETE_ENDPOINT = "locations/v1/cities/autocomplete?apikey={0}&q={1}";
        public const string CURRENT_CONDITIONS_ENDPOINT = "currentconditions/v1/{0}?apikey={1}";
        public const string API_KEY = "NFlqJPZl7TSF5O8fagyUqVhrHlydBmgK";

        public async static Task<List<City>> GetCities(string query)
        {
            List<City> cities = new List<City>();

            string url = BASE_URL + string.Format(AUTOCOMPLETE_ENDPOINT, API_KEY, query);

            using(HttpClient client = new HttpClient())
            {
                var response = await client.GetAsync(url);

                string json = await response.Content.ReadAsStringAsync();

                cities = JsonConvert.DeserializeObject<List<City>>(json);
            }

            return cities;
        }

        public static async Task<WeatherConditions> GetCurrentConditions(string cityKey)
        {
            WeatherConditions currentConditions = new WeatherConditions();

            string url = BASE_URL + string.Format(CURRENT_CONDITIONS_ENDPOINT, cityKey, API_KEY);

            using (HttpClient client = new HttpClient())
            {
                var response = await client.GetAsync(url);

                string json = await response.Content.ReadAsStringAsync();

                currentConditions = JsonConvert
                    .DeserializeObject<List<WeatherConditions>>(json)
                    .FirstOrDefault();
            }

            return currentConditions;
        }
    }
}
