
def get_day(day){

    day_name = ""

    case(day)
    when "mon"
        day_name = "monday"
    when "tues"
        day_name = "tuesday"
    else 
        day_name = "nothing left"
    end

    day_name
}