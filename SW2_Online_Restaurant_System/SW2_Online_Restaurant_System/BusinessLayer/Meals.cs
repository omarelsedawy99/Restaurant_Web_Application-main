using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SW2_Online_Restaurant_System.DatabaseLayer;
using System.Data;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Meals
    {

        public Meals()
        {

        }
        private Manage_MealsDb MealDb;

        private string _MEAL_ID;
        public string MEAL_ID
        {
            get { return _MEAL_ID; }
            set { _MEAL_ID = value; }
        }
        private string _MEAL_NAME;
        public string MEAL_NAME
        {
            get { return _MEAL_NAME; }
            set { _MEAL_NAME = value; }
        }
        private float _MEAL_PRICR;
        public float MEAL_PRICR
        {
            get { return _MEAL_PRICR; }
            set { _MEAL_PRICR = value; }
        }
        private string _MEAL_DESCRIPTION;
        public string MEAL_DESCRIPTION
        {
            get { return _MEAL_DESCRIPTION; }
            set { _MEAL_DESCRIPTION = value; }
        }
        private string _MEAL_IMAGE;
        public string MEAL_IMAGE
        {
            get { return _MEAL_IMAGE; }
            set { _MEAL_IMAGE = value; }
        }
//----------------------------------------------------------------------------
        public DataTable FillGridWithMeals()
        {
            MealDb = new Manage_MealsDb();
            return MealDb.FillGridWithMeals();
        }
        public string Create_Meal_Id()
        {
            MealDb = new Manage_MealsDb();
            return MealDb.Create_Meal_Id();
        }
        public void Add_Meal(Meals meal,string user_name)
        {
            MealDb = new Manage_MealsDb();
            MealDb.Add_Meal(meal,user_name);
        }
        public void DeleteMeal(string Meal_id)
        {
            MealDb = new Manage_MealsDb();
            try
            {
                MealDb.DeleteMeal(Meal_id);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable search_meals(string s)
        {
            DataTable dtt = new DataTable();
            MealDb = new Manage_MealsDb();
            dtt = MealDb.search_meals(s);
            return dtt;
        }
        public void UpdateMeal(Meals MealObj, string user_name)
        {
            MealDb = new Manage_MealsDb();
            try
            {
                MealDb.UpdateMeal(MealObj,user_name);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
    }
}