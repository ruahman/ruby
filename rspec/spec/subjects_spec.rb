require_relative '../src/person'

describe Person do 
   it 'create a new person with a first and last name' do
      person = Person.new 'John', 'Smith'
      
      expect(person).to have_attributes(first_name: 'John') 
      expect(person).to have_attributes(last_name: 'Smith') 
   end 
end

describe Person.new 'John', 'Smith' do 
   it { is_expected.to have_attributes(first_name: 'John') } 
   it { is_expected.to have_attributes(last_name: 'Smith') }
end