class Member extends MyexchangepeaModel.Model
  @configure 'Member', 'sn', 'display_name', 'created_at', 'updated_at', 'state',
    'country_code', 'phone_number', 'name', 'app_activated', 'sms_activated'

  @initData: (records) ->
    MyexchangepeaModel.Ajax.disable ->
      $.each records, (idx, record) ->
        Member.create(record)

window.Member = Member
