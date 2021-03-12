class Student < ApplicationRecord
	# constants for students
	COURSE_LIST = [
		'Full stack web development using Ruby on Rails',
		'Full stack web development using NodeJs',
		'Full stack web development using Python',
		'Full stack web development using ReactJs',
		'Full stack web development using AngularJs',
		'Back-end web development using Python',
		'Back-end web development using Ruby on Rails',
		'Front-end web development',
		'Basic programing language C / C++'
	].freeze

	QUALIFICATION = [
		'B.Tech(Computer Science)',
		'M.Tech(Computer Science)',
		'BE(Computer Science)',
		'ME(Computer Science)',
		'B.Sc(Computer Science)',
		'M.Sc(Computer Science)',
		'BCA',
		'MCA',
		'Diploma (Computer Science)',
		'ITI (Computer Science)'
	].freeze

	#validates :first_name, :last_name, presence: { message: 'must be given please' }
	#validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true
	#validates :contact_no,length: {is: 10}, format: {with: /[0-9]/},presence: true
	#validates :date_of_birth,:date_of_joining, presence: true
	def full_name
		#"#{first_name} #{middle_name} #{last_name}"
		[first_name, middle_name, last_name].join(' ').capitalize
	end

	ransacker :full_name, formatter: proc { |v| v.mb_chars.downcase.to_s } do |parent|
	  Arel::Nodes::NamedFunction.new('LOWER',
	   [Arel::Nodes::NamedFunction.new('concat_ws',
	    [Arel::Nodes.build_quoted(' '), parent.table[:first_name], 
	  parent.table[:middle_name], parent.table[:last_name]])
	   ])
	end

	paginates_per 12
end


