require "test_helper"

describe MealPlan do
    describe "validity" do
        let (:meal_plan) {MealPlan.new}
        
        before do
            meal_plan.valid?
        end
        
        it "requires a start date" do
            meal_plan.errors[:start_date].must_include "can't be blank"
        end
        it "requires an end date" do
            meal_plan.errors[:end_date].must_include "can't be blank"
        end
        it "requires a user" do
            meal_plan.errors[:user].must_include "can't be blank"
        end
        
    end
    describe "generate a weekly plan" do
        it "populates a meal each day" do
            
        end
    
    end
end
