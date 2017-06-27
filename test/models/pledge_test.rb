require 'test_helper'

class PledgeTest < ActiveSupport::TestCase

#   test 'A pledge can be created' do
#     project = new_project
#     project.save
#     pledge = Pledge.create(
#       dollar_amount: 99.00,
#       project: project
#     )
#     pledge.save
#     assert pledge.valid?
#     assert pledge.persisted?
#   end

  test 'A pledge can be created' do
    owner = User.new(
      first_name:            'Molly',
      last_name:             'Lowenthal',
      email:                 'molly@example.com',
      password:              'passpass',
      password_confirmation: 'passpass'
    )
    owner.save
    user = new_user
    user.save
    project = new_project
    project.owner = owner
    project.save
    pledge = Pledge.new(
      dollar_amount: 99.00,
      project: project
    )
    pledge.user = User.new

  test 'A pledge can be created' do
    owner = create(:user, first_name: "Molly", last_name: "Lowenthal")
    user = create(:user, first_name: "Sally", last_name: "Lowenthal")
    project = create(:project, owner: owner)
    pledge = build(:pledge, user: user, project: project)
    pledge.save
    assert pledge.valid?
    assert pledge.persisted?
  end

  test 'owner cannot back own project' do
    Project.destroy_all
    owner = create(:user, first_name: "Sally", last_name: "Lowenthal")
    project = create(:project, owner: owner)
    pledge = build(:pledge, user: owner, project: project)
    pledge.save
    assert pledge.invalid?, 'Owner should not be able to pledge towards own project'
  end

end
