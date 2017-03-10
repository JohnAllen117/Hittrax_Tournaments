# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170306202629) do

  create_table "AtBatPlays", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint   "Id"
    t.integer  "UId",  limit: 3,                null: false
    t.integer  "SId",                           null: false
    t.datetime "TS"
    t.integer  "GId",                           null: false
    t.integer  "GUId",                          null: false
    t.integer  "PId",                           null: false
    t.integer  "PUId",                          null: false
    t.float    "EBV1", limit: 24,               null: false
    t.float    "EBV2", limit: 24,               null: false
    t.float    "EBV3", limit: 24,               null: false
    t.float    "Dist", limit: 24,               null: false
    t.float    "GD",   limit: 24, default: 0.0, null: false
    t.float    "PV",   limit: 24,               null: false
    t.integer  "Res",  limit: 1,                null: false
    t.integer  "HT",   limit: 1,                null: false
    t.integer  "PT",   limit: 1,                null: false
    t.integer  "Fld",  limit: 1,                null: false
    t.integer  "QD",   limit: 1,                null: false
    t.integer  "PR",   limit: 1,                null: false
    t.float    "PS1",  limit: 24,               null: false
    t.float    "PS2",  limit: 24,               null: false
    t.float    "PS3",  limit: 24,               null: false
    t.float    "PE1",  limit: 24,               null: false
    t.float    "PE2",  limit: 24,               null: false
    t.float    "PE3",  limit: 24,               null: false
    t.float    "PP1",  limit: 24,               null: false
    t.float    "PP2",  limit: 24,               null: false
    t.float    "PP3",  limit: 24,               null: false
    t.float    "PC1",  limit: 24,               null: false
    t.float    "PC2",  limit: 24,               null: false
    t.float    "PC3",  limit: 24,               null: false
    t.float    "TC",   limit: 24,               null: false
    t.integer  "RB1",  limit: 1,                null: false
    t.integer  "RB2",  limit: 1,                null: false
    t.integer  "RB3",  limit: 1,                null: false
    t.integer  "RB4",  limit: 1,                null: false
    t.integer  "RAB1", limit: 1,                null: false
    t.integer  "RAB2", limit: 1,                null: false
    t.integer  "RAB3", limit: 1,                null: false
    t.integer  "RAB4", limit: 1,                null: false
    t.integer  "RO",   limit: 1,                null: false
    t.integer  "RFO",  limit: 1,                null: false
    t.integer  "SCR",  limit: 1,                null: false
    t.integer  "DB1",  limit: 1,                null: false
    t.integer  "DB2",  limit: 1,                null: false
    t.float    "SZB",  limit: 24,               null: false
    t.float    "SZT",  limit: 24,               null: false
    t.float    "SZW",  limit: 24,               null: false
    t.integer  "OId",                           null: false
    t.integer  "OUId",                          null: false
    t.integer  "INH",             default: 0,   null: false
    t.index ["GId", "GUId"], name: "GameId", using: :btree
  end

  create_table "AtBats", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",  null: false
    t.integer  "SId",  null: false
    t.integer  "GId",  null: false
    t.integer  "GUId", null: false
    t.integer  "PId",  null: false
    t.integer  "PUId", null: false
    t.integer  "Ing",  null: false
    t.datetime "TS"
    t.integer  "IngH", null: false
    t.integer  "TId",  null: false
    t.integer  "TUId", null: false
    t.integer  "Ball", null: false
    t.integer  "Strk", null: false
    t.integer  "HR",   null: false
    t.integer  "Res",  null: false
    t.integer  "PC",   null: false
    t.integer  "RBIs", null: false
    t.integer  "Cntr", null: false
    t.integer  "Fin",  null: false
  end

  create_table "AuthorizeNetChargeAudit", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "MasterID",      limit: 20
    t.string   "CompanyID",     limit: 10
    t.string   "Functionality", limit: 50
    t.string   "Charge",        limit: 20
    t.datetime "CreatedOn"
    t.string   "ResponseCode",  limit: 500
  end

  create_table "BatModels", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                       null: false
    t.integer  "SId",                       null: false
    t.integer  "CId",                       null: false
    t.integer  "Active",                    null: false
    t.datetime "TS"
    t.string   "Name",           limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "Manufacturer",   limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "Model",          limit: 50, null: false, collation: "utf8_unicode_ci"
    t.float    "Length",         limit: 24, null: false
    t.float    "Weight",         limit: 24, null: false
    t.integer  "Category",                  null: false
    t.float    "BarrelDiameter", limit: 24, null: false
    t.integer  "BarrelMaterial",            null: false
    t.integer  "HandleMaterial",            null: false
    t.float    "MOI",            limit: 24, null: false
  end

  create_table "Bats", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",               null: false
    t.integer  "SId",               null: false
    t.integer  "CId",               null: false
    t.integer  "Active",            null: false
    t.datetime "TS"
    t.integer  "BMId",              null: false
    t.integer  "BMUId",             null: false
    t.string   "Serial", limit: 50, null: false, collation: "utf8_unicode_ci"
    t.float    "MOI",    limit: 24, null: false
  end

  create_table "Bookmarks", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                                                  null: false
    t.integer  "SId",                                                  null: false
    t.integer  "CId",                                                  null: false
    t.integer  "Active",                                               null: false
    t.datetime "TS"
    t.integer  "UsId",                                                 null: false
    t.datetime "PlayTS",               default: '2011-01-01 00:00:00', null: false
    t.datetime "Updated",              default: '2011-01-01 00:00:00', null: false
    t.integer  "UsUId",                                                null: false
    t.string   "Name",    limit: 256,                                  null: false, collation: "utf8_unicode_ci"
    t.string   "Path",    limit: 256,                                  null: false, collation: "utf8_unicode_ci"
    t.string   "Tag",     limit: 1024,                                 null: false, collation: "utf8_unicode_ci"
    t.integer  "Snd",                                                  null: false
    t.string   "Note",    limit: 2048,                                 null: false, collation: "utf8_unicode_ci"
    t.integer  "SnId",                                                 null: false
    t.integer  "SnUId",                                                null: false
    t.integer  "PId",                                                  null: false
    t.integer  "ST",                                                   null: false
    t.integer  "PT",                                                   null: false
    t.integer  "HT",                                                   null: false
    t.integer  "Res",                                                  null: false
    t.integer  "PBH",                                                  null: false
    t.integer  "PBV",                                                  null: false
    t.float    "LA",      limit: 24,                                   null: false
    t.float    "HV",      limit: 24,                                   null: false
    t.float    "PV",      limit: 24,                                   null: false
    t.float    "Dist",    limit: 24,                                   null: false
  end

  create_table "BoxScores", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                    default: 0,   null: false
    t.integer  "UId",                   default: 0,   null: false
    t.integer  "SId",                   default: 0,   null: false
    t.integer  "CId",                   default: 0,   null: false
    t.datetime "TS",                                  null: false
    t.datetime "Updated",                             null: false
    t.integer  "GameId",                default: 0,   null: false
    t.integer  "GameUId",               default: 0,   null: false
    t.integer  "GameRId",               default: 0,   null: false
    t.string   "TeamName",   limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "TeamId",                default: 0,   null: false
    t.integer  "TeamUId",               default: 0,   null: false
    t.string   "PlayerName", limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "PlayerId",              default: 0,   null: false
    t.integer  "PlayerUId",             default: 0,   null: false
    t.string   "UserName",   limit: 50,               null: false
    t.integer  "UserId",                default: 0,   null: false
    t.integer  "UserUId",               default: 0,   null: false
    t.integer  "AB",                    default: 0,   null: false
    t.integer  "P",                     default: 0,   null: false
    t.integer  "R",                     default: 0,   null: false
    t.integer  "H",                     default: 0,   null: false
    t.integer  "EBH",                   default: 0,   null: false
    t.integer  "H2B",                   default: 0,   null: false
    t.integer  "H3B",                   default: 0,   null: false
    t.integer  "HR",                    default: 0,   null: false
    t.integer  "RBI",                   default: 0,   null: false
    t.integer  "SO",                    default: 0,   null: false
    t.integer  "BB",                    default: 0,   null: false
    t.float    "AVG",        limit: 24, default: 0.0, null: false
    t.float    "SLG",        limit: 24, default: 0.0, null: false
    t.float    "OPS",        limit: 24, default: 0.0, null: false
    t.float    "OBP",        limit: 24, default: 0.0, null: false
    t.float    "BARSP",      limit: 24, default: 0.0, null: false
    t.float    "AV",         limit: 24, default: 0.0, null: false
    t.float    "MV",         limit: 24, default: 0.0, null: false
    t.float    "AD",         limit: 24, default: 0.0, null: false
    t.float    "MD",         limit: 24, default: 0.0, null: false
  end

  create_table "ClinicUsersCloud", primary_key: "MasterID", id: :string, limit: 100, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                    null: false
    t.integer  "UId",                   null: false
    t.integer  "SId",                   null: false
    t.integer  "CId",                   null: false
    t.string   "Uuid",       limit: 50, null: false
    t.string   "ClinicUuid", limit: 50, null: false
    t.datetime "TS",                    null: false
    t.datetime "Updated",               null: false
    t.string   "FirstName",  limit: 50, null: false
    t.string   "LastName",   limit: 50, null: false
    t.string   "Hash",       limit: 50, null: false
    t.string   "Email",      limit: 50, null: false
    t.string   "SkillLevel", limit: 50, null: false
    t.string   "GameType",   limit: 50, null: false
    t.float    "Height",     limit: 24, null: false
    t.index ["ClinicUuid"], name: "ClinicUuid", using: :btree
    t.index ["SId"], name: "SId", using: :btree
  end

  create_table "Clinics", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",                                 default: -1, null: false
    t.integer  "UId",                                default: -1, null: false
    t.integer  "SId",                                default: -1, null: false
    t.integer  "CompanyId",                          default: -1, null: false
    t.integer  "Type",                                            null: false
    t.string   "Name",                    limit: 50,              null: false, collation: "utf8_unicode_ci"
    t.integer  "AtBatsPerSession",                                null: false
    t.string   "uuid",                    limit: 50,              null: false
    t.datetime "TS"
    t.datetime "StartDate"
    t.integer  "Finished",                           default: 0,  null: false
    t.integer  "User1_Id",                           default: -1, null: false
    t.integer  "User2_Id",                           default: -1, null: false
    t.integer  "User3_Id",                           default: -1, null: false
    t.integer  "User4_Id",                           default: -1, null: false
    t.integer  "User5_Id",                           default: -1, null: false
    t.integer  "User6_Id",                           default: -1, null: false
    t.integer  "User7_Id",                           default: -1, null: false
    t.integer  "User8_Id",                           default: -1, null: false
    t.integer  "User9_Id",                           default: -1, null: false
    t.integer  "User10_Id",                          default: -1, null: false
    t.integer  "User11_Id",                          default: -1, null: false
    t.integer  "User12_Id",                          default: -1, null: false
    t.integer  "User13_Id",                          default: -1, null: false
    t.integer  "User14_Id",                          default: -1, null: false
    t.integer  "User15_Id",                          default: -1, null: false
    t.integer  "User16_Id",                          default: -1, null: false
    t.integer  "User17_Id",                          default: -1, null: false
    t.integer  "User18_Id",                          default: -1, null: false
    t.integer  "User19_Id",                          default: -1, null: false
    t.integer  "User20_Id",                          default: -1, null: false
    t.integer  "User21_Id",                          default: -1, null: false
    t.integer  "User22_Id",                          default: -1, null: false
    t.integer  "User23_Id",                          default: -1, null: false
    t.integer  "User24_Id",                          default: -1, null: false
    t.integer  "User25_Id",                          default: -1, null: false
    t.integer  "User26_Id",                          default: -1, null: false
    t.integer  "User27_Id",                          default: -1, null: false
    t.integer  "User28_Id",                          default: -1, null: false
    t.integer  "User29_Id",                          default: -1, null: false
    t.integer  "User30_Id",                          default: -1, null: false
    t.integer  "User31_Id",                          default: -1, null: false
    t.integer  "User32_Id",                          default: -1, null: false
    t.integer  "User33_Id",                          default: -1, null: false
    t.integer  "User34_Id",                          default: -1, null: false
    t.integer  "User35_Id",                          default: -1, null: false
    t.integer  "User36_Id",                          default: -1, null: false
    t.integer  "User37_Id",                          default: -1, null: false
    t.integer  "User38_Id",                          default: -1, null: false
    t.integer  "User39_Id",                          default: -1, null: false
    t.integer  "User40_Id",                          default: -1, null: false
    t.integer  "User41_Id",                          default: -1, null: false
    t.integer  "User42_Id",                          default: -1, null: false
    t.integer  "User43_Id",                          default: -1, null: false
    t.integer  "User44_Id",                          default: -1, null: false
    t.integer  "User45_Id",                          default: -1, null: false
    t.integer  "User46_Id",                          default: -1, null: false
    t.integer  "User47_Id",                          default: -1, null: false
    t.integer  "User48_Id",                          default: -1, null: false
    t.integer  "User49_Id",                          default: -1, null: false
    t.integer  "User50_Id",                          default: -1, null: false
    t.integer  "User51_Id",                          default: -1, null: false
    t.integer  "User52_Id",                          default: -1, null: false
    t.integer  "User53_Id",                          default: -1, null: false
    t.integer  "User54_Id",                          default: -1, null: false
    t.integer  "User55_Id",                          default: -1, null: false
    t.integer  "User56_Id",                          default: -1, null: false
    t.integer  "User57_Id",                          default: -1, null: false
    t.integer  "User58_Id",                          default: -1, null: false
    t.integer  "User59_Id",                          default: -1, null: false
    t.integer  "User60_Id",                          default: -1, null: false
    t.integer  "User61_Id",                          default: -1, null: false
    t.integer  "User62_Id",                          default: -1, null: false
    t.integer  "User63_Id",                          default: -1, null: false
    t.integer  "User64_Id",                          default: -1, null: false
    t.integer  "User65_Id",                          default: -1, null: false
    t.integer  "User66_Id",                          default: -1, null: false
    t.integer  "User67_Id",                          default: -1, null: false
    t.integer  "User68_Id",                          default: -1, null: false
    t.integer  "User69_Id",                          default: -1, null: false
    t.integer  "User70_Id",                          default: -1, null: false
    t.integer  "User71_Id",                          default: -1, null: false
    t.integer  "User72_Id",                          default: -1, null: false
    t.integer  "User73_Id",                          default: -1, null: false
    t.integer  "User74_Id",                          default: -1, null: false
    t.integer  "User75_Id",                          default: -1, null: false
    t.integer  "User76_Id",                          default: -1, null: false
    t.integer  "User77_Id",                          default: -1, null: false
    t.integer  "User78_Id",                          default: -1, null: false
    t.integer  "User79_Id",                          default: -1, null: false
    t.integer  "User80_Id",                          default: -1, null: false
    t.integer  "User81_Id",                          default: -1, null: false
    t.integer  "User82_Id",                          default: -1, null: false
    t.integer  "User83_Id",                          default: -1, null: false
    t.integer  "User84_Id",                          default: -1, null: false
    t.integer  "User85_Id",                          default: -1, null: false
    t.integer  "User86_Id",                          default: -1, null: false
    t.integer  "User87_Id",                          default: -1, null: false
    t.integer  "User88_Id",                          default: -1, null: false
    t.integer  "User89_Id",                          default: -1, null: false
    t.integer  "User90_Id",                          default: -1, null: false
    t.integer  "User91_Id",                          default: -1, null: false
    t.integer  "User92_Id",                          default: -1, null: false
    t.integer  "User93_Id",                          default: -1, null: false
    t.integer  "User94_Id",                          default: -1, null: false
    t.integer  "User95_Id",                          default: -1, null: false
    t.integer  "User96_Id",                          default: -1, null: false
    t.integer  "User97_Id",                          default: -1, null: false
    t.integer  "User98_Id",                          default: -1, null: false
    t.integer  "User99_Id",                          default: -1, null: false
    t.integer  "User100_Id",                         default: -1, null: false
    t.integer  "User101_Id",                         default: -1, null: false
    t.integer  "User102_Id",                         default: -1, null: false
    t.integer  "User103_Id",                         default: -1, null: false
    t.integer  "User104_Id",                         default: -1, null: false
    t.integer  "User105_Id",                         default: -1, null: false
    t.integer  "User106_Id",                         default: -1, null: false
    t.integer  "User107_Id",                         default: -1, null: false
    t.integer  "User108_Id",                         default: -1, null: false
    t.integer  "User109_Id",                         default: -1, null: false
    t.integer  "User110_Id",                         default: -1, null: false
    t.integer  "User111_Id",                         default: -1, null: false
    t.integer  "User112_Id",                         default: -1, null: false
    t.integer  "User113_Id",                         default: -1, null: false
    t.integer  "User114_Id",                         default: -1, null: false
    t.integer  "User115_Id",                         default: -1, null: false
    t.integer  "User116_Id",                         default: -1, null: false
    t.integer  "User117_Id",                         default: -1, null: false
    t.integer  "User118_Id",                         default: -1, null: false
    t.integer  "User119_Id",                         default: -1, null: false
    t.integer  "User120_Id",                         default: -1, null: false
    t.integer  "User121_Id",                         default: -1, null: false
    t.integer  "User122_Id",                         default: -1, null: false
    t.integer  "User123_Id",                         default: -1, null: false
    t.integer  "User124_Id",                         default: -1, null: false
    t.integer  "User125_Id",                         default: -1, null: false
    t.integer  "User126_Id",                         default: -1, null: false
    t.integer  "User127_Id",                         default: -1, null: false
    t.integer  "User128_Id",                         default: -1, null: false
    t.integer  "User129_Id",                         default: -1, null: false
    t.integer  "User130_Id",                         default: -1, null: false
    t.integer  "User131_Id",                         default: -1, null: false
    t.integer  "User132_Id",                         default: -1, null: false
    t.integer  "User133_Id",                         default: -1, null: false
    t.integer  "User134_Id",                         default: -1, null: false
    t.integer  "User135_Id",                         default: -1, null: false
    t.integer  "User136_Id",                         default: -1, null: false
    t.integer  "User137_Id",                         default: -1, null: false
    t.integer  "User138_Id",                         default: -1, null: false
    t.integer  "User139_Id",                         default: -1, null: false
    t.integer  "User140_Id",                         default: -1, null: false
    t.integer  "User141_Id",                         default: -1, null: false
    t.integer  "User142_Id",                         default: -1, null: false
    t.integer  "User143_Id",                         default: -1, null: false
    t.integer  "User144_Id",                         default: -1, null: false
    t.integer  "User145_Id",                         default: -1, null: false
    t.integer  "User146_Id",                         default: -1, null: false
    t.integer  "User147_Id",                         default: -1, null: false
    t.integer  "User148_Id",                         default: -1, null: false
    t.integer  "User149_Id",                         default: -1, null: false
    t.integer  "User150_Id",                         default: -1, null: false
    t.integer  "User151_Id",                         default: -1, null: false
    t.integer  "User152_Id",                         default: -1, null: false
    t.integer  "User153_Id",                         default: -1, null: false
    t.integer  "User154_Id",                         default: -1, null: false
    t.integer  "User155_Id",                         default: -1, null: false
    t.integer  "User156_Id",                         default: -1, null: false
    t.integer  "User157_Id",                         default: -1, null: false
    t.integer  "User158_Id",                         default: -1, null: false
    t.integer  "User159_Id",                         default: -1, null: false
    t.integer  "User160_Id",                         default: -1, null: false
    t.integer  "User1_UnitId",                       default: -1, null: false
    t.integer  "User2_UnitId",                       default: -1, null: false
    t.integer  "User3_UnitId",                       default: -1, null: false
    t.integer  "User4_UnitId",                       default: -1, null: false
    t.integer  "User5_UnitId",                       default: -1, null: false
    t.integer  "User6_UnitId",                       default: -1, null: false
    t.integer  "User7_UnitId",                       default: -1, null: false
    t.integer  "User8_UnitId",                       default: -1, null: false
    t.integer  "User9_UnitId",                       default: -1, null: false
    t.integer  "User10_UnitId",                      default: -1, null: false
    t.integer  "User11_UnitId",                      default: -1, null: false
    t.integer  "User12_UnitId",                      default: -1, null: false
    t.integer  "User13_UnitId",                      default: -1, null: false
    t.integer  "User14_UnitId",                      default: -1, null: false
    t.integer  "User15_UnitId",                      default: -1, null: false
    t.integer  "User16_UnitId",                      default: -1, null: false
    t.integer  "User17_UnitId",                      default: -1, null: false
    t.integer  "User18_UnitId",                      default: -1, null: false
    t.integer  "User19_UnitId",                      default: -1, null: false
    t.integer  "User20_UnitId",                      default: -1, null: false
    t.integer  "User21_UnitId",                      default: -1, null: false
    t.integer  "User22_UnitId",                      default: -1, null: false
    t.integer  "User23_UnitId",                      default: -1, null: false
    t.integer  "User24_UnitId",                      default: -1, null: false
    t.integer  "User25_UnitId",                      default: -1, null: false
    t.integer  "User26_UnitId",                      default: -1, null: false
    t.integer  "User27_UnitId",                      default: -1, null: false
    t.integer  "User28_UnitId",                      default: -1, null: false
    t.integer  "User29_UnitId",                      default: -1, null: false
    t.integer  "User30_UnitId",                      default: -1, null: false
    t.integer  "User31_UnitId",                      default: -1, null: false
    t.integer  "User32_UnitId",                      default: -1, null: false
    t.integer  "User33_UnitId",                      default: -1, null: false
    t.integer  "User34_UnitId",                      default: -1, null: false
    t.integer  "User35_UnitId",                      default: -1, null: false
    t.integer  "User36_UnitId",                      default: -1, null: false
    t.integer  "User37_UnitId",                      default: -1, null: false
    t.integer  "User38_UnitId",                      default: -1, null: false
    t.integer  "User39_UnitId",                      default: -1, null: false
    t.integer  "User40_UnitId",                      default: -1, null: false
    t.integer  "User41_UnitId",                      default: -1, null: false
    t.integer  "User42_UnitId",                      default: -1, null: false
    t.integer  "User43_UnitId",                      default: -1, null: false
    t.integer  "User44_UnitId",                      default: -1, null: false
    t.integer  "User45_UnitId",                      default: -1, null: false
    t.integer  "User46_UnitId",                      default: -1, null: false
    t.integer  "User47_UnitId",                      default: -1, null: false
    t.integer  "User48_UnitId",                      default: -1, null: false
    t.integer  "User49_UnitId",                      default: -1, null: false
    t.integer  "User50_UnitId",                      default: -1, null: false
    t.integer  "User51_UnitId",                      default: -1, null: false
    t.integer  "User52_UnitId",                      default: -1, null: false
    t.integer  "User53_UnitId",                      default: -1, null: false
    t.integer  "User54_UnitId",                      default: -1, null: false
    t.integer  "User55_UnitId",                      default: -1, null: false
    t.integer  "User56_UnitId",                      default: -1, null: false
    t.integer  "User57_UnitId",                      default: -1, null: false
    t.integer  "User58_UnitId",                      default: -1, null: false
    t.integer  "User59_UnitId",                      default: -1, null: false
    t.integer  "User60_UnitId",                      default: -1, null: false
    t.integer  "User61_UnitId",                      default: -1, null: false
    t.integer  "User62_UnitId",                      default: -1, null: false
    t.integer  "User63_UnitId",                      default: -1, null: false
    t.integer  "User64_UnitId",                      default: -1, null: false
    t.integer  "User65_UnitId",                      default: -1, null: false
    t.integer  "User66_UnitId",                      default: -1, null: false
    t.integer  "User67_UnitId",                      default: -1, null: false
    t.integer  "User68_UnitId",                      default: -1, null: false
    t.integer  "User69_UnitId",                      default: -1, null: false
    t.integer  "User70_UnitId",                      default: -1, null: false
    t.integer  "User71_UnitId",                      default: -1, null: false
    t.integer  "User72_UnitId",                      default: -1, null: false
    t.integer  "User73_UnitId",                      default: -1, null: false
    t.integer  "User74_UnitId",                      default: -1, null: false
    t.integer  "User75_UnitId",                      default: -1, null: false
    t.integer  "User76_UnitId",                      default: -1, null: false
    t.integer  "User77_UnitId",                      default: -1, null: false
    t.integer  "User78_UnitId",                      default: -1, null: false
    t.integer  "User79_UnitId",                      default: -1, null: false
    t.integer  "User80_UnitId",                      default: -1, null: false
    t.integer  "User81_UnitId",                      default: -1, null: false
    t.integer  "User82_UnitId",                      default: -1, null: false
    t.integer  "User83_UnitId",                      default: -1, null: false
    t.integer  "User84_UnitId",                      default: -1, null: false
    t.integer  "User85_UnitId",                      default: -1, null: false
    t.integer  "User86_UnitId",                      default: -1, null: false
    t.integer  "User87_UnitId",                      default: -1, null: false
    t.integer  "User88_UnitId",                      default: -1, null: false
    t.integer  "User89_UnitId",                      default: -1, null: false
    t.integer  "User90_UnitId",                      default: -1, null: false
    t.integer  "User91_UnitId",                      default: -1, null: false
    t.integer  "User92_UnitId",                      default: -1, null: false
    t.integer  "User93_UnitId",                      default: -1, null: false
    t.integer  "User94_UnitId",                      default: -1, null: false
    t.integer  "User95_UnitId",                      default: -1, null: false
    t.integer  "User96_UnitId",                      default: -1, null: false
    t.integer  "User97_UnitId",                      default: -1, null: false
    t.integer  "User98_UnitId",                      default: -1, null: false
    t.integer  "User99_UnitId",                      default: -1, null: false
    t.integer  "User100_UnitId",                     default: -1, null: false
    t.integer  "User101_UnitId",                     default: -1, null: false
    t.integer  "User102_UnitId",                     default: -1, null: false
    t.integer  "User103_UnitId",                     default: -1, null: false
    t.integer  "User104_UnitId",                     default: -1, null: false
    t.integer  "User105_UnitId",                     default: -1, null: false
    t.integer  "User106_UnitId",                     default: -1, null: false
    t.integer  "User107_UnitId",                     default: -1, null: false
    t.integer  "User108_UnitId",                     default: -1, null: false
    t.integer  "User109_UnitId",                     default: -1, null: false
    t.integer  "User110_UnitId",                     default: -1, null: false
    t.integer  "User111_UnitId",                     default: -1, null: false
    t.integer  "User112_UnitId",                     default: -1, null: false
    t.integer  "User113_UnitId",                     default: -1, null: false
    t.integer  "User114_UnitId",                     default: -1, null: false
    t.integer  "User115_UnitId",                     default: -1, null: false
    t.integer  "User116_UnitId",                     default: -1, null: false
    t.integer  "User117_UnitId",                     default: -1, null: false
    t.integer  "User118_UnitId",                     default: -1, null: false
    t.integer  "User119_UnitId",                     default: -1, null: false
    t.integer  "User120_UnitId",                     default: -1, null: false
    t.integer  "User121_UnitId",                     default: -1, null: false
    t.integer  "User122_UnitId",                     default: -1, null: false
    t.integer  "User123_UnitId",                     default: -1, null: false
    t.integer  "User124_UnitId",                     default: -1, null: false
    t.integer  "User125_UnitId",                     default: -1, null: false
    t.integer  "User126_UnitId",                     default: -1, null: false
    t.integer  "User127_UnitId",                     default: -1, null: false
    t.integer  "User128_UnitId",                     default: -1, null: false
    t.integer  "User129_UnitId",                     default: -1, null: false
    t.integer  "User130_UnitId",                     default: -1, null: false
    t.integer  "User131_UnitId",                     default: -1, null: false
    t.integer  "User132_UnitId",                     default: -1, null: false
    t.integer  "User133_UnitId",                     default: -1, null: false
    t.integer  "User134_UnitId",                     default: -1, null: false
    t.integer  "User135_UnitId",                     default: -1, null: false
    t.integer  "User136_UnitId",                     default: -1, null: false
    t.integer  "User137_UnitId",                     default: -1, null: false
    t.integer  "User138_UnitId",                     default: -1, null: false
    t.integer  "User139_UnitId",                     default: -1, null: false
    t.integer  "User140_UnitId",                     default: -1, null: false
    t.integer  "User141_UnitId",                     default: -1, null: false
    t.integer  "User142_UnitId",                     default: -1, null: false
    t.integer  "User143_UnitId",                     default: -1, null: false
    t.integer  "User144_UnitId",                     default: -1, null: false
    t.integer  "User145_UnitId",                     default: -1, null: false
    t.integer  "User146_UnitId",                     default: -1, null: false
    t.integer  "User147_UnitId",                     default: -1, null: false
    t.integer  "User148_UnitId",                     default: -1, null: false
    t.integer  "User149_UnitId",                     default: -1, null: false
    t.integer  "User150_UnitId",                     default: -1, null: false
    t.integer  "User151_UnitId",                     default: -1, null: false
    t.integer  "User152_UnitId",                     default: -1, null: false
    t.integer  "User153_UnitId",                     default: -1, null: false
    t.integer  "User154_UnitId",                     default: -1, null: false
    t.integer  "User155_UnitId",                     default: -1, null: false
    t.integer  "User156_UnitId",                     default: -1, null: false
    t.integer  "User157_UnitId",                     default: -1, null: false
    t.integer  "User158_UnitId",                     default: -1, null: false
    t.integer  "User159_UnitId",                     default: -1, null: false
    t.integer  "User160_UnitId",                     default: -1, null: false
    t.integer  "PitchingClinicUnitId1",              default: -1, null: false
    t.integer  "PitchingClinicUnitId2",              default: -1, null: false
    t.integer  "PitchingClinicUnitId3",              default: -1, null: false
    t.integer  "PitchingClinicUnitId4",              default: -1, null: false
    t.integer  "PitchingClinicUnitId5",              default: -1, null: false
    t.integer  "PitchingClinicUnitId6",              default: -1, null: false
    t.integer  "PitchingClinicUnitId7",              default: -1, null: false
    t.integer  "PitchingClinicUnitId8",              default: -1, null: false
    t.integer  "PitchingClinicUnitId9",              default: -1, null: false
    t.integer  "PitchingClinicUnitId10",             default: -1, null: false
    t.integer  "PitchingClinicUnitId11",             default: -1, null: false
    t.integer  "PitchingClinicUnitId12",             default: -1, null: false
    t.integer  "PitchingClinicUnitId13",             default: -1, null: false
    t.integer  "PitchingClinicUnitId14",             default: -1, null: false
    t.integer  "PitchingClinicUnitId15",             default: -1, null: false
    t.integer  "PitchingClinicUnitId16",             default: -1, null: false
    t.integer  "PitchingClinicUnitId17",             default: -1, null: false
    t.integer  "PitchingClinicUnitId18",             default: -1, null: false
    t.integer  "PitchingClinicUnitId19",             default: -1, null: false
    t.integer  "PitchingClinicUnitId20",             default: -1, null: false
    t.integer  "PitchingClinicUnitId21",             default: -1, null: false
    t.integer  "PitchingClinicUnitId22",             default: -1, null: false
    t.integer  "PitchingClinicUnitId23",             default: -1, null: false
    t.integer  "PitchingClinicUnitId24",             default: -1, null: false
    t.integer  "PitchingClinicUnitId25",             default: -1, null: false
    t.integer  "PitchingClinicUnitId26",             default: -1, null: false
    t.integer  "PitchingClinicUnitId27",             default: -1, null: false
    t.integer  "PitchingClinicUnitId28",             default: -1, null: false
    t.integer  "PitchingClinicUnitId29",             default: -1, null: false
    t.integer  "PitchingClinicUnitId30",             default: -1, null: false
    t.integer  "PitchingClinicUnitId31",             default: -1, null: false
    t.integer  "PitchingClinicUnitId32",             default: -1, null: false
    t.integer  "PitchingClinicUnitId33",             default: -1, null: false
    t.integer  "PitchingClinicUnitId34",             default: -1, null: false
    t.integer  "PitchingClinicUnitId35",             default: -1, null: false
    t.integer  "PitchingClinicUnitId36",             default: -1, null: false
    t.integer  "PitchingClinicUnitId37",             default: -1, null: false
    t.integer  "PitchingClinicUnitId38",             default: -1, null: false
    t.integer  "PitchingClinicUnitId39",             default: -1, null: false
    t.integer  "PitchingClinicUnitId40",             default: -1, null: false
    t.integer  "PitchingClinicUnitId41",             default: -1, null: false
    t.integer  "PitchingClinicUnitId42",             default: -1, null: false
    t.integer  "PitchingClinicUnitId43",             default: -1, null: false
    t.integer  "PitchingClinicUnitId44",             default: -1, null: false
    t.integer  "PitchingClinicUnitId45",             default: -1, null: false
    t.integer  "PitchingClinicUnitId46",             default: -1, null: false
    t.integer  "PitchingClinicUnitId47",             default: -1, null: false
    t.integer  "PitchingClinicUnitId48",             default: -1, null: false
    t.integer  "PitchingClinicUnitId49",             default: -1, null: false
    t.integer  "PitchingClinicUnitId50",             default: -1, null: false
    t.integer  "PitchingClinicUnitId51",             default: -1, null: false
    t.integer  "PitchingClinicUnitId52",             default: -1, null: false
    t.integer  "PitchingClinicUnitId53",             default: -1, null: false
    t.integer  "PitchingClinicUnitId54",             default: -1, null: false
    t.integer  "PitchingClinicUnitId55",             default: -1, null: false
    t.integer  "PitchingClinicUnitId56",             default: -1, null: false
    t.integer  "PitchingClinicUnitId57",             default: -1, null: false
    t.integer  "PitchingClinicUnitId58",             default: -1, null: false
    t.integer  "PitchingClinicUnitId59",             default: -1, null: false
    t.integer  "PitchingClinicUnitId60",             default: -1, null: false
    t.integer  "PitchingClinicUnitId61",             default: -1, null: false
    t.integer  "PitchingClinicUnitId62",             default: -1, null: false
    t.integer  "PitchingClinicUnitId63",             default: -1, null: false
    t.integer  "PitchingClinicUnitId64",             default: -1, null: false
    t.integer  "PitchingClinicUnitId65",             default: -1, null: false
    t.integer  "PitchingClinicUnitId66",             default: -1, null: false
    t.integer  "PitchingClinicUnitId67",             default: -1, null: false
    t.integer  "PitchingClinicUnitId68",             default: -1, null: false
    t.integer  "PitchingClinicUnitId69",             default: -1, null: false
    t.integer  "PitchingClinicUnitId70",             default: -1, null: false
    t.integer  "PitchingClinicUnitId71",             default: -1, null: false
    t.integer  "PitchingClinicUnitId72",             default: -1, null: false
    t.integer  "PitchingClinicUnitId73",             default: -1, null: false
    t.integer  "PitchingClinicUnitId74",             default: -1, null: false
    t.integer  "PitchingClinicUnitId75",             default: -1, null: false
    t.integer  "PitchingClinicUnitId76",             default: -1, null: false
    t.integer  "PitchingClinicUnitId77",             default: -1, null: false
    t.integer  "PitchingClinicUnitId78",             default: -1, null: false
    t.integer  "PitchingClinicUnitId79",             default: -1, null: false
    t.integer  "PitchingClinicUnitId80",             default: -1, null: false
    t.integer  "PitchingClinicUnitId81",             default: -1, null: false
    t.integer  "PitchingClinicUnitId82",             default: -1, null: false
    t.integer  "PitchingClinicUnitId83",             default: -1, null: false
    t.integer  "PitchingClinicUnitId84",             default: -1, null: false
    t.integer  "PitchingClinicUnitId85",             default: -1, null: false
    t.integer  "PitchingClinicUnitId86",             default: -1, null: false
    t.integer  "PitchingClinicUnitId87",             default: -1, null: false
    t.integer  "PitchingClinicUnitId88",             default: -1, null: false
    t.integer  "PitchingClinicUnitId89",             default: -1, null: false
    t.integer  "PitchingClinicUnitId90",             default: -1, null: false
    t.integer  "PitchingClinicUnitId91",             default: -1, null: false
    t.integer  "PitchingClinicUnitId92",             default: -1, null: false
    t.integer  "PitchingClinicUnitId93",             default: -1, null: false
    t.integer  "PitchingClinicUnitId94",             default: -1, null: false
    t.integer  "PitchingClinicUnitId95",             default: -1, null: false
    t.integer  "PitchingClinicUnitId96",             default: -1, null: false
    t.integer  "PitchingClinicUnitId97",             default: -1, null: false
    t.integer  "PitchingClinicUnitId98",             default: -1, null: false
    t.integer  "PitchingClinicUnitId99",             default: -1, null: false
    t.integer  "PitchingClinicUnitId100",            default: -1, null: false
    t.integer  "PitchingClinicUnitId101",            default: -1, null: false
    t.integer  "PitchingClinicUnitId102",            default: -1, null: false
    t.integer  "PitchingClinicUnitId103",            default: -1, null: false
    t.integer  "PitchingClinicUnitId104",            default: -1, null: false
    t.integer  "PitchingClinicUnitId105",            default: -1, null: false
    t.integer  "PitchingClinicUnitId106",            default: -1, null: false
    t.integer  "PitchingClinicUnitId107",            default: -1, null: false
    t.integer  "PitchingClinicUnitId108",            default: -1, null: false
    t.integer  "PitchingClinicUnitId109",            default: -1, null: false
    t.integer  "PitchingClinicUnitId110",            default: -1, null: false
    t.integer  "PitchingClinicUnitId111",            default: -1, null: false
    t.integer  "PitchingClinicUnitId112",            default: -1, null: false
    t.integer  "PitchingClinicUnitId113",            default: -1, null: false
    t.integer  "PitchingClinicUnitId114",            default: -1, null: false
    t.integer  "PitchingClinicUnitId115",            default: -1, null: false
    t.integer  "PitchingClinicUnitId116",            default: -1, null: false
    t.integer  "PitchingClinicUnitId117",            default: -1, null: false
    t.integer  "PitchingClinicUnitId118",            default: -1, null: false
    t.integer  "PitchingClinicUnitId119",            default: -1, null: false
    t.integer  "PitchingClinicUnitId120",            default: -1, null: false
    t.integer  "PitchingClinicUnitId121",            default: -1, null: false
    t.integer  "PitchingClinicUnitId122",            default: -1, null: false
    t.integer  "PitchingClinicUnitId123",            default: -1, null: false
    t.integer  "PitchingClinicUnitId124",            default: -1, null: false
    t.integer  "PitchingClinicUnitId125",            default: -1, null: false
    t.integer  "PitchingClinicUnitId126",            default: -1, null: false
    t.integer  "PitchingClinicUnitId127",            default: -1, null: false
    t.integer  "PitchingClinicUnitId128",            default: -1, null: false
    t.integer  "PitchingClinicUnitId129",            default: -1, null: false
    t.integer  "PitchingClinicUnitId130",            default: -1, null: false
    t.integer  "PitchingClinicUnitId131",            default: -1, null: false
    t.integer  "PitchingClinicUnitId132",            default: -1, null: false
    t.integer  "PitchingClinicUnitId133",            default: -1, null: false
    t.integer  "PitchingClinicUnitId134",            default: -1, null: false
    t.integer  "PitchingClinicUnitId135",            default: -1, null: false
    t.integer  "PitchingClinicUnitId136",            default: -1, null: false
    t.integer  "PitchingClinicUnitId137",            default: -1, null: false
    t.integer  "PitchingClinicUnitId138",            default: -1, null: false
    t.integer  "PitchingClinicUnitId139",            default: -1, null: false
    t.integer  "PitchingClinicUnitId140",            default: -1, null: false
    t.integer  "PitchingClinicUnitId141",            default: -1, null: false
    t.integer  "PitchingClinicUnitId142",            default: -1, null: false
    t.integer  "PitchingClinicUnitId143",            default: -1, null: false
    t.integer  "PitchingClinicUnitId144",            default: -1, null: false
    t.integer  "PitchingClinicUnitId145",            default: -1, null: false
    t.integer  "PitchingClinicUnitId146",            default: -1, null: false
    t.integer  "PitchingClinicUnitId147",            default: -1, null: false
    t.integer  "PitchingClinicUnitId148",            default: -1, null: false
    t.integer  "PitchingClinicUnitId149",            default: -1, null: false
    t.integer  "PitchingClinicUnitId150",            default: -1, null: false
    t.integer  "PitchingClinicUnitId151",            default: -1, null: false
    t.integer  "PitchingClinicUnitId152",            default: -1, null: false
    t.integer  "PitchingClinicUnitId153",            default: -1, null: false
    t.integer  "PitchingClinicUnitId154",            default: -1, null: false
    t.integer  "PitchingClinicUnitId155",            default: -1, null: false
    t.integer  "PitchingClinicUnitId156",            default: -1, null: false
    t.integer  "PitchingClinicUnitId157",            default: -1, null: false
    t.integer  "PitchingClinicUnitId158",            default: -1, null: false
    t.integer  "PitchingClinicUnitId159",            default: -1, null: false
    t.integer  "PitchingClinicUnitId160",            default: -1, null: false
    t.integer  "PitchingClinicId1",                  default: -1, null: false
    t.integer  "PitchingClinicId2",                  default: -1, null: false
    t.integer  "PitchingClinicId3",                  default: -1, null: false
    t.integer  "PitchingClinicId4",                  default: -1, null: false
    t.integer  "PitchingClinicId5",                  default: -1, null: false
    t.integer  "PitchingClinicId6",                  default: -1, null: false
    t.integer  "PitchingClinicId7",                  default: -1, null: false
    t.integer  "PitchingClinicId8",                  default: -1, null: false
    t.integer  "PitchingClinicId9",                  default: -1, null: false
    t.integer  "PitchingClinicId10",                 default: -1, null: false
    t.integer  "PitchingClinicId11",                 default: -1, null: false
    t.integer  "PitchingClinicId12",                 default: -1, null: false
    t.integer  "PitchingClinicId13",                 default: -1, null: false
    t.integer  "PitchingClinicId15",                 default: -1, null: false
    t.integer  "PitchingClinicId14",                 default: -1, null: false
    t.integer  "PitchingClinicId16",                 default: -1, null: false
    t.integer  "PitchingClinicId18",                 default: -1, null: false
    t.integer  "PitchingClinicId17",                 default: -1, null: false
    t.integer  "PitchingClinicId19",                 default: -1, null: false
    t.integer  "PitchingClinicId20",                 default: -1, null: false
    t.integer  "PitchingClinicId21",                 default: -1, null: false
    t.integer  "PitchingClinicId22",                 default: -1, null: false
    t.integer  "PitchingClinicId23",                 default: -1, null: false
    t.integer  "PitchingClinicId24",                 default: -1, null: false
    t.integer  "PitchingClinicId25",                 default: -1, null: false
    t.integer  "PitchingClinicId26",                 default: -1, null: false
    t.integer  "PitchingClinicId27",                 default: -1, null: false
    t.integer  "PitchingClinicId28",                 default: -1, null: false
    t.integer  "PitchingClinicId29",                 default: -1, null: false
    t.integer  "PitchingClinicId30",                 default: -1, null: false
    t.integer  "PitchingClinicId31",                 default: -1, null: false
    t.integer  "PitchingClinicId32",                 default: -1, null: false
    t.integer  "PitchingClinicId33",                 default: -1, null: false
    t.integer  "PitchingClinicId34",                 default: -1, null: false
    t.integer  "PitchingClinicId35",                 default: -1, null: false
    t.integer  "PitchingClinicId36",                 default: -1, null: false
    t.integer  "PitchingClinicId37",                 default: -1, null: false
    t.integer  "PitchingClinicId38",                 default: -1, null: false
    t.integer  "PitchingClinicId39",                 default: -1, null: false
    t.integer  "PitchingClinicId40",                 default: -1, null: false
    t.integer  "PitchingClinicId41",                 default: -1, null: false
    t.integer  "PitchingClinicId42",                 default: -1, null: false
    t.integer  "PitchingClinicId43",                 default: -1, null: false
    t.integer  "PitchingClinicId44",                 default: -1, null: false
    t.integer  "PitchingClinicId45",                 default: -1, null: false
    t.integer  "PitchingClinicId46",                 default: -1, null: false
    t.integer  "PitchingClinicId47",                 default: -1, null: false
    t.integer  "PitchingClinicId48",                 default: -1, null: false
    t.integer  "PitchingClinicId49",                 default: -1, null: false
    t.integer  "PitchingClinicId50",                 default: -1, null: false
    t.integer  "PitchingClinicId51",                 default: -1, null: false
    t.integer  "PitchingClinicId52",                 default: -1, null: false
    t.integer  "PitchingClinicId53",                 default: -1, null: false
    t.integer  "PitchingClinicId54",                 default: -1, null: false
    t.integer  "PitchingClinicId55",                 default: -1, null: false
    t.integer  "PitchingClinicId56",                 default: -1, null: false
    t.integer  "PitchingClinicId57",                 default: -1, null: false
    t.integer  "PitchingClinicId58",                 default: -1, null: false
    t.integer  "PitchingClinicId59",                 default: -1, null: false
    t.integer  "PitchingClinicId60",                 default: -1, null: false
    t.integer  "PitchingClinicId61",                 default: -1, null: false
    t.integer  "PitchingClinicId62",                 default: -1, null: false
    t.integer  "PitchingClinicId63",                 default: -1, null: false
    t.integer  "PitchingClinicId64",                 default: -1, null: false
    t.integer  "PitchingClinicId65",                 default: -1, null: false
    t.integer  "PitchingClinicId66",                 default: -1, null: false
    t.integer  "PitchingClinicId67",                 default: -1, null: false
    t.integer  "PitchingClinicId68",                 default: -1, null: false
    t.integer  "PitchingClinicId69",                 default: -1, null: false
    t.integer  "PitchingClinicId70",                 default: -1, null: false
    t.integer  "PitchingClinicId71",                 default: -1, null: false
    t.integer  "PitchingClinicId72",                 default: -1, null: false
    t.integer  "PitchingClinicId73",                 default: -1, null: false
    t.integer  "PitchingClinicId74",                 default: -1, null: false
    t.integer  "PitchingClinicId75",                 default: -1, null: false
    t.integer  "PitchingClinicId76",                 default: -1, null: false
    t.integer  "PitchingClinicId77",                 default: -1, null: false
    t.integer  "PitchingClinicId78",                 default: -1, null: false
    t.integer  "PitchingClinicId79",                 default: -1, null: false
    t.integer  "PitchingClinicId80",                 default: -1, null: false
    t.integer  "PitchingClinicId81",                 default: -1, null: false
    t.integer  "PitchingClinicId82",                 default: -1, null: false
    t.integer  "PitchingClinicId83",                 default: -1, null: false
    t.integer  "PitchingClinicId84",                 default: -1, null: false
    t.integer  "PitchingClinicId85",                 default: -1, null: false
    t.integer  "PitchingClinicId86",                 default: -1, null: false
    t.integer  "PitchingClinicId87",                 default: -1, null: false
    t.integer  "PitchingClinicId88",                 default: -1, null: false
    t.integer  "PitchingClinicId89",                 default: -1, null: false
    t.integer  "PitchingClinicId90",                 default: -1, null: false
    t.integer  "PitchingClinicId91",                 default: -1, null: false
    t.integer  "PitchingClinicId92",                 default: -1, null: false
    t.integer  "PitchingClinicId93",                 default: -1, null: false
    t.integer  "PitchingClinicId94",                 default: -1, null: false
    t.integer  "PitchingClinicId95",                 default: -1, null: false
    t.integer  "PitchingClinicId96",                 default: -1, null: false
    t.integer  "PitchingClinicId97",                 default: -1, null: false
    t.integer  "PitchingClinicId98",                 default: -1, null: false
    t.integer  "PitchingClinicId99",                 default: -1, null: false
    t.integer  "PitchingClinicId100",                default: -1, null: false
    t.integer  "PitchingClinicId101",                default: -1, null: false
    t.integer  "PitchingClinicId102",                default: -1, null: false
    t.integer  "PitchingClinicId103",                default: -1, null: false
    t.integer  "PitchingClinicId104",                default: -1, null: false
    t.integer  "PitchingClinicId105",                default: -1, null: false
    t.integer  "PitchingClinicId106",                default: -1, null: false
    t.integer  "PitchingClinicId107",                default: -1, null: false
    t.integer  "PitchingClinicId108",                default: -1, null: false
    t.integer  "PitchingClinicId109",                default: -1, null: false
    t.integer  "PitchingClinicId110",                default: -1, null: false
    t.integer  "PitchingClinicId111",                default: -1, null: false
    t.integer  "PitchingClinicId112",                default: -1, null: false
    t.integer  "PitchingClinicId113",                default: -1, null: false
    t.integer  "PitchingClinicId114",                default: -1, null: false
    t.integer  "PitchingClinicId115",                default: -1, null: false
    t.integer  "PitchingClinicId116",                default: -1, null: false
    t.integer  "PitchingClinicId117",                default: -1, null: false
    t.integer  "PitchingClinicId118",                default: -1, null: false
    t.integer  "PitchingClinicId119",                default: -1, null: false
    t.integer  "PitchingClinicId120",                default: -1, null: false
    t.integer  "PitchingClinicId121",                default: -1, null: false
    t.integer  "PitchingClinicId122",                default: -1, null: false
    t.integer  "PitchingClinicId123",                default: -1, null: false
    t.integer  "PitchingClinicId124",                default: -1, null: false
    t.integer  "PitchingClinicId125",                default: -1, null: false
    t.integer  "PitchingClinicId126",                default: -1, null: false
    t.integer  "PitchingClinicId127",                default: -1, null: false
    t.integer  "PitchingClinicId128",                default: -1, null: false
    t.integer  "PitchingClinicId129",                default: -1, null: false
    t.integer  "PitchingClinicId130",                default: -1, null: false
    t.integer  "PitchingClinicId131",                default: -1, null: false
    t.integer  "PitchingClinicId132",                default: -1, null: false
    t.integer  "PitchingClinicId133",                default: -1, null: false
    t.integer  "PitchingClinicId134",                default: -1, null: false
    t.integer  "PitchingClinicId135",                default: -1, null: false
    t.integer  "PitchingClinicId136",                default: -1, null: false
    t.integer  "PitchingClinicId137",                default: -1, null: false
    t.integer  "PitchingClinicId138",                default: -1, null: false
    t.integer  "PitchingClinicId139",                default: -1, null: false
    t.integer  "PitchingClinicId140",                default: -1, null: false
    t.integer  "PitchingClinicId141",                default: -1, null: false
    t.integer  "PitchingClinicId142",                default: -1, null: false
    t.integer  "PitchingClinicId143",                default: -1, null: false
    t.integer  "PitchingClinicId144",                default: -1, null: false
    t.integer  "PitchingClinicId145",                default: -1, null: false
    t.integer  "PitchingClinicId146",                default: -1, null: false
    t.integer  "PitchingClinicId147",                default: -1, null: false
    t.integer  "PitchingClinicId148",                default: -1, null: false
    t.integer  "PitchingClinicId149",                default: -1, null: false
    t.integer  "PitchingClinicId150",                default: -1, null: false
    t.integer  "PitchingClinicId151",                default: -1, null: false
    t.integer  "PitchingClinicId152",                default: -1, null: false
    t.integer  "PitchingClinicId153",                default: -1, null: false
    t.integer  "PitchingClinicId154",                default: -1, null: false
    t.integer  "PitchingClinicId155",                default: -1, null: false
    t.integer  "PitchingClinicId156",                default: -1, null: false
    t.integer  "PitchingClinicId157",                default: -1, null: false
    t.integer  "PitchingClinicId158",                default: -1, null: false
    t.integer  "PitchingClinicId159",                default: -1, null: false
    t.integer  "PitchingClinicId160",                default: -1, null: false
    t.integer  "SessionType1",                       default: -1, null: false
    t.integer  "SessionType2",                       default: -1, null: false
    t.integer  "SessionType3",                       default: -1, null: false
    t.integer  "SessionType4",                       default: -1, null: false
    t.integer  "SessionType5",                       default: -1, null: false
    t.integer  "SessionType6",                       default: -1, null: false
    t.integer  "SessionType7",                       default: -1, null: false
    t.integer  "SessionType8",                       default: -1, null: false
    t.integer  "SessionType9",                       default: -1, null: false
    t.integer  "SessionType10",                      default: -1, null: false
    t.integer  "SessionType11",                      default: -1, null: false
    t.integer  "SessionType12",                      default: -1, null: false
    t.integer  "SessionType13",                      default: -1, null: false
    t.integer  "SessionType14",                      default: -1, null: false
    t.integer  "SessionType15",                      default: -1, null: false
    t.integer  "SessionType16",                      default: -1, null: false
    t.integer  "SessionType17",                      default: -1, null: false
    t.integer  "SessionType18",                      default: -1, null: false
    t.integer  "SessionType19",                      default: -1, null: false
    t.integer  "SessionType20",                      default: -1, null: false
    t.integer  "SessionType21",                      default: -1, null: false
    t.integer  "SessionType22",                      default: -1, null: false
    t.integer  "SessionType23",                      default: -1, null: false
    t.integer  "SessionType24",                      default: -1, null: false
    t.integer  "SessionType25",                      default: -1, null: false
    t.integer  "SessionType26",                      default: -1, null: false
    t.integer  "SessionType27",                      default: -1, null: false
    t.integer  "SessionType28",                      default: -1, null: false
    t.integer  "SessionType29",                      default: -1, null: false
    t.integer  "SessionType30",                      default: -1, null: false
    t.integer  "SessionType31",                      default: -1, null: false
    t.integer  "SessionType32",                      default: -1, null: false
    t.integer  "SessionType33",                      default: -1, null: false
    t.integer  "SessionType34",                      default: -1, null: false
    t.integer  "SessionType35",                      default: -1, null: false
    t.integer  "SessionType36",                      default: -1, null: false
    t.integer  "SessionType37",                      default: -1, null: false
    t.integer  "SessionType38",                      default: -1, null: false
    t.integer  "SessionType39",                      default: -1, null: false
    t.integer  "SessionType40",                      default: -1, null: false
    t.integer  "SessionType41",                      default: -1, null: false
    t.integer  "SessionType42",                      default: -1, null: false
    t.integer  "SessionType43",                      default: -1, null: false
    t.integer  "SessionType44",                      default: -1, null: false
    t.integer  "SessionType45",                      default: -1, null: false
    t.integer  "SessionType46",                      default: -1, null: false
    t.integer  "SessionType47",                      default: -1, null: false
    t.integer  "SessionType48",                      default: -1, null: false
    t.integer  "SessionType49",                      default: -1, null: false
    t.integer  "SessionType50",                      default: -1, null: false
    t.integer  "SessionType51",                      default: -1, null: false
    t.integer  "SessionType52",                      default: -1, null: false
    t.integer  "SessionType53",                      default: -1, null: false
    t.integer  "SessionType54",                      default: -1, null: false
    t.integer  "SessionType55",                      default: -1, null: false
    t.integer  "SessionType56",                      default: -1, null: false
    t.integer  "SessionType57",                      default: -1, null: false
    t.integer  "SessionType58",                      default: -1, null: false
    t.integer  "SessionType59",                      default: -1, null: false
    t.integer  "SessionType60",                      default: -1, null: false
    t.integer  "SessionType61",                      default: -1, null: false
    t.integer  "SessionType62",                      default: -1, null: false
    t.integer  "SessionType63",                      default: -1, null: false
    t.integer  "SessionType64",                      default: -1, null: false
    t.integer  "SessionType65",                      default: -1, null: false
    t.integer  "SessionType66",                      default: -1, null: false
    t.integer  "SessionType67",                      default: -1, null: false
    t.integer  "SessionType68",                      default: -1, null: false
    t.integer  "SessionType69",                      default: -1, null: false
    t.integer  "SessionType70",                      default: -1, null: false
    t.integer  "SessionType71",                      default: -1, null: false
    t.integer  "SessionType72",                      default: -1, null: false
    t.integer  "SessionType73",                      default: -1, null: false
    t.integer  "SessionType74",                      default: -1, null: false
    t.integer  "SessionType75",                      default: -1, null: false
    t.integer  "SessionType76",                      default: -1, null: false
    t.integer  "SessionType77",                      default: -1, null: false
    t.integer  "SessionType78",                      default: -1, null: false
    t.integer  "SessionType79",                      default: -1, null: false
    t.integer  "SessionType80",                      default: -1, null: false
    t.integer  "SessionType81",                      default: -1, null: false
    t.integer  "SessionType82",                      default: -1, null: false
    t.integer  "SessionType83",                      default: -1, null: false
    t.integer  "SessionType84",                      default: -1, null: false
    t.integer  "SessionType85",                      default: -1, null: false
    t.integer  "SessionType86",                      default: -1, null: false
    t.integer  "SessionType87",                      default: -1, null: false
    t.integer  "SessionType88",                      default: -1, null: false
    t.integer  "SessionType89",                      default: -1, null: false
    t.integer  "SessionType90",                      default: -1, null: false
    t.integer  "SessionType91",                      default: -1, null: false
    t.integer  "SessionType92",                      default: -1, null: false
    t.integer  "SessionType93",                      default: -1, null: false
    t.integer  "SessionType94",                      default: -1, null: false
    t.integer  "SessionType95",                      default: -1, null: false
    t.integer  "SessionType96",                      default: -1, null: false
    t.integer  "SessionType97",                      default: -1, null: false
    t.integer  "SessionType98",                      default: -1, null: false
    t.integer  "SessionType99",                      default: -1, null: false
    t.integer  "SessionType100",                     default: -1, null: false
    t.integer  "SessionType101",                     default: -1, null: false
    t.integer  "SessionType102",                     default: -1, null: false
    t.integer  "SessionType103",                     default: -1, null: false
    t.integer  "SessionType104",                     default: -1, null: false
    t.integer  "SessionType105",                     default: -1, null: false
    t.integer  "SessionType106",                     default: -1, null: false
    t.integer  "SessionType107",                     default: -1, null: false
    t.integer  "SessionType108",                     default: -1, null: false
    t.integer  "SessionType109",                     default: -1, null: false
    t.integer  "SessionType110",                     default: -1, null: false
    t.integer  "SessionType111",                     default: -1, null: false
    t.integer  "SessionType112",                     default: -1, null: false
    t.integer  "SessionType113",                     default: -1, null: false
    t.integer  "SessionType114",                     default: -1, null: false
    t.integer  "SessionType115",                     default: -1, null: false
    t.integer  "SessionType116",                     default: -1, null: false
    t.integer  "SessionType117",                     default: -1, null: false
    t.integer  "SessionType118",                     default: -1, null: false
    t.integer  "SessionType119",                     default: -1, null: false
    t.integer  "SessionType120",                     default: -1, null: false
    t.integer  "SessionType121",                     default: -1, null: false
    t.integer  "SessionType122",                     default: -1, null: false
    t.integer  "SessionType123",                     default: -1, null: false
    t.integer  "SessionType124",                     default: -1, null: false
    t.integer  "SessionType125",                     default: -1, null: false
    t.integer  "SessionType126",                     default: -1, null: false
    t.integer  "SessionType127",                     default: -1, null: false
    t.integer  "SessionType128",                     default: -1, null: false
    t.integer  "SessionType129",                     default: -1, null: false
    t.integer  "SessionType130",                     default: -1, null: false
    t.integer  "SessionType131",                     default: -1, null: false
    t.integer  "SessionType132",                     default: -1, null: false
    t.integer  "SessionType133",                     default: -1, null: false
    t.integer  "SessionType134",                     default: -1, null: false
    t.integer  "SessionType135",                     default: -1, null: false
    t.integer  "SessionType136",                     default: -1, null: false
    t.integer  "SessionType137",                     default: -1, null: false
    t.integer  "SessionType138",                     default: -1, null: false
    t.integer  "SessionType139",                     default: -1, null: false
    t.integer  "SessionType140",                     default: -1, null: false
    t.integer  "SessionType141",                     default: -1, null: false
    t.integer  "SessionType142",                     default: -1, null: false
    t.integer  "SessionType143",                     default: -1, null: false
    t.integer  "SessionType144",                     default: -1, null: false
    t.integer  "SessionType145",                     default: -1, null: false
    t.integer  "SessionType146",                     default: -1, null: false
    t.integer  "SessionType147",                     default: -1, null: false
    t.integer  "SessionType148",                     default: -1, null: false
    t.integer  "SessionType149",                     default: -1, null: false
    t.integer  "SessionType150",                     default: -1, null: false
    t.integer  "SessionType151",                     default: -1, null: false
    t.integer  "SessionType152",                     default: -1, null: false
    t.integer  "SessionType153",                     default: -1, null: false
    t.integer  "SessionType154",                     default: -1, null: false
    t.integer  "SessionType155",                     default: -1, null: false
    t.integer  "SessionType156",                     default: -1, null: false
    t.integer  "SessionType157",                     default: -1, null: false
    t.integer  "SessionType158",                     default: -1, null: false
    t.integer  "SessionType159",                     default: -1, null: false
    t.integer  "SessionType160",                     default: -1, null: false
  end

  create_table "ClinicsAux1", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",             default: -1, null: false
    t.integer  "UId",            default: -1, null: false
    t.integer  "SId",            default: -1, null: false
    t.integer  "CompanyId",      default: -1, null: false
    t.integer  "ClinicId",       default: -1, null: false
    t.datetime "TS"
    t.integer  "User161_Id",     default: -1, null: false
    t.integer  "User161_UnitId", default: -1, null: false
    t.integer  "User162_Id",     default: -1, null: false
    t.integer  "User162_UnitId", default: -1, null: false
    t.integer  "User163_Id",     default: -1, null: false
    t.integer  "User163_UnitId", default: -1, null: false
    t.integer  "User164_Id",     default: -1, null: false
    t.integer  "User164_UnitId", default: -1, null: false
    t.integer  "User165_Id",     default: -1, null: false
    t.integer  "User165_UnitId", default: -1, null: false
    t.integer  "User166_Id",     default: -1, null: false
    t.integer  "User166_UnitId", default: -1, null: false
    t.integer  "User167_Id",     default: -1, null: false
    t.integer  "User167_UnitId", default: -1, null: false
    t.integer  "User168_Id",     default: -1, null: false
    t.integer  "User168_UnitId", default: -1, null: false
    t.integer  "User169_Id",     default: -1, null: false
    t.integer  "User169_UnitId", default: -1, null: false
    t.integer  "User170_Id",     default: -1, null: false
    t.integer  "User170_UnitId", default: -1, null: false
    t.integer  "User171_Id",     default: -1, null: false
    t.integer  "User171_UnitId", default: -1, null: false
    t.integer  "User172_Id",     default: -1, null: false
    t.integer  "User172_UnitId", default: -1, null: false
    t.integer  "User173_Id",     default: -1, null: false
    t.integer  "User173_UnitId", default: -1, null: false
    t.integer  "User174_Id",     default: -1, null: false
    t.integer  "User174_UnitId", default: -1, null: false
    t.integer  "User175_Id",     default: -1, null: false
    t.integer  "User175_UnitId", default: -1, null: false
    t.integer  "User176_Id",     default: -1, null: false
    t.integer  "User176_UnitId", default: -1, null: false
    t.integer  "User177_Id",     default: -1, null: false
    t.integer  "User177_UnitId", default: -1, null: false
    t.integer  "User178_Id",     default: -1, null: false
    t.integer  "User178_UnitId", default: -1, null: false
    t.integer  "User179_Id",     default: -1, null: false
    t.integer  "User179_UnitId", default: -1, null: false
    t.integer  "User180_Id",     default: -1, null: false
    t.integer  "User180_UnitId", default: -1, null: false
    t.integer  "User181_Id",     default: -1, null: false
    t.integer  "User181_UnitId", default: -1, null: false
    t.integer  "User182_Id",     default: -1, null: false
    t.integer  "User182_UnitId", default: -1, null: false
    t.integer  "User183_Id",     default: -1, null: false
    t.integer  "User183_UnitId", default: -1, null: false
    t.integer  "User184_Id",     default: -1, null: false
    t.integer  "User184_UnitId", default: -1, null: false
    t.integer  "User185_Id",     default: -1, null: false
    t.integer  "User185_UnitId", default: -1, null: false
    t.integer  "User186_Id",     default: -1, null: false
    t.integer  "User186_UnitId", default: -1, null: false
    t.integer  "User187_Id",     default: -1, null: false
    t.integer  "User187_UnitId", default: -1, null: false
    t.integer  "User188_Id",     default: -1, null: false
    t.integer  "User188_UnitId", default: -1, null: false
    t.integer  "User189_Id",     default: -1, null: false
    t.integer  "User189_UnitId", default: -1, null: false
    t.integer  "User190_Id",     default: -1, null: false
    t.integer  "User190_UnitId", default: -1, null: false
    t.integer  "User191_Id",     default: -1, null: false
    t.integer  "User191_UnitId", default: -1, null: false
    t.integer  "User192_Id",     default: -1, null: false
    t.integer  "User192_UnitId", default: -1, null: false
    t.integer  "User193_Id",     default: -1, null: false
    t.integer  "User193_UnitId", default: -1, null: false
    t.integer  "User194_Id",     default: -1, null: false
    t.integer  "User194_UnitId", default: -1, null: false
    t.integer  "User195_Id",     default: -1, null: false
    t.integer  "User195_UnitId", default: -1, null: false
    t.integer  "User196_Id",     default: -1, null: false
    t.integer  "User196_UnitId", default: -1, null: false
    t.integer  "User197_Id",     default: -1, null: false
    t.integer  "User197_UnitId", default: -1, null: false
    t.integer  "User198_Id",     default: -1, null: false
    t.integer  "User198_UnitId", default: -1, null: false
    t.integer  "User199_Id",     default: -1, null: false
    t.integer  "User199_UnitId", default: -1, null: false
    t.integer  "User200_Id",     default: -1, null: false
    t.integer  "User200_UnitId", default: -1, null: false
    t.integer  "User201_Id",     default: -1, null: false
    t.integer  "User201_UnitId", default: -1, null: false
    t.integer  "User202_Id",     default: -1, null: false
    t.integer  "User202_UnitId", default: -1, null: false
    t.integer  "User203_Id",     default: -1, null: false
    t.integer  "User203_UnitId", default: -1, null: false
    t.integer  "User204_Id",     default: -1, null: false
    t.integer  "User204_UnitId", default: -1, null: false
    t.integer  "User205_Id",     default: -1, null: false
    t.integer  "User205_UnitId", default: -1, null: false
    t.integer  "User206_Id",     default: -1, null: false
    t.integer  "User206_UnitId", default: -1, null: false
    t.integer  "User207_Id",     default: -1, null: false
    t.integer  "User207_UnitId", default: -1, null: false
    t.integer  "User208_Id",     default: -1, null: false
    t.integer  "User208_UnitId", default: -1, null: false
    t.integer  "User209_Id",     default: -1, null: false
    t.integer  "User209_UnitId", default: -1, null: false
    t.integer  "User210_Id",     default: -1, null: false
    t.integer  "User210_UnitId", default: -1, null: false
    t.integer  "User211_Id",     default: -1, null: false
    t.integer  "User211_UnitId", default: -1, null: false
    t.integer  "User212_Id",     default: -1, null: false
    t.integer  "User212_UnitId", default: -1, null: false
    t.integer  "User213_Id",     default: -1, null: false
    t.integer  "User213_UnitId", default: -1, null: false
    t.integer  "User214_Id",     default: -1, null: false
    t.integer  "User214_UnitId", default: -1, null: false
    t.integer  "User215_Id",     default: -1, null: false
    t.integer  "User215_UnitId", default: -1, null: false
    t.integer  "User216_Id",     default: -1, null: false
    t.integer  "User216_UnitId", default: -1, null: false
    t.integer  "User217_Id",     default: -1, null: false
    t.integer  "User217_UnitId", default: -1, null: false
    t.integer  "User218_Id",     default: -1, null: false
    t.integer  "User218_UnitId", default: -1, null: false
    t.integer  "User219_Id",     default: -1, null: false
    t.integer  "User219_UnitId", default: -1, null: false
    t.integer  "User220_Id",     default: -1, null: false
    t.integer  "User220_UnitId", default: -1, null: false
    t.integer  "User221_Id",     default: -1, null: false
    t.integer  "User221_UnitId", default: -1, null: false
    t.integer  "User222_Id",     default: -1, null: false
    t.integer  "User222_UnitId", default: -1, null: false
    t.integer  "User223_Id",     default: -1, null: false
    t.integer  "User223_UnitId", default: -1, null: false
    t.integer  "User224_Id",     default: -1, null: false
    t.integer  "User224_UnitId", default: -1, null: false
    t.integer  "User225_Id",     default: -1, null: false
    t.integer  "User225_UnitId", default: -1, null: false
    t.integer  "User226_Id",     default: -1, null: false
    t.integer  "User226_UnitId", default: -1, null: false
    t.integer  "User227_Id",     default: -1, null: false
    t.integer  "User227_UnitId", default: -1, null: false
    t.integer  "User228_Id",     default: -1, null: false
    t.integer  "User228_UnitId", default: -1, null: false
    t.integer  "User229_Id",     default: -1, null: false
    t.integer  "User229_UnitId", default: -1, null: false
    t.integer  "User230_Id",     default: -1, null: false
    t.integer  "User230_UnitId", default: -1, null: false
    t.integer  "User231_Id",     default: -1, null: false
    t.integer  "User231_UnitId", default: -1, null: false
    t.integer  "User232_Id",     default: -1, null: false
    t.integer  "User232_UnitId", default: -1, null: false
    t.integer  "User233_Id",     default: -1, null: false
    t.integer  "User233_UnitId", default: -1, null: false
    t.integer  "User234_Id",     default: -1, null: false
    t.integer  "User234_UnitId", default: -1, null: false
    t.integer  "User235_Id",     default: -1, null: false
    t.integer  "User235_UnitId", default: -1, null: false
    t.integer  "User236_Id",     default: -1, null: false
    t.integer  "User236_UnitId", default: -1, null: false
    t.integer  "User237_Id",     default: -1, null: false
    t.integer  "User237_UnitId", default: -1, null: false
    t.integer  "User238_Id",     default: -1, null: false
    t.integer  "User238_UnitId", default: -1, null: false
    t.integer  "User239_Id",     default: -1, null: false
    t.integer  "User239_UnitId", default: -1, null: false
    t.integer  "User240_Id",     default: -1, null: false
    t.integer  "User240_UnitId", default: -1, null: false
    t.integer  "User241_Id",     default: -1, null: false
    t.integer  "User241_UnitId", default: -1, null: false
    t.integer  "User242_Id",     default: -1, null: false
    t.integer  "User242_UnitId", default: -1, null: false
    t.integer  "User243_Id",     default: -1, null: false
    t.integer  "User243_UnitId", default: -1, null: false
    t.integer  "User244_Id",     default: -1, null: false
    t.integer  "User244_UnitId", default: -1, null: false
    t.integer  "User245_Id",     default: -1, null: false
    t.integer  "User245_UnitId", default: -1, null: false
    t.integer  "User246_Id",     default: -1, null: false
    t.integer  "User246_UnitId", default: -1, null: false
    t.integer  "User247_Id",     default: -1, null: false
    t.integer  "User247_UnitId", default: -1, null: false
    t.integer  "User248_Id",     default: -1, null: false
    t.integer  "User248_UnitId", default: -1, null: false
    t.integer  "User249_Id",     default: -1, null: false
    t.integer  "User249_UnitId", default: -1, null: false
    t.integer  "User250_Id",     default: -1, null: false
    t.integer  "User250_UnitId", default: -1, null: false
    t.integer  "User251_Id",     default: -1, null: false
    t.integer  "User251_UnitId", default: -1, null: false
    t.integer  "User252_Id",     default: -1, null: false
    t.integer  "User252_UnitId", default: -1, null: false
    t.integer  "User253_Id",     default: -1, null: false
    t.integer  "User253_UnitId", default: -1, null: false
    t.integer  "User254_Id",     default: -1, null: false
    t.integer  "User254_UnitId", default: -1, null: false
    t.integer  "User255_Id",     default: -1, null: false
    t.integer  "User255_UnitId", default: -1, null: false
    t.integer  "User256_Id",     default: -1, null: false
    t.integer  "User256_UnitId", default: -1, null: false
    t.integer  "User257_Id",     default: -1, null: false
    t.integer  "User257_UnitId", default: -1, null: false
    t.integer  "User258_Id",     default: -1, null: false
    t.integer  "User258_UnitId", default: -1, null: false
    t.integer  "User259_Id",     default: -1, null: false
    t.integer  "User259_UnitId", default: -1, null: false
    t.integer  "User260_Id",     default: -1, null: false
    t.integer  "User260_UnitId", default: -1, null: false
    t.integer  "User261_Id",     default: -1, null: false
    t.integer  "User261_UnitId", default: -1, null: false
    t.integer  "User262_Id",     default: -1, null: false
    t.integer  "User262_UnitId", default: -1, null: false
    t.integer  "User263_Id",     default: -1, null: false
    t.integer  "User263_UnitId", default: -1, null: false
    t.integer  "User264_Id",     default: -1, null: false
    t.integer  "User264_UnitId", default: -1, null: false
    t.integer  "User265_Id",     default: -1, null: false
    t.integer  "User265_UnitId", default: -1, null: false
    t.integer  "User266_Id",     default: -1, null: false
    t.integer  "User266_UnitId", default: -1, null: false
    t.integer  "User267_Id",     default: -1, null: false
    t.integer  "User267_UnitId", default: -1, null: false
    t.integer  "User268_Id",     default: -1, null: false
    t.integer  "User268_UnitId", default: -1, null: false
    t.integer  "User269_Id",     default: -1, null: false
    t.integer  "User269_UnitId", default: -1, null: false
    t.integer  "User270_Id",     default: -1, null: false
    t.integer  "User270_UnitId", default: -1, null: false
    t.integer  "User271_Id",     default: -1, null: false
    t.integer  "User271_UnitId", default: -1, null: false
    t.integer  "User272_Id",     default: -1, null: false
    t.integer  "User272_UnitId", default: -1, null: false
    t.integer  "User273_Id",     default: -1, null: false
    t.integer  "User273_UnitId", default: -1, null: false
    t.integer  "User274_Id",     default: -1, null: false
    t.integer  "User274_UnitId", default: -1, null: false
    t.integer  "User275_Id",     default: -1, null: false
    t.integer  "User275_UnitId", default: -1, null: false
    t.integer  "User276_Id",     default: -1, null: false
    t.integer  "User276_UnitId", default: -1, null: false
    t.integer  "User277_Id",     default: -1, null: false
    t.integer  "User277_UnitId", default: -1, null: false
    t.integer  "User278_Id",     default: -1, null: false
    t.integer  "User278_UnitId", default: -1, null: false
    t.integer  "User279_Id",     default: -1, null: false
    t.integer  "User279_UnitId", default: -1, null: false
    t.integer  "User280_Id",     default: -1, null: false
    t.integer  "User280_UnitId", default: -1, null: false
    t.integer  "User281_Id",     default: -1, null: false
    t.integer  "User281_UnitId", default: -1, null: false
    t.integer  "User282_Id",     default: -1, null: false
    t.integer  "User282_UnitId", default: -1, null: false
    t.integer  "User283_Id",     default: -1, null: false
    t.integer  "User283_UnitId", default: -1, null: false
    t.integer  "User284_Id",     default: -1, null: false
    t.integer  "User284_UnitId", default: -1, null: false
    t.integer  "User285_Id",     default: -1, null: false
    t.integer  "User285_UnitId", default: -1, null: false
    t.integer  "User286_Id",     default: -1, null: false
    t.integer  "User286_UnitId", default: -1, null: false
    t.integer  "User287_Id",     default: -1, null: false
    t.integer  "User287_UnitId", default: -1, null: false
    t.integer  "User288_Id",     default: -1, null: false
    t.integer  "User288_UnitId", default: -1, null: false
    t.integer  "User289_Id",     default: -1, null: false
    t.integer  "User289_UnitId", default: -1, null: false
    t.integer  "User290_Id",     default: -1, null: false
    t.integer  "User290_UnitId", default: -1, null: false
    t.integer  "User291_Id",     default: -1, null: false
    t.integer  "User291_UnitId", default: -1, null: false
    t.integer  "User292_Id",     default: -1, null: false
    t.integer  "User292_UnitId", default: -1, null: false
    t.integer  "User293_Id",     default: -1, null: false
    t.integer  "User293_UnitId", default: -1, null: false
    t.integer  "User294_Id",     default: -1, null: false
    t.integer  "User294_UnitId", default: -1, null: false
    t.integer  "User295_Id",     default: -1, null: false
    t.integer  "User295_UnitId", default: -1, null: false
    t.integer  "User296_Id",     default: -1, null: false
    t.integer  "User296_UnitId", default: -1, null: false
    t.integer  "User297_Id",     default: -1, null: false
    t.integer  "User297_UnitId", default: -1, null: false
    t.integer  "User298_Id",     default: -1, null: false
    t.integer  "User298_UnitId", default: -1, null: false
    t.integer  "User299_Id",     default: -1, null: false
    t.integer  "User299_UnitId", default: -1, null: false
    t.integer  "User300_Id",     default: -1, null: false
    t.integer  "User300_UnitId", default: -1, null: false
    t.integer  "User301_Id",     default: -1, null: false
    t.integer  "User301_UnitId", default: -1, null: false
    t.integer  "User302_Id",     default: -1, null: false
    t.integer  "User302_UnitId", default: -1, null: false
    t.integer  "User303_Id",     default: -1, null: false
    t.integer  "User303_UnitId", default: -1, null: false
    t.integer  "User304_Id",     default: -1, null: false
    t.integer  "User304_UnitId", default: -1, null: false
    t.integer  "User305_Id",     default: -1, null: false
    t.integer  "User305_UnitId", default: -1, null: false
    t.integer  "User306_Id",     default: -1, null: false
    t.integer  "User306_UnitId", default: -1, null: false
    t.integer  "User307_Id",     default: -1, null: false
    t.integer  "User307_UnitId", default: -1, null: false
    t.integer  "User308_Id",     default: -1, null: false
    t.integer  "User308_UnitId", default: -1, null: false
    t.integer  "User309_Id",     default: -1, null: false
    t.integer  "User309_UnitId", default: -1, null: false
    t.integer  "User310_Id",     default: -1, null: false
    t.integer  "User310_UnitId", default: -1, null: false
    t.integer  "User311_Id",     default: -1, null: false
    t.integer  "User311_UnitId", default: -1, null: false
    t.integer  "User312_Id",     default: -1, null: false
    t.integer  "User312_UnitId", default: -1, null: false
    t.integer  "User313_Id",     default: -1, null: false
    t.integer  "User313_UnitId", default: -1, null: false
    t.integer  "User314_Id",     default: -1, null: false
    t.integer  "User314_UnitId", default: -1, null: false
    t.integer  "User315_Id",     default: -1, null: false
    t.integer  "User315_UnitId", default: -1, null: false
    t.integer  "User316_Id",     default: -1, null: false
    t.integer  "User316_UnitId", default: -1, null: false
    t.integer  "User317_Id",     default: -1, null: false
    t.integer  "User317_UnitId", default: -1, null: false
    t.integer  "User318_Id",     default: -1, null: false
    t.integer  "User318_UnitId", default: -1, null: false
    t.integer  "User319_Id",     default: -1, null: false
    t.integer  "User319_UnitId", default: -1, null: false
    t.integer  "User320_Id",     default: -1, null: false
    t.integer  "User320_UnitId", default: -1, null: false
    t.integer  "User321_Id",     default: -1, null: false
    t.integer  "User321_UnitId", default: -1, null: false
    t.integer  "User322_Id",     default: -1, null: false
    t.integer  "User322_UnitId", default: -1, null: false
    t.integer  "User323_Id",     default: -1, null: false
    t.integer  "User323_UnitId", default: -1, null: false
    t.integer  "User324_Id",     default: -1, null: false
    t.integer  "User324_UnitId", default: -1, null: false
    t.integer  "User325_Id",     default: -1, null: false
    t.integer  "User325_UnitId", default: -1, null: false
    t.integer  "User326_Id",     default: -1, null: false
    t.integer  "User326_UnitId", default: -1, null: false
    t.integer  "User327_Id",     default: -1, null: false
    t.integer  "User327_UnitId", default: -1, null: false
    t.integer  "User328_Id",     default: -1, null: false
    t.integer  "User328_UnitId", default: -1, null: false
    t.integer  "User329_Id",     default: -1, null: false
    t.integer  "User329_UnitId", default: -1, null: false
    t.integer  "User330_Id",     default: -1, null: false
    t.integer  "User330_UnitId", default: -1, null: false
    t.integer  "User331_Id",     default: -1, null: false
    t.integer  "User331_UnitId", default: -1, null: false
    t.integer  "User332_Id",     default: -1, null: false
    t.integer  "User332_UnitId", default: -1, null: false
    t.integer  "User333_Id",     default: -1, null: false
    t.integer  "User333_UnitId", default: -1, null: false
    t.integer  "User334_Id",     default: -1, null: false
    t.integer  "User334_UnitId", default: -1, null: false
    t.integer  "User335_Id",     default: -1, null: false
    t.integer  "User335_UnitId", default: -1, null: false
    t.integer  "User336_Id",     default: -1, null: false
    t.integer  "User336_UnitId", default: -1, null: false
    t.integer  "User337_Id",     default: -1, null: false
    t.integer  "User337_UnitId", default: -1, null: false
    t.integer  "User338_Id",     default: -1, null: false
    t.integer  "User338_UnitId", default: -1, null: false
    t.integer  "User339_Id",     default: -1, null: false
    t.integer  "User339_UnitId", default: -1, null: false
    t.integer  "User340_Id",     default: -1, null: false
    t.integer  "User340_UnitId", default: -1, null: false
    t.integer  "User341_Id",     default: -1, null: false
    t.integer  "User341_UnitId", default: -1, null: false
    t.integer  "User342_Id",     default: -1, null: false
    t.integer  "User342_UnitId", default: -1, null: false
    t.integer  "User343_Id",     default: -1, null: false
    t.integer  "User343_UnitId", default: -1, null: false
    t.integer  "User344_Id",     default: -1, null: false
    t.integer  "User344_UnitId", default: -1, null: false
    t.integer  "User345_Id",     default: -1, null: false
    t.integer  "User345_UnitId", default: -1, null: false
    t.integer  "User346_Id",     default: -1, null: false
    t.integer  "User346_UnitId", default: -1, null: false
    t.integer  "User347_Id",     default: -1, null: false
    t.integer  "User347_UnitId", default: -1, null: false
    t.integer  "User348_Id",     default: -1, null: false
    t.integer  "User348_UnitId", default: -1, null: false
    t.integer  "User349_Id",     default: -1, null: false
    t.integer  "User349_UnitId", default: -1, null: false
    t.integer  "User350_Id",     default: -1, null: false
    t.integer  "User350_UnitId", default: -1, null: false
  end

  create_table "ClinicsAux2", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",             default: -1, null: false
    t.integer  "UId",            default: -1, null: false
    t.integer  "SId",            default: -1, null: false
    t.integer  "CompanyId",      default: -1, null: false
    t.integer  "ClinicId",       default: -1, null: false
    t.datetime "TS"
    t.integer  "User351_Id",     default: -1, null: false
    t.integer  "User351_UnitId", default: -1, null: false
    t.integer  "User352_Id",     default: -1, null: false
    t.integer  "User352_UnitId", default: -1, null: false
    t.integer  "User353_Id",     default: -1, null: false
    t.integer  "User353_UnitId", default: -1, null: false
    t.integer  "User354_Id",     default: -1, null: false
    t.integer  "User354_UnitId", default: -1, null: false
    t.integer  "User355_Id",     default: -1, null: false
    t.integer  "User355_UnitId", default: -1, null: false
    t.integer  "User356_Id",     default: -1, null: false
    t.integer  "User356_UnitId", default: -1, null: false
    t.integer  "User357_Id",     default: -1, null: false
    t.integer  "User357_UnitId", default: -1, null: false
    t.integer  "User358_Id",     default: -1, null: false
    t.integer  "User358_UnitId", default: -1, null: false
    t.integer  "User359_Id",     default: -1, null: false
    t.integer  "User359_UnitId", default: -1, null: false
    t.integer  "User360_Id",     default: -1, null: false
    t.integer  "User360_UnitId", default: -1, null: false
    t.integer  "User361_Id",     default: -1, null: false
    t.integer  "User361_UnitId", default: -1, null: false
    t.integer  "User362_Id",     default: -1, null: false
    t.integer  "User362_UnitId", default: -1, null: false
    t.integer  "User363_Id",     default: -1, null: false
    t.integer  "User363_UnitId", default: -1, null: false
    t.integer  "User364_Id",     default: -1, null: false
    t.integer  "User364_UnitId", default: -1, null: false
    t.integer  "User365_Id",     default: -1, null: false
    t.integer  "User365_UnitId", default: -1, null: false
    t.integer  "User366_Id",     default: -1, null: false
    t.integer  "User366_UnitId", default: -1, null: false
    t.integer  "User367_Id",     default: -1, null: false
    t.integer  "User367_UnitId", default: -1, null: false
    t.integer  "User368_Id",     default: -1, null: false
    t.integer  "User368_UnitId", default: -1, null: false
    t.integer  "User369_Id",     default: -1, null: false
    t.integer  "User369_UnitId", default: -1, null: false
    t.integer  "User370_Id",     default: -1, null: false
    t.integer  "User370_UnitId", default: -1, null: false
    t.integer  "User371_Id",     default: -1, null: false
    t.integer  "User371_UnitId", default: -1, null: false
    t.integer  "User372_Id",     default: -1, null: false
    t.integer  "User372_UnitId", default: -1, null: false
    t.integer  "User373_Id",     default: -1, null: false
    t.integer  "User373_UnitId", default: -1, null: false
    t.integer  "User374_Id",     default: -1, null: false
    t.integer  "User374_UnitId", default: -1, null: false
    t.integer  "User375_Id",     default: -1, null: false
    t.integer  "User375_UnitId", default: -1, null: false
    t.integer  "User376_Id",     default: -1, null: false
    t.integer  "User376_UnitId", default: -1, null: false
    t.integer  "User377_Id",     default: -1, null: false
    t.integer  "User377_UnitId", default: -1, null: false
    t.integer  "User378_Id",     default: -1, null: false
    t.integer  "User378_UnitId", default: -1, null: false
    t.integer  "User379_Id",     default: -1, null: false
    t.integer  "User379_UnitId", default: -1, null: false
    t.integer  "User380_Id",     default: -1, null: false
    t.integer  "User380_UnitId", default: -1, null: false
    t.integer  "User381_Id",     default: -1, null: false
    t.integer  "User381_UnitId", default: -1, null: false
    t.integer  "User382_Id",     default: -1, null: false
    t.integer  "User382_UnitId", default: -1, null: false
    t.integer  "User383_Id",     default: -1, null: false
    t.integer  "User383_UnitId", default: -1, null: false
    t.integer  "User384_Id",     default: -1, null: false
    t.integer  "User384_UnitId", default: -1, null: false
    t.integer  "User385_Id",     default: -1, null: false
    t.integer  "User385_UnitId", default: -1, null: false
    t.integer  "User386_Id",     default: -1, null: false
    t.integer  "User386_UnitId", default: -1, null: false
    t.integer  "User387_Id",     default: -1, null: false
    t.integer  "User387_UnitId", default: -1, null: false
    t.integer  "User388_Id",     default: -1, null: false
    t.integer  "User388_UnitId", default: -1, null: false
    t.integer  "User389_Id",     default: -1, null: false
    t.integer  "User389_UnitId", default: -1, null: false
    t.integer  "User390_Id",     default: -1, null: false
    t.integer  "User390_UnitId", default: -1, null: false
    t.integer  "User391_Id",     default: -1, null: false
    t.integer  "User391_UnitId", default: -1, null: false
    t.integer  "User392_Id",     default: -1, null: false
    t.integer  "User392_UnitId", default: -1, null: false
    t.integer  "User393_Id",     default: -1, null: false
    t.integer  "User393_UnitId", default: -1, null: false
    t.integer  "User394_Id",     default: -1, null: false
    t.integer  "User394_UnitId", default: -1, null: false
    t.integer  "User395_Id",     default: -1, null: false
    t.integer  "User395_UnitId", default: -1, null: false
    t.integer  "User396_Id",     default: -1, null: false
    t.integer  "User396_UnitId", default: -1, null: false
    t.integer  "User397_Id",     default: -1, null: false
    t.integer  "User397_UnitId", default: -1, null: false
    t.integer  "User398_Id",     default: -1, null: false
    t.integer  "User398_UnitId", default: -1, null: false
    t.integer  "User399_Id",     default: -1, null: false
    t.integer  "User399_UnitId", default: -1, null: false
    t.integer  "User400_Id",     default: -1, null: false
    t.integer  "User400_UnitId", default: -1, null: false
    t.integer  "User401_Id",     default: -1, null: false
    t.integer  "User401_UnitId", default: -1, null: false
    t.integer  "User402_Id",     default: -1, null: false
    t.integer  "User402_UnitId", default: -1, null: false
    t.integer  "User403_Id",     default: -1, null: false
    t.integer  "User403_UnitId", default: -1, null: false
    t.integer  "User404_Id",     default: -1, null: false
    t.integer  "User404_UnitId", default: -1, null: false
    t.integer  "User405_Id",     default: -1, null: false
    t.integer  "User405_UnitId", default: -1, null: false
    t.integer  "User406_Id",     default: -1, null: false
    t.integer  "User406_UnitId", default: -1, null: false
    t.integer  "User407_Id",     default: -1, null: false
    t.integer  "User407_UnitId", default: -1, null: false
    t.integer  "User408_Id",     default: -1, null: false
    t.integer  "User408_UnitId", default: -1, null: false
    t.integer  "User409_Id",     default: -1, null: false
    t.integer  "User409_UnitId", default: -1, null: false
    t.integer  "User410_Id",     default: -1, null: false
    t.integer  "User410_UnitId", default: -1, null: false
    t.integer  "User411_Id",     default: -1, null: false
    t.integer  "User411_UnitId", default: -1, null: false
    t.integer  "User412_Id",     default: -1, null: false
    t.integer  "User412_UnitId", default: -1, null: false
    t.integer  "User413_Id",     default: -1, null: false
    t.integer  "User413_UnitId", default: -1, null: false
    t.integer  "User414_Id",     default: -1, null: false
    t.integer  "User414_UnitId", default: -1, null: false
    t.integer  "User415_Id",     default: -1, null: false
    t.integer  "User415_UnitId", default: -1, null: false
    t.integer  "User416_Id",     default: -1, null: false
    t.integer  "User416_UnitId", default: -1, null: false
    t.integer  "User417_Id",     default: -1, null: false
    t.integer  "User417_UnitId", default: -1, null: false
    t.integer  "User418_Id",     default: -1, null: false
    t.integer  "User418_UnitId", default: -1, null: false
    t.integer  "User419_Id",     default: -1, null: false
    t.integer  "User419_UnitId", default: -1, null: false
    t.integer  "User420_Id",     default: -1, null: false
    t.integer  "User420_UnitId", default: -1, null: false
    t.integer  "User421_Id",     default: -1, null: false
    t.integer  "User421_UnitId", default: -1, null: false
    t.integer  "User422_Id",     default: -1, null: false
    t.integer  "User422_UnitId", default: -1, null: false
    t.integer  "User423_Id",     default: -1, null: false
    t.integer  "User423_UnitId", default: -1, null: false
    t.integer  "User424_Id",     default: -1, null: false
    t.integer  "User424_UnitId", default: -1, null: false
    t.integer  "User425_Id",     default: -1, null: false
    t.integer  "User425_UnitId", default: -1, null: false
    t.integer  "User426_Id",     default: -1, null: false
    t.integer  "User426_UnitId", default: -1, null: false
    t.integer  "User427_Id",     default: -1, null: false
    t.integer  "User427_UnitId", default: -1, null: false
    t.integer  "User428_Id",     default: -1, null: false
    t.integer  "User428_UnitId", default: -1, null: false
    t.integer  "User429_Id",     default: -1, null: false
    t.integer  "User429_UnitId", default: -1, null: false
    t.integer  "User430_Id",     default: -1, null: false
    t.integer  "User430_UnitId", default: -1, null: false
    t.integer  "User431_Id",     default: -1, null: false
    t.integer  "User431_UnitId", default: -1, null: false
    t.integer  "User432_Id",     default: -1, null: false
    t.integer  "User432_UnitId", default: -1, null: false
    t.integer  "User433_Id",     default: -1, null: false
    t.integer  "User433_UnitId", default: -1, null: false
    t.integer  "User434_Id",     default: -1, null: false
    t.integer  "User434_UnitId", default: -1, null: false
    t.integer  "User435_Id",     default: -1, null: false
    t.integer  "User435_UnitId", default: -1, null: false
    t.integer  "User436_Id",     default: -1, null: false
    t.integer  "User436_UnitId", default: -1, null: false
    t.integer  "User437_Id",     default: -1, null: false
    t.integer  "User437_UnitId", default: -1, null: false
    t.integer  "User438_Id",     default: -1, null: false
    t.integer  "User438_UnitId", default: -1, null: false
    t.integer  "User439_Id",     default: -1, null: false
    t.integer  "User439_UnitId", default: -1, null: false
    t.integer  "User440_Id",     default: -1, null: false
    t.integer  "User440_UnitId", default: -1, null: false
    t.integer  "User441_Id",     default: -1, null: false
    t.integer  "User441_UnitId", default: -1, null: false
    t.integer  "User442_Id",     default: -1, null: false
    t.integer  "User442_UnitId", default: -1, null: false
    t.integer  "User443_Id",     default: -1, null: false
    t.integer  "User443_UnitId", default: -1, null: false
    t.integer  "User444_Id",     default: -1, null: false
    t.integer  "User444_UnitId", default: -1, null: false
    t.integer  "User445_Id",     default: -1, null: false
    t.integer  "User445_UnitId", default: -1, null: false
    t.integer  "User446_Id",     default: -1, null: false
    t.integer  "User446_UnitId", default: -1, null: false
    t.integer  "User447_Id",     default: -1, null: false
    t.integer  "User447_UnitId", default: -1, null: false
    t.integer  "User448_Id",     default: -1, null: false
    t.integer  "User448_UnitId", default: -1, null: false
    t.integer  "User449_Id",     default: -1, null: false
    t.integer  "User449_UnitId", default: -1, null: false
    t.integer  "User450_Id",     default: -1, null: false
    t.integer  "User450_UnitId", default: -1, null: false
    t.integer  "User451_Id",     default: -1, null: false
    t.integer  "User451_UnitId", default: -1, null: false
    t.integer  "User452_Id",     default: -1, null: false
    t.integer  "User452_UnitId", default: -1, null: false
    t.integer  "User453_Id",     default: -1, null: false
    t.integer  "User453_UnitId", default: -1, null: false
    t.integer  "User454_Id",     default: -1, null: false
    t.integer  "User454_UnitId", default: -1, null: false
    t.integer  "User455_Id",     default: -1, null: false
    t.integer  "User455_UnitId", default: -1, null: false
    t.integer  "User456_Id",     default: -1, null: false
    t.integer  "User456_UnitId", default: -1, null: false
    t.integer  "User457_Id",     default: -1, null: false
    t.integer  "User457_UnitId", default: -1, null: false
    t.integer  "User458_Id",     default: -1, null: false
    t.integer  "User458_UnitId", default: -1, null: false
    t.integer  "User459_Id",     default: -1, null: false
    t.integer  "User459_UnitId", default: -1, null: false
    t.integer  "User460_Id",     default: -1, null: false
    t.integer  "User460_UnitId", default: -1, null: false
    t.integer  "User461_Id",     default: -1, null: false
    t.integer  "User461_UnitId", default: -1, null: false
    t.integer  "User462_Id",     default: -1, null: false
    t.integer  "User462_UnitId", default: -1, null: false
    t.integer  "User463_Id",     default: -1, null: false
    t.integer  "User463_UnitId", default: -1, null: false
    t.integer  "User464_Id",     default: -1, null: false
    t.integer  "User464_UnitId", default: -1, null: false
    t.integer  "User465_Id",     default: -1, null: false
    t.integer  "User465_UnitId", default: -1, null: false
    t.integer  "User466_Id",     default: -1, null: false
    t.integer  "User466_UnitId", default: -1, null: false
    t.integer  "User467_Id",     default: -1, null: false
    t.integer  "User467_UnitId", default: -1, null: false
    t.integer  "User468_Id",     default: -1, null: false
    t.integer  "User468_UnitId", default: -1, null: false
    t.integer  "User469_Id",     default: -1, null: false
    t.integer  "User469_UnitId", default: -1, null: false
    t.integer  "User470_Id",     default: -1, null: false
    t.integer  "User470_UnitId", default: -1, null: false
    t.integer  "User471_Id",     default: -1, null: false
    t.integer  "User471_UnitId", default: -1, null: false
    t.integer  "User472_Id",     default: -1, null: false
    t.integer  "User472_UnitId", default: -1, null: false
    t.integer  "User473_Id",     default: -1, null: false
    t.integer  "User473_UnitId", default: -1, null: false
    t.integer  "User474_Id",     default: -1, null: false
    t.integer  "User474_UnitId", default: -1, null: false
    t.integer  "User475_Id",     default: -1, null: false
    t.integer  "User475_UnitId", default: -1, null: false
    t.integer  "User476_Id",     default: -1, null: false
    t.integer  "User476_UnitId", default: -1, null: false
    t.integer  "User477_Id",     default: -1, null: false
    t.integer  "User477_UnitId", default: -1, null: false
    t.integer  "User478_Id",     default: -1, null: false
    t.integer  "User478_UnitId", default: -1, null: false
    t.integer  "User479_Id",     default: -1, null: false
    t.integer  "User479_UnitId", default: -1, null: false
    t.integer  "User480_Id",     default: -1, null: false
    t.integer  "User480_UnitId", default: -1, null: false
    t.integer  "User481_Id",     default: -1, null: false
    t.integer  "User481_UnitId", default: -1, null: false
    t.integer  "User482_Id",     default: -1, null: false
    t.integer  "User482_UnitId", default: -1, null: false
    t.integer  "User483_Id",     default: -1, null: false
    t.integer  "User483_UnitId", default: -1, null: false
    t.integer  "User484_Id",     default: -1, null: false
    t.integer  "User484_UnitId", default: -1, null: false
    t.integer  "User485_Id",     default: -1, null: false
    t.integer  "User485_UnitId", default: -1, null: false
    t.integer  "User486_Id",     default: -1, null: false
    t.integer  "User486_UnitId", default: -1, null: false
    t.integer  "User487_Id",     default: -1, null: false
    t.integer  "User487_UnitId", default: -1, null: false
    t.integer  "User488_Id",     default: -1, null: false
    t.integer  "User488_UnitId", default: -1, null: false
    t.integer  "User489_Id",     default: -1, null: false
    t.integer  "User489_UnitId", default: -1, null: false
    t.integer  "User490_Id",     default: -1, null: false
    t.integer  "User490_UnitId", default: -1, null: false
    t.integer  "User491_Id",     default: -1, null: false
    t.integer  "User491_UnitId", default: -1, null: false
    t.integer  "User492_Id",     default: -1, null: false
    t.integer  "User492_UnitId", default: -1, null: false
    t.integer  "User493_Id",     default: -1, null: false
    t.integer  "User493_UnitId", default: -1, null: false
    t.integer  "User494_Id",     default: -1, null: false
    t.integer  "User494_UnitId", default: -1, null: false
    t.integer  "User495_Id",     default: -1, null: false
    t.integer  "User495_UnitId", default: -1, null: false
    t.integer  "User496_Id",     default: -1, null: false
    t.integer  "User496_UnitId", default: -1, null: false
    t.integer  "User497_Id",     default: -1, null: false
    t.integer  "User497_UnitId", default: -1, null: false
    t.integer  "User498_Id",     default: -1, null: false
    t.integer  "User498_UnitId", default: -1, null: false
    t.integer  "User499_Id",     default: -1, null: false
    t.integer  "User499_UnitId", default: -1, null: false
    t.integer  "User500_Id",     default: -1, null: false
    t.integer  "User500_UnitId", default: -1, null: false
    t.integer  "User501_Id",     default: -1, null: false
    t.integer  "User501_UnitId", default: -1, null: false
    t.integer  "User502_Id",     default: -1, null: false
    t.integer  "User502_UnitId", default: -1, null: false
    t.integer  "User503_Id",     default: -1, null: false
    t.integer  "User503_UnitId", default: -1, null: false
    t.integer  "User504_Id",     default: -1, null: false
    t.integer  "User504_UnitId", default: -1, null: false
    t.integer  "User505_Id",     default: -1, null: false
    t.integer  "User505_UnitId", default: -1, null: false
    t.integer  "User506_Id",     default: -1, null: false
    t.integer  "User506_UnitId", default: -1, null: false
    t.integer  "User507_Id",     default: -1, null: false
    t.integer  "User507_UnitId", default: -1, null: false
    t.integer  "User508_Id",     default: -1, null: false
    t.integer  "User508_UnitId", default: -1, null: false
    t.integer  "User509_Id",     default: -1, null: false
    t.integer  "User509_UnitId", default: -1, null: false
    t.integer  "User510_Id",     default: -1, null: false
    t.integer  "User510_UnitId", default: -1, null: false
    t.integer  "User511_Id",     default: -1, null: false
    t.integer  "User511_UnitId", default: -1, null: false
    t.integer  "User512_Id",     default: -1, null: false
    t.integer  "User512_UnitId", default: -1, null: false
    t.integer  "User513_Id",     default: -1, null: false
    t.integer  "User513_UnitId", default: -1, null: false
    t.integer  "User514_Id",     default: -1, null: false
    t.integer  "User514_UnitId", default: -1, null: false
    t.integer  "User515_Id",     default: -1, null: false
    t.integer  "User515_UnitId", default: -1, null: false
    t.integer  "User516_Id",     default: -1, null: false
    t.integer  "User516_UnitId", default: -1, null: false
    t.integer  "User517_Id",     default: -1, null: false
    t.integer  "User517_UnitId", default: -1, null: false
    t.integer  "User518_Id",     default: -1, null: false
    t.integer  "User518_UnitId", default: -1, null: false
    t.integer  "User519_Id",     default: -1, null: false
    t.integer  "User519_UnitId", default: -1, null: false
    t.integer  "User520_Id",     default: -1, null: false
    t.integer  "User520_UnitId", default: -1, null: false
    t.integer  "User521_Id",     default: -1, null: false
    t.integer  "User521_UnitId", default: -1, null: false
    t.integer  "User522_Id",     default: -1, null: false
    t.integer  "User522_UnitId", default: -1, null: false
    t.integer  "User523_Id",     default: -1, null: false
    t.integer  "User523_UnitId", default: -1, null: false
    t.integer  "User524_Id",     default: -1, null: false
    t.integer  "User524_UnitId", default: -1, null: false
    t.integer  "User525_Id",     default: -1, null: false
    t.integer  "User525_UnitId", default: -1, null: false
    t.integer  "User526_Id",     default: -1, null: false
    t.integer  "User526_UnitId", default: -1, null: false
    t.integer  "User527_Id",     default: -1, null: false
    t.integer  "User527_UnitId", default: -1, null: false
    t.integer  "User528_Id",     default: -1, null: false
    t.integer  "User528_UnitId", default: -1, null: false
    t.integer  "User529_Id",     default: -1, null: false
    t.integer  "User529_UnitId", default: -1, null: false
    t.integer  "User530_Id",     default: -1, null: false
    t.integer  "User530_UnitId", default: -1, null: false
    t.integer  "User531_Id",     default: -1, null: false
    t.integer  "User531_UnitId", default: -1, null: false
    t.integer  "User532_Id",     default: -1, null: false
    t.integer  "User532_UnitId", default: -1, null: false
    t.integer  "User533_Id",     default: -1, null: false
    t.integer  "User533_UnitId", default: -1, null: false
    t.integer  "User534_Id",     default: -1, null: false
    t.integer  "User534_UnitId", default: -1, null: false
    t.integer  "User535_Id",     default: -1, null: false
    t.integer  "User535_UnitId", default: -1, null: false
    t.integer  "User536_Id",     default: -1, null: false
    t.integer  "User536_UnitId", default: -1, null: false
    t.integer  "User537_Id",     default: -1, null: false
    t.integer  "User537_UnitId", default: -1, null: false
    t.integer  "User538_Id",     default: -1, null: false
    t.integer  "User538_UnitId", default: -1, null: false
    t.integer  "User539_Id",     default: -1, null: false
    t.integer  "User539_UnitId", default: -1, null: false
    t.integer  "User540_Id",     default: -1, null: false
    t.integer  "User540_UnitId", default: -1, null: false
  end

  create_table "ClinicsAux3", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",             default: -1, null: false
    t.integer  "UId",            default: -1, null: false
    t.integer  "SId",            default: -1, null: false
    t.integer  "CompanyId",      default: -1, null: false
    t.integer  "ClinicId",       default: -1, null: false
    t.datetime "TS"
    t.integer  "User541_Id",     default: -1, null: false
    t.integer  "User541_UnitId", default: -1, null: false
    t.integer  "User542_Id",     default: -1, null: false
    t.integer  "User542_UnitId", default: -1, null: false
    t.integer  "User543_Id",     default: -1, null: false
    t.integer  "User543_UnitId", default: -1, null: false
    t.integer  "User544_Id",     default: -1, null: false
    t.integer  "User544_UnitId", default: -1, null: false
    t.integer  "User545_Id",     default: -1, null: false
    t.integer  "User545_UnitId", default: -1, null: false
    t.integer  "User546_Id",     default: -1, null: false
    t.integer  "User546_UnitId", default: -1, null: false
    t.integer  "User547_Id",     default: -1, null: false
    t.integer  "User547_UnitId", default: -1, null: false
    t.integer  "User548_Id",     default: -1, null: false
    t.integer  "User548_UnitId", default: -1, null: false
    t.integer  "User549_Id",     default: -1, null: false
    t.integer  "User549_UnitId", default: -1, null: false
    t.integer  "User550_Id",     default: -1, null: false
    t.integer  "User550_UnitId", default: -1, null: false
    t.integer  "User551_Id",     default: -1, null: false
    t.integer  "User551_UnitId", default: -1, null: false
    t.integer  "User552_Id",     default: -1, null: false
    t.integer  "User552_UnitId", default: -1, null: false
    t.integer  "User553_Id",     default: -1, null: false
    t.integer  "User553_UnitId", default: -1, null: false
    t.integer  "User554_Id",     default: -1, null: false
    t.integer  "User554_UnitId", default: -1, null: false
    t.integer  "User555_Id",     default: -1, null: false
    t.integer  "User555_UnitId", default: -1, null: false
    t.integer  "User556_Id",     default: -1, null: false
    t.integer  "User556_UnitId", default: -1, null: false
    t.integer  "User557_Id",     default: -1, null: false
    t.integer  "User557_UnitId", default: -1, null: false
    t.integer  "User558_Id",     default: -1, null: false
    t.integer  "User558_UnitId", default: -1, null: false
    t.integer  "User559_Id",     default: -1, null: false
    t.integer  "User559_UnitId", default: -1, null: false
    t.integer  "User560_Id",     default: -1, null: false
    t.integer  "User560_UnitId", default: -1, null: false
    t.integer  "User561_Id",     default: -1, null: false
    t.integer  "User561_UnitId", default: -1, null: false
    t.integer  "User562_Id",     default: -1, null: false
    t.integer  "User562_UnitId", default: -1, null: false
    t.integer  "User563_Id",     default: -1, null: false
    t.integer  "User563_UnitId", default: -1, null: false
    t.integer  "User564_Id",     default: -1, null: false
    t.integer  "User564_UnitId", default: -1, null: false
    t.integer  "User565_Id",     default: -1, null: false
    t.integer  "User565_UnitId", default: -1, null: false
    t.integer  "User566_Id",     default: -1, null: false
    t.integer  "User566_UnitId", default: -1, null: false
    t.integer  "User567_Id",     default: -1, null: false
    t.integer  "User567_UnitId", default: -1, null: false
    t.integer  "User568_Id",     default: -1, null: false
    t.integer  "User568_UnitId", default: -1, null: false
    t.integer  "User569_Id",     default: -1, null: false
    t.integer  "User569_UnitId", default: -1, null: false
    t.integer  "User570_Id",     default: -1, null: false
    t.integer  "User570_UnitId", default: -1, null: false
    t.integer  "User571_Id",     default: -1, null: false
    t.integer  "User571_UnitId", default: -1, null: false
    t.integer  "User572_Id",     default: -1, null: false
    t.integer  "User572_UnitId", default: -1, null: false
    t.integer  "User573_Id",     default: -1, null: false
    t.integer  "User573_UnitId", default: -1, null: false
    t.integer  "User574_Id",     default: -1, null: false
    t.integer  "User574_UnitId", default: -1, null: false
    t.integer  "User575_Id",     default: -1, null: false
    t.integer  "User575_UnitId", default: -1, null: false
    t.integer  "User576_Id",     default: -1, null: false
    t.integer  "User576_UnitId", default: -1, null: false
    t.integer  "User577_Id",     default: -1, null: false
    t.integer  "User577_UnitId", default: -1, null: false
    t.integer  "User578_Id",     default: -1, null: false
    t.integer  "User578_UnitId", default: -1, null: false
    t.integer  "User579_Id",     default: -1, null: false
    t.integer  "User579_UnitId", default: -1, null: false
    t.integer  "User580_Id",     default: -1, null: false
    t.integer  "User580_UnitId", default: -1, null: false
    t.integer  "User581_Id",     default: -1, null: false
    t.integer  "User581_UnitId", default: -1, null: false
    t.integer  "User582_Id",     default: -1, null: false
    t.integer  "User582_UnitId", default: -1, null: false
    t.integer  "User583_Id",     default: -1, null: false
    t.integer  "User583_UnitId", default: -1, null: false
    t.integer  "User584_Id",     default: -1, null: false
    t.integer  "User584_UnitId", default: -1, null: false
    t.integer  "User585_Id",     default: -1, null: false
    t.integer  "User585_UnitId", default: -1, null: false
    t.integer  "User586_Id",     default: -1, null: false
    t.integer  "User586_UnitId", default: -1, null: false
    t.integer  "User587_Id",     default: -1, null: false
    t.integer  "User587_UnitId", default: -1, null: false
    t.integer  "User588_Id",     default: -1, null: false
    t.integer  "User588_UnitId", default: -1, null: false
    t.integer  "User589_Id",     default: -1, null: false
    t.integer  "User589_UnitId", default: -1, null: false
    t.integer  "User590_Id",     default: -1, null: false
    t.integer  "User590_UnitId", default: -1, null: false
    t.integer  "User591_Id",     default: -1, null: false
    t.integer  "User591_UnitId", default: -1, null: false
    t.integer  "User592_Id",     default: -1, null: false
    t.integer  "User592_UnitId", default: -1, null: false
    t.integer  "User593_Id",     default: -1, null: false
    t.integer  "User593_UnitId", default: -1, null: false
    t.integer  "User594_Id",     default: -1, null: false
    t.integer  "User594_UnitId", default: -1, null: false
    t.integer  "User595_Id",     default: -1, null: false
    t.integer  "User595_UnitId", default: -1, null: false
    t.integer  "User596_Id",     default: -1, null: false
    t.integer  "User596_UnitId", default: -1, null: false
    t.integer  "User597_Id",     default: -1, null: false
    t.integer  "User597_UnitId", default: -1, null: false
    t.integer  "User598_Id",     default: -1, null: false
    t.integer  "User598_UnitId", default: -1, null: false
    t.integer  "User599_Id",     default: -1, null: false
    t.integer  "User599_UnitId", default: -1, null: false
    t.integer  "User600_Id",     default: -1, null: false
    t.integer  "User600_UnitId", default: -1, null: false
    t.integer  "User601_Id",     default: -1, null: false
    t.integer  "User601_UnitId", default: -1, null: false
    t.integer  "User602_Id",     default: -1, null: false
    t.integer  "User602_UnitId", default: -1, null: false
    t.integer  "User603_Id",     default: -1, null: false
    t.integer  "User603_UnitId", default: -1, null: false
    t.integer  "User604_Id",     default: -1, null: false
    t.integer  "User604_UnitId", default: -1, null: false
    t.integer  "User605_Id",     default: -1, null: false
    t.integer  "User605_UnitId", default: -1, null: false
    t.integer  "User606_Id",     default: -1, null: false
    t.integer  "User606_UnitId", default: -1, null: false
    t.integer  "User607_Id",     default: -1, null: false
    t.integer  "User607_UnitId", default: -1, null: false
    t.integer  "User608_Id",     default: -1, null: false
    t.integer  "User608_UnitId", default: -1, null: false
    t.integer  "User609_Id",     default: -1, null: false
    t.integer  "User609_UnitId", default: -1, null: false
    t.integer  "User610_Id",     default: -1, null: false
    t.integer  "User610_UnitId", default: -1, null: false
    t.integer  "User611_Id",     default: -1, null: false
    t.integer  "User611_UnitId", default: -1, null: false
    t.integer  "User612_Id",     default: -1, null: false
    t.integer  "User612_UnitId", default: -1, null: false
    t.integer  "User613_Id",     default: -1, null: false
    t.integer  "User613_UnitId", default: -1, null: false
    t.integer  "User614_Id",     default: -1, null: false
    t.integer  "User614_UnitId", default: -1, null: false
    t.integer  "User615_Id",     default: -1, null: false
    t.integer  "User615_UnitId", default: -1, null: false
    t.integer  "User616_Id",     default: -1, null: false
    t.integer  "User616_UnitId", default: -1, null: false
    t.integer  "User617_Id",     default: -1, null: false
    t.integer  "User617_UnitId", default: -1, null: false
    t.integer  "User618_Id",     default: -1, null: false
    t.integer  "User618_UnitId", default: -1, null: false
    t.integer  "User619_Id",     default: -1, null: false
    t.integer  "User619_UnitId", default: -1, null: false
    t.integer  "User620_Id",     default: -1, null: false
    t.integer  "User620_UnitId", default: -1, null: false
    t.integer  "User621_Id",     default: -1, null: false
    t.integer  "User621_UnitId", default: -1, null: false
    t.integer  "User622_Id",     default: -1, null: false
    t.integer  "User622_UnitId", default: -1, null: false
    t.integer  "User623_Id",     default: -1, null: false
    t.integer  "User623_UnitId", default: -1, null: false
    t.integer  "User624_Id",     default: -1, null: false
    t.integer  "User624_UnitId", default: -1, null: false
    t.integer  "User625_Id",     default: -1, null: false
    t.integer  "User625_UnitId", default: -1, null: false
    t.integer  "User626_Id",     default: -1, null: false
    t.integer  "User626_UnitId", default: -1, null: false
    t.integer  "User627_Id",     default: -1, null: false
    t.integer  "User627_UnitId", default: -1, null: false
    t.integer  "User628_Id",     default: -1, null: false
    t.integer  "User628_UnitId", default: -1, null: false
    t.integer  "User629_Id",     default: -1, null: false
    t.integer  "User629_UnitId", default: -1, null: false
    t.integer  "User630_Id",     default: -1, null: false
    t.integer  "User630_UnitId", default: -1, null: false
    t.integer  "User631_Id",     default: -1, null: false
    t.integer  "User631_UnitId", default: -1, null: false
    t.integer  "User632_Id",     default: -1, null: false
    t.integer  "User632_UnitId", default: -1, null: false
    t.integer  "User633_Id",     default: -1, null: false
    t.integer  "User633_UnitId", default: -1, null: false
    t.integer  "User634_Id",     default: -1, null: false
    t.integer  "User634_UnitId", default: -1, null: false
    t.integer  "User635_Id",     default: -1, null: false
    t.integer  "User635_UnitId", default: -1, null: false
    t.integer  "User636_Id",     default: -1, null: false
    t.integer  "User636_UnitId", default: -1, null: false
    t.integer  "User637_Id",     default: -1, null: false
    t.integer  "User637_UnitId", default: -1, null: false
    t.integer  "User638_Id",     default: -1, null: false
    t.integer  "User638_UnitId", default: -1, null: false
    t.integer  "User639_Id",     default: -1, null: false
    t.integer  "User639_UnitId", default: -1, null: false
    t.integer  "User640_Id",     default: -1, null: false
    t.integer  "User640_UnitId", default: -1, null: false
    t.integer  "User641_Id",     default: -1, null: false
    t.integer  "User641_UnitId", default: -1, null: false
    t.integer  "User642_Id",     default: -1, null: false
    t.integer  "User642_UnitId", default: -1, null: false
    t.integer  "User643_Id",     default: -1, null: false
    t.integer  "User643_UnitId", default: -1, null: false
    t.integer  "User644_Id",     default: -1, null: false
    t.integer  "User644_UnitId", default: -1, null: false
    t.integer  "User645_Id",     default: -1, null: false
    t.integer  "User645_UnitId", default: -1, null: false
    t.integer  "User646_Id",     default: -1, null: false
    t.integer  "User646_UnitId", default: -1, null: false
    t.integer  "User647_Id",     default: -1, null: false
    t.integer  "User647_UnitId", default: -1, null: false
    t.integer  "User648_Id",     default: -1, null: false
    t.integer  "User648_UnitId", default: -1, null: false
    t.integer  "User649_Id",     default: -1, null: false
    t.integer  "User649_UnitId", default: -1, null: false
    t.integer  "User650_Id",     default: -1, null: false
    t.integer  "User650_UnitId", default: -1, null: false
    t.integer  "User651_Id",     default: -1, null: false
    t.integer  "User651_UnitId", default: -1, null: false
    t.integer  "User652_Id",     default: -1, null: false
    t.integer  "User652_UnitId", default: -1, null: false
    t.integer  "User653_Id",     default: -1, null: false
    t.integer  "User653_UnitId", default: -1, null: false
    t.integer  "User654_Id",     default: -1, null: false
    t.integer  "User654_UnitId", default: -1, null: false
    t.integer  "User655_Id",     default: -1, null: false
    t.integer  "User655_UnitId", default: -1, null: false
    t.integer  "User656_Id",     default: -1, null: false
    t.integer  "User656_UnitId", default: -1, null: false
    t.integer  "User657_Id",     default: -1, null: false
    t.integer  "User657_UnitId", default: -1, null: false
    t.integer  "User658_Id",     default: -1, null: false
    t.integer  "User658_UnitId", default: -1, null: false
    t.integer  "User659_Id",     default: -1, null: false
    t.integer  "User659_UnitId", default: -1, null: false
    t.integer  "User660_Id",     default: -1, null: false
    t.integer  "User660_UnitId", default: -1, null: false
    t.integer  "User661_Id",     default: -1, null: false
    t.integer  "User661_UnitId", default: -1, null: false
    t.integer  "User662_Id",     default: -1, null: false
    t.integer  "User662_UnitId", default: -1, null: false
    t.integer  "User663_Id",     default: -1, null: false
    t.integer  "User663_UnitId", default: -1, null: false
    t.integer  "User664_Id",     default: -1, null: false
    t.integer  "User664_UnitId", default: -1, null: false
    t.integer  "User665_Id",     default: -1, null: false
    t.integer  "User665_UnitId", default: -1, null: false
    t.integer  "User666_Id",     default: -1, null: false
    t.integer  "User666_UnitId", default: -1, null: false
    t.integer  "User667_Id",     default: -1, null: false
    t.integer  "User667_UnitId", default: -1, null: false
    t.integer  "User668_Id",     default: -1, null: false
    t.integer  "User668_UnitId", default: -1, null: false
    t.integer  "User669_Id",     default: -1, null: false
    t.integer  "User669_UnitId", default: -1, null: false
    t.integer  "User670_Id",     default: -1, null: false
    t.integer  "User670_UnitId", default: -1, null: false
    t.integer  "User671_Id",     default: -1, null: false
    t.integer  "User671_UnitId", default: -1, null: false
    t.integer  "User672_Id",     default: -1, null: false
    t.integer  "User672_UnitId", default: -1, null: false
    t.integer  "User673_Id",     default: -1, null: false
    t.integer  "User673_UnitId", default: -1, null: false
    t.integer  "User674_Id",     default: -1, null: false
    t.integer  "User674_UnitId", default: -1, null: false
    t.integer  "User675_Id",     default: -1, null: false
    t.integer  "User675_UnitId", default: -1, null: false
    t.integer  "User676_Id",     default: -1, null: false
    t.integer  "User676_UnitId", default: -1, null: false
    t.integer  "User677_Id",     default: -1, null: false
    t.integer  "User677_UnitId", default: -1, null: false
    t.integer  "User678_Id",     default: -1, null: false
    t.integer  "User678_UnitId", default: -1, null: false
    t.integer  "User679_Id",     default: -1, null: false
    t.integer  "User679_UnitId", default: -1, null: false
    t.integer  "User680_Id",     default: -1, null: false
    t.integer  "User680_UnitId", default: -1, null: false
    t.integer  "User681_Id",     default: -1, null: false
    t.integer  "User681_UnitId", default: -1, null: false
    t.integer  "User682_Id",     default: -1, null: false
    t.integer  "User682_UnitId", default: -1, null: false
    t.integer  "User683_Id",     default: -1, null: false
    t.integer  "User683_UnitId", default: -1, null: false
    t.integer  "User684_Id",     default: -1, null: false
    t.integer  "User684_UnitId", default: -1, null: false
    t.integer  "User685_Id",     default: -1, null: false
    t.integer  "User685_UnitId", default: -1, null: false
    t.integer  "User686_Id",     default: -1, null: false
    t.integer  "User686_UnitId", default: -1, null: false
    t.integer  "User687_Id",     default: -1, null: false
    t.integer  "User687_UnitId", default: -1, null: false
    t.integer  "User688_Id",     default: -1, null: false
    t.integer  "User688_UnitId", default: -1, null: false
    t.integer  "User689_Id",     default: -1, null: false
    t.integer  "User689_UnitId", default: -1, null: false
    t.integer  "User690_Id",     default: -1, null: false
    t.integer  "User690_UnitId", default: -1, null: false
    t.integer  "User691_Id",     default: -1, null: false
    t.integer  "User691_UnitId", default: -1, null: false
    t.integer  "User692_Id",     default: -1, null: false
    t.integer  "User692_UnitId", default: -1, null: false
    t.integer  "User693_Id",     default: -1, null: false
    t.integer  "User693_UnitId", default: -1, null: false
    t.integer  "User694_Id",     default: -1, null: false
    t.integer  "User694_UnitId", default: -1, null: false
    t.integer  "User695_Id",     default: -1, null: false
    t.integer  "User695_UnitId", default: -1, null: false
    t.integer  "User696_Id",     default: -1, null: false
    t.integer  "User696_UnitId", default: -1, null: false
    t.integer  "User697_Id",     default: -1, null: false
    t.integer  "User697_UnitId", default: -1, null: false
    t.integer  "User698_Id",     default: -1, null: false
    t.integer  "User698_UnitId", default: -1, null: false
    t.integer  "User699_Id",     default: -1, null: false
    t.integer  "User699_UnitId", default: -1, null: false
    t.integer  "User700_Id",     default: -1, null: false
    t.integer  "User700_UnitId", default: -1, null: false
    t.integer  "User701_Id",     default: -1, null: false
    t.integer  "User701_UnitId", default: -1, null: false
    t.integer  "User702_Id",     default: -1, null: false
    t.integer  "User702_UnitId", default: -1, null: false
    t.integer  "User703_Id",     default: -1, null: false
    t.integer  "User703_UnitId", default: -1, null: false
    t.integer  "User704_Id",     default: -1, null: false
    t.integer  "User704_UnitId", default: -1, null: false
    t.integer  "User705_Id",     default: -1, null: false
    t.integer  "User705_UnitId", default: -1, null: false
    t.integer  "User706_Id",     default: -1, null: false
    t.integer  "User706_UnitId", default: -1, null: false
    t.integer  "User707_Id",     default: -1, null: false
    t.integer  "User707_UnitId", default: -1, null: false
    t.integer  "User708_Id",     default: -1, null: false
    t.integer  "User708_UnitId", default: -1, null: false
    t.integer  "User709_Id",     default: -1, null: false
    t.integer  "User709_UnitId", default: -1, null: false
    t.integer  "User710_Id",     default: -1, null: false
    t.integer  "User710_UnitId", default: -1, null: false
    t.integer  "User711_Id",     default: -1, null: false
    t.integer  "User711_UnitId", default: -1, null: false
    t.integer  "User712_Id",     default: -1, null: false
    t.integer  "User712_UnitId", default: -1, null: false
    t.integer  "User713_Id",     default: -1, null: false
    t.integer  "User713_UnitId", default: -1, null: false
    t.integer  "User714_Id",     default: -1, null: false
    t.integer  "User714_UnitId", default: -1, null: false
    t.integer  "User715_Id",     default: -1, null: false
    t.integer  "User715_UnitId", default: -1, null: false
    t.integer  "User716_Id",     default: -1, null: false
    t.integer  "User716_UnitId", default: -1, null: false
    t.integer  "User717_Id",     default: -1, null: false
    t.integer  "User717_UnitId", default: -1, null: false
    t.integer  "User718_Id",     default: -1, null: false
    t.integer  "User718_UnitId", default: -1, null: false
    t.integer  "User719_Id",     default: -1, null: false
    t.integer  "User719_UnitId", default: -1, null: false
    t.integer  "User720_Id",     default: -1, null: false
    t.integer  "User720_UnitId", default: -1, null: false
    t.integer  "User721_Id",     default: -1, null: false
    t.integer  "User721_UnitId", default: -1, null: false
    t.integer  "User722_Id",     default: -1, null: false
    t.integer  "User722_UnitId", default: -1, null: false
    t.integer  "User723_Id",     default: -1, null: false
    t.integer  "User723_UnitId", default: -1, null: false
    t.integer  "User724_Id",     default: -1, null: false
    t.integer  "User724_UnitId", default: -1, null: false
    t.integer  "User725_Id",     default: -1, null: false
    t.integer  "User725_UnitId", default: -1, null: false
    t.integer  "User726_Id",     default: -1, null: false
    t.integer  "User726_UnitId", default: -1, null: false
    t.integer  "User727_Id",     default: -1, null: false
    t.integer  "User727_UnitId", default: -1, null: false
    t.integer  "User728_Id",     default: -1, null: false
    t.integer  "User728_UnitId", default: -1, null: false
    t.integer  "User729_Id",     default: -1, null: false
    t.integer  "User729_UnitId", default: -1, null: false
    t.integer  "User730_Id",     default: -1, null: false
    t.integer  "User730_UnitId", default: -1, null: false
  end

  create_table "ClinicsCloud", primary_key: "Uuid", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "UId",                           default: 0, null: false
    t.integer  "SId",                           default: 0, null: false
    t.integer  "CId",                           default: 0, null: false
    t.datetime "TS"
    t.datetime "Updated"
    t.integer  "AtBatsPerSession",                          null: false
    t.integer  "Type",                                      null: false
    t.string   "Name",             limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.string   "Notes",            limit: 2048,             null: false
    t.string   "Email",            limit: 50,               null: false
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.integer  "Finished",                      default: 0, null: false
    t.string   "Description",      limit: 100,              null: false
  end

  create_table "EventStats", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                                null: false
    t.integer  "SId",                                null: false
    t.integer  "CId",                                null: false
    t.integer  "UsId",                               null: false, comment: "User ids"
    t.integer  "UsUId",                              null: false
    t.string   "UserUuid",  limit: 50,               null: false
    t.integer  "ClcId",                              null: false, comment: "Clinic ids"
    t.integer  "ClcUId",                             null: false
    t.string   "EventUuid", limit: 50,               null: false, comment: "Event uuid"
    t.integer  "Actv",                               null: false, comment: "1 - Enabled, 0 - Disabled"
    t.datetime "TS",                                              comment: "Time Stamp"
    t.integer  "St",                                 null: false, comment: "Stadium"
    t.integer  "Type",                               null: false, comment: "Session Type"
    t.integer  "SL",                                 null: false, comment: "Skill Level"
    t.integer  "GT",                                 null: false, comment: "Game"
    t.float    "MPV",       limit: 24,               null: false, comment: "Max pitch velo"
    t.float    "MEV",       limit: 24,               null: false, comment: "Max hit velo"
    t.float    "MEVT",      limit: 24, default: 0.0, null: false, comment: "Max hit velo from tee"
    t.float    "APV",       limit: 24,               null: false, comment: "Avg pitch velo"
    t.float    "AEV",       limit: 24,               null: false, comment: "Average hit velo"
    t.float    "AElv",      limit: 24,               null: false, comment: "Avg launch angle"
    t.float    "AD",        limit: 24,               null: false, comment: "Avg distance to impact"
    t.float    "MD",        limit: 24,               null: false, comment: "Max distance to impact"
    t.float    "AGD",       limit: 24, default: 0.0, null: false, comment: "Avg ground distance"
    t.float    "MGD",       limit: 24, default: 0.0, null: false, comment: "Max ground distance"
    t.integer  "PC",                                 null: false, comment: "Pitch count"
    t.integer  "HC",                                 null: false, comment: "Hit count"
    t.integer  "Sing",                               null: false, comment: "Singles"
    t.integer  "Doub",                               null: false, comment: "Doubles"
    t.integer  "Trip",                               null: false, comment: "Triples"
    t.integer  "Home",                               null: false, comment: "Home runs"
    t.integer  "Foul",                               null: false, comment: "Foul balls"
    t.integer  "Strk",                               null: false, comment: "Strikes"
    t.integer  "Ball",                               null: false, comment: "Balls"
    t.float    "AVG",       limit: 24,               null: false, comment: "Batting average"
    t.float    "SLG",       limit: 24,               null: false, comment: "Slugging"
    t.float    "LDP",       limit: 24,               null: false, comment: "Line drive percentage"
    t.float    "FBP",       limit: 24,               null: false, comment: "Fly ball percentage"
    t.float    "GBP",       limit: 24,               null: false, comment: "Ground ball percentage"
    t.float    "LIP",       limit: 24,               null: false, comment: "Left infield percentage"
    t.float    "RIP",       limit: 24,               null: false, comment: "Right infield percentage"
    t.float    "CIP",       limit: 24,               null: false, comment: "Center infield percentage"
    t.float    "LOP",       limit: 24,               null: false, comment: "Left outfield percentage"
    t.float    "ROP",       limit: 24,               null: false, comment: "Right outfield percentage"
    t.float    "COP",       limit: 24,               null: false, comment: "Center outfield percentage"
    t.float    "AHZ1",      limit: 24,               null: false, comment: "Strike zone sections"
    t.float    "AHZ2",      limit: 24,               null: false
    t.float    "AHZ3",      limit: 24,               null: false
    t.float    "AHZ4",      limit: 24,               null: false
    t.float    "AHZ5",      limit: 24,               null: false
    t.float    "AHZ6",      limit: 24,               null: false
    t.float    "AHZ7",      limit: 24,               null: false
    t.float    "AHZ8",      limit: 24,               null: false
    t.float    "AHZ9",      limit: 24,               null: false
    t.float    "AHZ10",     limit: 24,               null: false
    t.float    "AHZ11",     limit: 24,               null: false
    t.float    "AHZ12",     limit: 24,               null: false
    t.float    "AHZ13",     limit: 24,               null: false
    t.string   "Tag",       limit: 50,                            comment: "Comments"
    t.float    "SZB",       limit: 24,               null: false, comment: "Strike zone bottom"
    t.float    "SZT",       limit: 24,               null: false, comment: "Strike zone top"
    t.float    "SZW",       limit: 24,               null: false, comment: "Strike zone width"
    t.integer  "HHC",                                null: false, comment: "Hard hit count"
    t.float    "HHV",       limit: 24,               null: false, comment: "Hard hit velo"
    t.float    "HHVT",      limit: 24, default: 0.0, null: false, comment: "Hard hi velo for tee"
    t.float    "MBRV",      limit: 24,               null: false, comment: "Max barrel velo"
    t.float    "ABRV",      limit: 24,               null: false, comment: "Avg barrel velo"
    t.float    "MIM",       limit: 24,               null: false, comment: "Max impact momentum"
    t.float    "AIM",       limit: 24,               null: false, comment: "Avg impact momentum"
    t.integer  "AB",        limit: 2,  default: 0,   null: false, comment: "At bats"
    t.integer  "SWT",       limit: 2,  default: 0,   null: false, comment: "1 - has swingtracker data"
    t.integer  "SCR",                  default: 0,   null: false, comment: "Point score"
    t.integer  "MPTS",                 default: 0,   null: false, comment: "Max points"
    t.integer  "VB",        limit: 2,                null: false, comment: "Velocity boost"
    t.index ["UsId", "UsUId"], name: "UsId", using: :btree
  end

  create_table "EventStats3", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                                null: false
    t.integer  "SId",                                null: false
    t.integer  "CId",                                null: false
    t.integer  "UsId",                               null: false
    t.integer  "UsUId",                              null: false
    t.string   "UserUuid",  limit: 50,               null: false
    t.integer  "ClcId",                              null: false
    t.integer  "ClcUId",                             null: false
    t.string   "EventUuid", limit: 50,               null: false
    t.datetime "TS"
    t.integer  "St",                                 null: false
    t.integer  "Type",                               null: false
    t.integer  "SL",                                 null: false
    t.integer  "GT",                                 null: false
    t.float    "MPV",       limit: 24,               null: false
    t.float    "MEV",       limit: 24,               null: false
    t.float    "MEVT",      limit: 24, default: 0.0, null: false
    t.float    "APV",       limit: 24,               null: false
    t.float    "AEV",       limit: 24,               null: false
    t.float    "AElv",      limit: 24,               null: false
    t.float    "AD",        limit: 24,               null: false
    t.float    "MD",        limit: 24,               null: false
    t.float    "AGD",       limit: 24, default: 0.0, null: false
    t.float    "MGD",       limit: 24, default: 0.0, null: false
    t.integer  "PC",                                 null: false
    t.integer  "HC",                                 null: false
    t.integer  "Sing",                               null: false
    t.integer  "Doub",                               null: false
    t.integer  "Trip",                               null: false
    t.integer  "Home",                               null: false
    t.integer  "Foul",                               null: false
    t.integer  "Strk",                               null: false
    t.integer  "Ball",                               null: false
    t.float    "AVG",       limit: 24,               null: false
    t.float    "SLG",       limit: 24,               null: false
    t.float    "LDP",       limit: 24,               null: false
    t.float    "FBP",       limit: 24,               null: false
    t.float    "GBP",       limit: 24,               null: false
    t.float    "LIP",       limit: 24,               null: false
    t.float    "RIP",       limit: 24,               null: false
    t.float    "CIP",       limit: 24,               null: false
    t.float    "LOP",       limit: 24,               null: false
    t.float    "ROP",       limit: 24,               null: false
    t.float    "COP",       limit: 24,               null: false
    t.float    "AHZ1",      limit: 24,               null: false
    t.float    "AHZ2",      limit: 24,               null: false
    t.float    "AHZ3",      limit: 24,               null: false
    t.float    "AHZ4",      limit: 24,               null: false
    t.float    "AHZ5",      limit: 24,               null: false
    t.float    "AHZ6",      limit: 24,               null: false
    t.float    "AHZ7",      limit: 24,               null: false
    t.float    "AHZ8",      limit: 24,               null: false
    t.float    "AHZ9",      limit: 24,               null: false
    t.float    "AHZ10",     limit: 24,               null: false
    t.float    "AHZ11",     limit: 24,               null: false
    t.float    "AHZ12",     limit: 24,               null: false
    t.float    "AHZ13",     limit: 24,               null: false
    t.string   "Tag",       limit: 50
    t.float    "SZB",       limit: 24,               null: false
    t.float    "SZT",       limit: 24,               null: false
    t.float    "SZW",       limit: 24,               null: false
    t.integer  "HHC",                                null: false
    t.float    "HHV",       limit: 24,               null: false
    t.float    "HHVT",      limit: 24, default: 0.0, null: false
    t.integer  "Actv",                               null: false
    t.integer  "AB",        limit: 2,  default: 0,   null: false
    t.integer  "SWT",       limit: 2,  default: 0,   null: false
    t.integer  "SCR",                  default: 0,   null: false
    t.integer  "MPTS",                 default: 0,   null: false
    t.integer  "VB",        limit: 2,                null: false
    t.index ["UsId", "UsUId"], name: "UsId", using: :btree
  end

  create_table "EventUsers", primary_key: "Id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.string   "EventUuid", limit: 50, null: false
    t.string   "UserUuid",  limit: 50, null: false
    t.string   "Email",     limit: 50, null: false, collation: "utf8_unicode_ci"
    t.datetime "TS",                   null: false
  end

  create_table "EventUsersTemp", primary_key: "Id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.string   "UserUuid",   limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "DKUuid",     limit: 50, null: false
    t.string   "EventUuid",  limit: 50, null: false
    t.string   "FirstName",  limit: 50, null: false
    t.string   "LastName",   limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "Hash",       limit: 50, null: false, collation: "utf8_unicode_ci"
    t.datetime "TS",                    null: false
    t.string   "Email",      limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "SkillLevel", limit: 50, null: false
    t.string   "GameType",   limit: 50, null: false
    t.float    "Height",     limit: 24, null: false
  end

  create_table "Events", primary_key: "Id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.string   "EventUuid",  limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string   "EventName",  limit: 50, null: false
    t.string   "EventGroup", limit: 50, null: false
    t.datetime "StartDate",             null: false
    t.datetime "EndDate",               null: false
    t.datetime "TS",                    null: false
  end

  create_table "Facilities", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",                                    default: 0,     null: false
    t.integer  "UId",                                   default: 0,     null: false
    t.integer  "SId",                                   default: 0,     null: false
    t.integer  "CompanyId",                             default: 0,     null: false
    t.string   "CompanyName",               limit: 100,                 null: false
    t.string   "State",                     limit: 50,                  null: false
    t.string   "Email",                     limit: 100,                 null: false
    t.boolean  "Private",                               default: false, null: false
    t.boolean  "GameLicense",                           default: false, null: false
    t.boolean  "RDLicense",                             default: false, null: false
    t.datetime "TS"
    t.string   "ContactName",               limit: 100,                 null: false
    t.string   "AddressLine1",              limit: 100,                 null: false
    t.string   "AddressLine2",              limit: 100,                 null: false
    t.string   "AddressLine3",              limit: 100,                 null: false
    t.string   "City",                      limit: 100,                 null: false
    t.string   "AddressLine4",              limit: 100,                 null: false
    t.string   "AddressLine5",              limit: 100,                 null: false
    t.string   "Country",                   limit: 50,                  null: false
    t.string   "Zip",                       limit: 50,                  null: false
    t.string   "Region",                    limit: 50,  default: "All", null: false
    t.string   "Phone",                     limit: 50,                  null: false
    t.string   "Fax",                       limit: 50,                  null: false
    t.string   "Website",                   limit: 100,                 null: false
    t.string   "PromoPage",                 limit: 100,                 null: false
    t.string   "Latitude",                  limit: 20
    t.string   "Longitude",                 limit: 20
    t.string   "EnableFacilityMemberships", limit: 1,   default: "N"
    t.string   "EnableGames",               limit: 1,   default: "N"
    t.string   "EnableRecruitingEngine",    limit: 1,   default: "N"
    t.boolean  "OptedIn",                               default: false
  end

  create_table "FacilityMembershipCart", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "MasterID",           limit: 50
    t.string "CartMemberMasterID", limit: 50
    t.string "OptionSelected",     limit: 40
  end

  create_table "Games", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                                      null: false
    t.integer  "SId",                                      null: false
    t.integer  "CompanyId",                                null: false
    t.string   "Uuid",             limit: 50,              null: false
    t.integer  "RemoteId",                    default: 0,  null: false
    t.integer  "RemoteUnitId",                default: 0,  null: false
    t.integer  "TId",                         default: 0,  null: false
    t.integer  "TUId",                        default: 0,  null: false
    t.integer  "TRId",                        default: 0,  null: false
    t.integer  "dbIndex",                     default: -1, null: false
    t.integer  "Algorithm",                                null: false
    t.integer  "RoundType",                   default: 1,  null: false
    t.integer  "RoundIndex",                  default: 0,  null: false
    t.integer  "HomeGame",                    default: 1,  null: false
    t.integer  "Type",                        default: 3,  null: false
    t.integer  "Boost",                       default: 0,  null: false
    t.integer  "PlayInnings",                              null: false
    t.datetime "TS"
    t.datetime "StartDate"
    t.integer  "State",                                    null: false
    t.integer  "Stadium",                                  null: false
    t.integer  "SkillLevel",                               null: false
    t.integer  "SkillLevelAway",                           null: false
    t.integer  "GameType",                                 null: false
    t.integer  "HomeId",                                   null: false
    t.integer  "HomeUnitId",                               null: false
    t.string   "HomeName",         limit: 50,              null: false, collation: "utf8_unicode_ci"
    t.integer  "AwayId",                                   null: false
    t.integer  "AwayUnitId",                               null: false
    t.string   "AwayName",         limit: 50,              null: false, collation: "utf8_unicode_ci"
    t.integer  "Inning",                                   null: false
    t.integer  "InningHalf",                               null: false
    t.integer  "HomeBattingIndex",                         null: false
    t.integer  "AwayBattingIndex",                         null: false
    t.integer  "HomeHits",                                 null: false
    t.integer  "HomeRuns",                                 null: false
    t.integer  "AwayHits",                                 null: false
    t.integer  "AwayRuns",                                 null: false
    t.index ["CompanyId"], name: "IndexCId", using: :btree
    t.index ["SId"], name: "IndexSId", using: :btree
  end

  create_table "HittingContest", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                   null: false
    t.integer  "SId",                   null: false
    t.integer  "CompanyId",             null: false
    t.datetime "TS"
    t.integer  "SkillLevel",            null: false
    t.integer  "GameType",              null: false
    t.string   "Name30",     limit: 50
    t.string   "Name29",     limit: 50
    t.string   "Name28",     limit: 50
    t.string   "Name27",     limit: 50
    t.string   "Name26",     limit: 50
    t.string   "Name25",     limit: 50
    t.string   "Name24",     limit: 50
    t.string   "Name23",     limit: 50
    t.string   "Name22",     limit: 50
    t.string   "Name21",     limit: 50
    t.string   "Name20",     limit: 50
    t.string   "Name19",     limit: 50
    t.string   "Name18",     limit: 50
    t.string   "Name17",     limit: 50
    t.string   "Name16",     limit: 50
    t.string   "Name15",     limit: 50
    t.string   "Name14",     limit: 50
    t.string   "Name13",     limit: 50
    t.string   "Name12",     limit: 50
    t.string   "Name11",     limit: 50
    t.string   "Name10",     limit: 50
    t.string   "Name9",      limit: 50
    t.string   "Name8",      limit: 50
    t.string   "Name7",      limit: 50
    t.string   "Name6",      limit: 50
    t.string   "Name5",      limit: 50
    t.string   "Name4",      limit: 50
    t.string   "Name3",      limit: 50
    t.string   "Name2",      limit: 50
    t.string   "Name1",      limit: 50
    t.integer  "H30",                   null: false
    t.integer  "H29",                   null: false
    t.integer  "H28",                   null: false
    t.integer  "H27",                   null: false
    t.integer  "H26",                   null: false
    t.integer  "H25",                   null: false
    t.integer  "H24",                   null: false
    t.integer  "H23",                   null: false
    t.integer  "H22",                   null: false
    t.integer  "H21",                   null: false
    t.integer  "H20",                   null: false
    t.integer  "H19",                   null: false
    t.integer  "H18",                   null: false
    t.integer  "H17",                   null: false
    t.integer  "H16",                   null: false
    t.integer  "H15",                   null: false
    t.integer  "H14",                   null: false
    t.integer  "H13",                   null: false
    t.integer  "H12",                   null: false
    t.integer  "H11",                   null: false
    t.integer  "H10",                   null: false
    t.integer  "H9",                    null: false
    t.integer  "H8",                    null: false
    t.integer  "H7",                    null: false
    t.integer  "H6",                    null: false
    t.integer  "H5",                    null: false
    t.integer  "H4",                    null: false
    t.integer  "H3",                    null: false
    t.integer  "H2",                    null: false
    t.integer  "H1",                    null: false
    t.integer  "HR30",                  null: false
    t.integer  "HR29",                  null: false
    t.integer  "HR28",                  null: false
    t.integer  "HR27",                  null: false
    t.integer  "HR26",                  null: false
    t.integer  "HR25",                  null: false
    t.integer  "HR24",                  null: false
    t.integer  "HR23",                  null: false
    t.integer  "HR22",                  null: false
    t.integer  "HR21",                  null: false
    t.integer  "HR20",                  null: false
    t.integer  "HR19",                  null: false
    t.integer  "HR18",                  null: false
    t.integer  "HR17",                  null: false
    t.integer  "HR16",                  null: false
    t.integer  "HR15",                  null: false
    t.integer  "HR14",                  null: false
    t.integer  "HR13",                  null: false
    t.integer  "HR12",                  null: false
    t.integer  "HR11",                  null: false
    t.integer  "HR10",                  null: false
    t.integer  "HR9",                   null: false
    t.integer  "HR8",                   null: false
    t.integer  "HR7",                   null: false
    t.integer  "HR6",                   null: false
    t.integer  "HR5",                   null: false
    t.integer  "HR4",                   null: false
    t.integer  "HR3",                   null: false
    t.integer  "HR2",                   null: false
    t.integer  "HR1",                   null: false
    t.float    "AVG30",      limit: 24, null: false
    t.float    "AVG29",      limit: 24, null: false
    t.float    "AVG28",      limit: 24, null: false
    t.float    "AVG27",      limit: 24, null: false
    t.float    "AVG26",      limit: 24, null: false
    t.float    "AVG25",      limit: 24, null: false
    t.float    "AVG24",      limit: 24, null: false
    t.float    "AVG23",      limit: 24, null: false
    t.float    "AVG22",      limit: 24, null: false
    t.float    "AVG21",      limit: 24, null: false
    t.float    "AVG20",      limit: 24, null: false
    t.float    "AVG19",      limit: 24, null: false
    t.float    "AVG18",      limit: 24, null: false
    t.float    "AVG17",      limit: 24, null: false
    t.float    "AVG16",      limit: 24, null: false
    t.float    "AVG15",      limit: 24, null: false
    t.float    "AVG14",      limit: 24, null: false
    t.float    "AVG13",      limit: 24, null: false
    t.float    "AVG12",      limit: 24, null: false
    t.float    "AVG11",      limit: 24, null: false
    t.float    "AVG10",      limit: 24, null: false
    t.float    "AVG9",       limit: 24, null: false
    t.float    "AVG8",       limit: 24, null: false
    t.float    "AVG7",       limit: 24, null: false
    t.float    "AVG6",       limit: 24, null: false
    t.float    "AVG5",       limit: 24, null: false
    t.float    "AVG4",       limit: 24, null: false
    t.float    "AVG3",       limit: 24, null: false
    t.float    "AVG2",       limit: 24, null: false
    t.float    "AVG1",       limit: 24, null: false
    t.float    "SLG30",      limit: 24, null: false
    t.float    "SLG29",      limit: 24, null: false
    t.float    "SLG28",      limit: 24, null: false
    t.float    "SLG27",      limit: 24, null: false
    t.float    "SLG26",      limit: 24, null: false
    t.float    "SLG25",      limit: 24, null: false
    t.float    "SLG24",      limit: 24, null: false
    t.float    "SLG23",      limit: 24, null: false
    t.float    "SLG22",      limit: 24, null: false
    t.float    "SLG21",      limit: 24, null: false
    t.float    "SLG20",      limit: 24, null: false
    t.float    "SLG19",      limit: 24, null: false
    t.float    "SLG18",      limit: 24, null: false
    t.float    "SLG17",      limit: 24, null: false
    t.float    "SLG16",      limit: 24, null: false
    t.float    "SLG15",      limit: 24, null: false
    t.float    "SLG14",      limit: 24, null: false
    t.float    "SLG13",      limit: 24, null: false
    t.float    "SLG12",      limit: 24, null: false
    t.float    "SLG11",      limit: 24, null: false
    t.float    "SLG10",      limit: 24, null: false
    t.float    "SLG9",       limit: 24, null: false
    t.float    "SLG8",       limit: 24, null: false
    t.float    "SLG7",       limit: 24, null: false
    t.float    "SLG6",       limit: 24, null: false
    t.float    "SLG5",       limit: 24, null: false
    t.float    "SLG4",       limit: 24, null: false
    t.float    "SLG3",       limit: 24, null: false
    t.float    "SLG2",       limit: 24, null: false
    t.float    "SLG1",       limit: 24, null: false
    t.float    "AVGVEL30",   limit: 24, null: false
    t.float    "AVGVEL29",   limit: 24, null: false
    t.float    "AVGVEL28",   limit: 24, null: false
    t.float    "AVGVEL27",   limit: 24, null: false
    t.float    "AVGVEL26",   limit: 24, null: false
    t.float    "AVGVEL25",   limit: 24, null: false
    t.float    "AVGVEL24",   limit: 24, null: false
    t.float    "AVGVEL23",   limit: 24, null: false
    t.float    "AVGVEL22",   limit: 24, null: false
    t.float    "AVGVEL21",   limit: 24, null: false
    t.float    "AVGVEL20",   limit: 24, null: false
    t.float    "AVGVEL19",   limit: 24, null: false
    t.float    "AVGVEL18",   limit: 24, null: false
    t.float    "AVGVEL17",   limit: 24, null: false
    t.float    "AVGVEL16",   limit: 24, null: false
    t.float    "AVGVEL15",   limit: 24, null: false
    t.float    "AVGVEL14",   limit: 24, null: false
    t.float    "AVGVEL13",   limit: 24, null: false
    t.float    "AVGVEL12",   limit: 24, null: false
    t.float    "AVGVEL11",   limit: 24, null: false
    t.float    "AVGVEL10",   limit: 24, null: false
    t.float    "AVGVEL9",    limit: 24, null: false
    t.float    "AVGVEL8",    limit: 24, null: false
    t.float    "AVGVEL7",    limit: 24, null: false
    t.float    "AVGVEL6",    limit: 24, null: false
    t.float    "AVGVEL5",    limit: 24, null: false
    t.float    "AVGVEL4",    limit: 24, null: false
    t.float    "AVGVEL3",    limit: 24, null: false
    t.float    "AVGVEL2",    limit: 24, null: false
    t.float    "AVGVEL1",    limit: 24, null: false
    t.float    "MAXVEL30",   limit: 24, null: false
    t.float    "MAXVEL29",   limit: 24, null: false
    t.float    "MAXVEL28",   limit: 24, null: false
    t.float    "MAXVEL27",   limit: 24, null: false
    t.float    "MAXVEL26",   limit: 24, null: false
    t.float    "MAXVEL25",   limit: 24, null: false
    t.float    "MAXVEL24",   limit: 24, null: false
    t.float    "MAXVEL23",   limit: 24, null: false
    t.float    "MAXVEL22",   limit: 24, null: false
    t.float    "MAXVEL21",   limit: 24, null: false
    t.float    "MAXVEL20",   limit: 24, null: false
    t.float    "MAXVEL19",   limit: 24, null: false
    t.float    "MAXVEL18",   limit: 24, null: false
    t.float    "MAXVEL17",   limit: 24, null: false
    t.float    "MAXVEL16",   limit: 24, null: false
    t.float    "MAXVEL15",   limit: 24, null: false
    t.float    "MAXVEL14",   limit: 24, null: false
    t.float    "MAXVEL13",   limit: 24, null: false
    t.float    "MAXVEL12",   limit: 24, null: false
    t.float    "MAXVEL11",   limit: 24, null: false
    t.float    "MAXVEL10",   limit: 24, null: false
    t.float    "MAXVEL9",    limit: 24, null: false
    t.float    "MAXVEL8",    limit: 24, null: false
    t.float    "MAXVEL7",    limit: 24, null: false
    t.float    "MAXVEL6",    limit: 24, null: false
    t.float    "MAXVEL5",    limit: 24, null: false
    t.float    "MAXVEL4",    limit: 24, null: false
    t.float    "MAXVEL3",    limit: 24, null: false
    t.float    "MAXVEL2",    limit: 24, null: false
    t.float    "MAXVEL1",    limit: 24, null: false
    t.float    "DIST30",     limit: 24, null: false
    t.float    "DIST29",     limit: 24, null: false
    t.float    "DIST28",     limit: 24, null: false
    t.float    "DIST27",     limit: 24, null: false
    t.float    "DIST26",     limit: 24, null: false
    t.float    "DIST25",     limit: 24, null: false
    t.float    "DIST24",     limit: 24, null: false
    t.float    "DIST23",     limit: 24, null: false
    t.float    "DIST22",     limit: 24, null: false
    t.float    "DIST21",     limit: 24, null: false
    t.float    "DIST20",     limit: 24, null: false
    t.float    "DIST19",     limit: 24, null: false
    t.float    "DIST18",     limit: 24, null: false
    t.float    "DIST17",     limit: 24, null: false
    t.float    "DIST16",     limit: 24, null: false
    t.float    "DIST15",     limit: 24, null: false
    t.float    "DIST14",     limit: 24, null: false
    t.float    "DIST13",     limit: 24, null: false
    t.float    "DIST12",     limit: 24, null: false
    t.float    "DIST11",     limit: 24, null: false
    t.float    "DIST10",     limit: 24, null: false
    t.float    "DIST9",      limit: 24, null: false
    t.float    "DIST8",      limit: 24, null: false
    t.float    "DIST7",      limit: 24, null: false
    t.float    "DIST6",      limit: 24, null: false
    t.float    "DIST5",      limit: 24, null: false
    t.float    "DIST4",      limit: 24, null: false
    t.float    "DIST3",      limit: 24, null: false
    t.float    "DIST2",      limit: 24, null: false
    t.float    "DIST1",      limit: 24, null: false
  end

  create_table "HomeRunDerby", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                   null: false
    t.integer  "SId",                   null: false
    t.integer  "CompanyId",             null: false
    t.datetime "TS"
    t.integer  "SkillLevel",            null: false
    t.integer  "GameType",              null: false
    t.string   "Name30",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name29",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name28",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name27",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name26",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name25",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name24",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name23",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name22",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name21",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name20",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name19",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name18",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name17",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name16",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name15",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name14",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name13",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name12",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name11",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name10",     limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name9",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name8",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name7",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name6",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name5",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name4",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name3",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name2",      limit: 50,              collation: "utf8_unicode_ci"
    t.string   "Name1",      limit: 50,              collation: "utf8_unicode_ci"
    t.integer  "R1_30",                 null: false
    t.integer  "R1_29",                 null: false
    t.integer  "R1_28",                 null: false
    t.integer  "R1_27",                 null: false
    t.integer  "R1_26",                 null: false
    t.integer  "R1_25",                 null: false
    t.integer  "R1_24",                 null: false
    t.integer  "R1_23",                 null: false
    t.integer  "R1_22",                 null: false
    t.integer  "R1_21",                 null: false
    t.integer  "R1_20",                 null: false
    t.integer  "R1_19",                 null: false
    t.integer  "R1_18",                 null: false
    t.integer  "R1_17",                 null: false
    t.integer  "R1_16",                 null: false
    t.integer  "R1_15",                 null: false
    t.integer  "R1_14",                 null: false
    t.integer  "R1_13",                 null: false
    t.integer  "R1_12",                 null: false
    t.integer  "R1_11",                 null: false
    t.integer  "R1_10",                 null: false
    t.integer  "R1_9",                  null: false
    t.integer  "R1_8",                  null: false
    t.integer  "R1_7",                  null: false
    t.integer  "R1_6",                  null: false
    t.integer  "R1_5",                  null: false
    t.integer  "R1_4",                  null: false
    t.integer  "R1_3",                  null: false
    t.integer  "R1_2",                  null: false
    t.integer  "R1_1",                  null: false
    t.integer  "R2_30",                 null: false
    t.integer  "R2_29",                 null: false
    t.integer  "R2_28",                 null: false
    t.integer  "R2_27",                 null: false
    t.integer  "R2_26",                 null: false
    t.integer  "R2_25",                 null: false
    t.integer  "R2_24",                 null: false
    t.integer  "R2_23",                 null: false
    t.integer  "R2_22",                 null: false
    t.integer  "R2_21",                 null: false
    t.integer  "R2_20",                 null: false
    t.integer  "R2_19",                 null: false
    t.integer  "R2_18",                 null: false
    t.integer  "R2_17",                 null: false
    t.integer  "R2_16",                 null: false
    t.integer  "R2_15",                 null: false
    t.integer  "R2_14",                 null: false
    t.integer  "R2_13",                 null: false
    t.integer  "R2_12",                 null: false
    t.integer  "R2_11",                 null: false
    t.integer  "R2_10",                 null: false
    t.integer  "R2_9",                  null: false
    t.integer  "R2_8",                  null: false
    t.integer  "R2_7",                  null: false
    t.integer  "R2_6",                  null: false
    t.integer  "R2_5",                  null: false
    t.integer  "R2_4",                  null: false
    t.integer  "R2_3",                  null: false
    t.integer  "R2_2",                  null: false
    t.integer  "R2_1",                  null: false
    t.integer  "R3_30",                 null: false
    t.integer  "R3_29",                 null: false
    t.integer  "R3_28",                 null: false
    t.integer  "R3_27",                 null: false
    t.integer  "R3_26",                 null: false
    t.integer  "R3_25",                 null: false
    t.integer  "R3_24",                 null: false
    t.integer  "R3_23",                 null: false
    t.integer  "R3_22",                 null: false
    t.integer  "R3_21",                 null: false
    t.integer  "R3_20",                 null: false
    t.integer  "R3_19",                 null: false
    t.integer  "R3_18",                 null: false
    t.integer  "R3_17",                 null: false
    t.integer  "R3_16",                 null: false
    t.integer  "R3_15",                 null: false
    t.integer  "R3_14",                 null: false
    t.integer  "R3_13",                 null: false
    t.integer  "R3_12",                 null: false
    t.integer  "R3_11",                 null: false
    t.integer  "R3_10",                 null: false
    t.integer  "R3_9",                  null: false
    t.integer  "R3_8",                  null: false
    t.integer  "R3_7",                  null: false
    t.integer  "R3_6",                  null: false
    t.integer  "R3_5",                  null: false
    t.integer  "R3_4",                  null: false
    t.integer  "R3_3",                  null: false
    t.integer  "R3_2",                  null: false
    t.integer  "R3_1",                  null: false
    t.integer  "R4_30",                 null: false
    t.integer  "R4_29",                 null: false
    t.integer  "R4_28",                 null: false
    t.integer  "R4_27",                 null: false
    t.integer  "R4_26",                 null: false
    t.integer  "R4_25",                 null: false
    t.integer  "R4_24",                 null: false
    t.integer  "R4_23",                 null: false
    t.integer  "R4_22",                 null: false
    t.integer  "R4_21",                 null: false
    t.integer  "R4_20",                 null: false
    t.integer  "R4_19",                 null: false
    t.integer  "R4_18",                 null: false
    t.integer  "R4_17",                 null: false
    t.integer  "R4_16",                 null: false
    t.integer  "R4_15",                 null: false
    t.integer  "R4_14",                 null: false
    t.integer  "R4_13",                 null: false
    t.integer  "R4_12",                 null: false
    t.integer  "R4_11",                 null: false
    t.integer  "R4_10",                 null: false
    t.integer  "R4_9",                  null: false
    t.integer  "R4_8",                  null: false
    t.integer  "R4_7",                  null: false
    t.integer  "R4_6",                  null: false
    t.integer  "R4_5",                  null: false
    t.integer  "R4_4",                  null: false
    t.integer  "R4_3",                  null: false
    t.integer  "R4_2",                  null: false
    t.integer  "R4_1",                  null: false
    t.integer  "R5_30",                 null: false
    t.integer  "R5_29",                 null: false
    t.integer  "R5_28",                 null: false
    t.integer  "R5_27",                 null: false
    t.integer  "R5_26",                 null: false
    t.integer  "R5_25",                 null: false
    t.integer  "R5_24",                 null: false
    t.integer  "R5_23",                 null: false
    t.integer  "R5_22",                 null: false
    t.integer  "R5_21",                 null: false
    t.integer  "R5_20",                 null: false
    t.integer  "R5_19",                 null: false
    t.integer  "R5_18",                 null: false
    t.integer  "R5_17",                 null: false
    t.integer  "R5_16",                 null: false
    t.integer  "R5_15",                 null: false
    t.integer  "R5_14",                 null: false
    t.integer  "R5_13",                 null: false
    t.integer  "R5_12",                 null: false
    t.integer  "R5_11",                 null: false
    t.integer  "R5_10",                 null: false
    t.integer  "R5_9",                  null: false
    t.integer  "R5_8",                  null: false
    t.integer  "R5_7",                  null: false
    t.integer  "R5_6",                  null: false
    t.integer  "R5_5",                  null: false
    t.integer  "R5_4",                  null: false
    t.integer  "R5_3",                  null: false
    t.integer  "R5_2",                  null: false
    t.integer  "R5_1",                  null: false
  end

  create_table "OrgTeams", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                                    null: false
    t.integer  "SId",                                    null: false
    t.integer  "CompanyId",                              null: false
    t.string   "Name",           limit: 50,              null: false, collation: "utf8_unicode_ci"
    t.datetime "TS"
    t.integer  "Active",                                 null: false
    t.datetime "EndDate"
    t.integer  "User1_Id",                  default: -1, null: false
    t.integer  "User2_Id",                  default: -1, null: false
    t.integer  "User3_Id",                  default: -1, null: false
    t.integer  "User4_Id",                  default: -1, null: false
    t.integer  "User5_Id",                  default: -1, null: false
    t.integer  "User6_Id",                  default: -1, null: false
    t.integer  "User7_Id",                  default: -1, null: false
    t.integer  "User8_Id",                  default: -1, null: false
    t.integer  "User9_Id",                  default: -1, null: false
    t.integer  "User10_Id",                 default: -1, null: false
    t.integer  "User11_Id",                 default: -1, null: false
    t.integer  "User12_Id",                 default: -1, null: false
    t.integer  "User13_Id",                 default: -1, null: false
    t.integer  "User14_Id",                 default: -1, null: false
    t.integer  "User15_Id",                 default: -1, null: false
    t.integer  "User16_Id",                 default: -1, null: false
    t.integer  "User17_Id",                 default: -1, null: false
    t.integer  "User18_Id",                 default: -1, null: false
    t.integer  "User19_Id",                 default: -1, null: false
    t.integer  "User20_Id",                 default: -1, null: false
    t.integer  "User21_Id",                 default: -1, null: false
    t.integer  "User22_Id",                 default: -1, null: false
    t.integer  "User23_Id",                 default: -1, null: false
    t.integer  "User24_Id",                 default: -1, null: false
    t.integer  "User25_Id",                 default: -1, null: false
    t.integer  "User26_Id",                 default: -1, null: false
    t.integer  "User27_Id",                 default: -1, null: false
    t.integer  "User28_Id",                 default: -1, null: false
    t.integer  "User29_Id",                 default: -1, null: false
    t.integer  "User30_Id",                 default: -1, null: false
    t.integer  "User31_Id",                 default: -1, null: false
    t.integer  "User32_Id",                 default: -1, null: false
    t.integer  "User33_Id",                 default: -1, null: false
    t.integer  "User34_Id",                 default: -1, null: false
    t.integer  "User35_Id",                 default: -1, null: false
    t.integer  "User36_Id",                 default: -1, null: false
    t.integer  "User37_Id",                 default: -1, null: false
    t.integer  "User38_Id",                 default: -1, null: false
    t.integer  "User39_Id",                 default: -1, null: false
    t.integer  "User40_Id",                 default: -1, null: false
    t.integer  "User41_Id",                 default: -1, null: false
    t.integer  "User42_Id",                 default: -1, null: false
    t.integer  "User43_Id",                 default: -1, null: false
    t.integer  "User44_Id",                 default: -1, null: false
    t.integer  "User45_Id",                 default: -1, null: false
    t.integer  "User46_Id",                 default: -1, null: false
    t.integer  "User47_Id",                 default: -1, null: false
    t.integer  "User48_Id",                 default: -1, null: false
    t.integer  "User49_Id",                 default: -1, null: false
    t.integer  "User50_Id",                 default: -1, null: false
    t.integer  "User51_Id",                 default: -1, null: false
    t.integer  "User52_Id",                 default: -1, null: false
    t.integer  "User53_Id",                 default: -1, null: false
    t.integer  "User54_Id",                 default: -1, null: false
    t.integer  "User55_Id",                 default: -1, null: false
    t.integer  "User56_Id",                 default: -1, null: false
    t.integer  "User57_Id",                 default: -1, null: false
    t.integer  "User58_Id",                 default: -1, null: false
    t.integer  "User59_Id",                 default: -1, null: false
    t.integer  "User60_Id",                 default: -1, null: false
    t.integer  "User61_Id",                 default: -1, null: false
    t.integer  "User62_Id",                 default: -1, null: false
    t.integer  "User63_Id",                 default: -1, null: false
    t.integer  "User64_Id",                 default: -1, null: false
    t.integer  "User65_Id",                 default: -1, null: false
    t.integer  "User66_Id",                 default: -1, null: false
    t.integer  "User67_Id",                 default: -1, null: false
    t.integer  "User68_Id",                 default: -1, null: false
    t.integer  "User69_Id",                 default: -1, null: false
    t.integer  "User70_Id",                 default: -1, null: false
    t.integer  "User71_Id",                 default: -1, null: false
    t.integer  "User72_Id",                 default: -1, null: false
    t.integer  "User73_Id",                 default: -1, null: false
    t.integer  "User74_Id",                 default: -1, null: false
    t.integer  "User75_Id",                 default: -1, null: false
    t.integer  "User76_Id",                 default: -1, null: false
    t.integer  "User77_Id",                 default: -1, null: false
    t.integer  "User78_Id",                 default: -1, null: false
    t.integer  "User79_Id",                 default: -1, null: false
    t.integer  "User80_Id",                 default: -1, null: false
    t.integer  "User81_Id",                 default: -1, null: false
    t.integer  "User82_Id",                 default: -1, null: false
    t.integer  "User83_Id",                 default: -1, null: false
    t.integer  "User84_Id",                 default: -1, null: false
    t.integer  "User85_Id",                 default: -1, null: false
    t.integer  "User86_Id",                 default: -1, null: false
    t.integer  "User87_Id",                 default: -1, null: false
    t.integer  "User88_Id",                 default: -1, null: false
    t.integer  "User89_Id",                 default: -1, null: false
    t.integer  "User90_Id",                 default: -1, null: false
    t.integer  "User91_Id",                 default: -1, null: false
    t.integer  "User92_Id",                 default: -1, null: false
    t.integer  "User93_Id",                 default: -1, null: false
    t.integer  "User94_Id",                 default: -1, null: false
    t.integer  "User95_Id",                 default: -1, null: false
    t.integer  "User96_Id",                 default: -1, null: false
    t.integer  "User97_Id",                 default: -1, null: false
    t.integer  "User98_Id",                 default: -1, null: false
    t.integer  "User99_Id",                 default: -1, null: false
    t.integer  "User100_Id",                default: -1, null: false
    t.integer  "User1_UnitId",              default: -1, null: false
    t.integer  "User2_UnitId",              default: -1, null: false
    t.integer  "User3_UnitId",              default: -1, null: false
    t.integer  "User4_UnitId",              default: -1, null: false
    t.integer  "User5_UnitId",              default: -1, null: false
    t.integer  "User6_UnitId",              default: -1, null: false
    t.integer  "User7_UnitId",              default: -1, null: false
    t.integer  "User8_UnitId",              default: -1, null: false
    t.integer  "User9_UnitId",              default: -1, null: false
    t.integer  "User10_UnitId",             default: -1, null: false
    t.integer  "User11_UnitId",             default: -1, null: false
    t.integer  "User12_UnitId",             default: -1, null: false
    t.integer  "User13_UnitId",             default: -1, null: false
    t.integer  "User14_UnitId",             default: -1, null: false
    t.integer  "User15_UnitId",             default: -1, null: false
    t.integer  "User16_UnitId",             default: -1, null: false
    t.integer  "User17_UnitId",             default: -1, null: false
    t.integer  "User18_UnitId",             default: -1, null: false
    t.integer  "User19_UnitId",             default: -1, null: false
    t.integer  "User20_UnitId",             default: -1, null: false
    t.integer  "User21_UnitId",             default: -1, null: false
    t.integer  "User22_UnitId",             default: -1, null: false
    t.integer  "User23_UnitId",             default: -1, null: false
    t.integer  "User24_UnitId",             default: -1, null: false
    t.integer  "User25_UnitId",             default: -1, null: false
    t.integer  "User26_UnitId",             default: -1, null: false
    t.integer  "User27_UnitId",             default: -1, null: false
    t.integer  "User28_UnitId",             default: -1, null: false
    t.integer  "User29_UnitId",             default: -1, null: false
    t.integer  "User30_UnitId",             default: -1, null: false
    t.integer  "User31_UnitId",             default: -1, null: false
    t.integer  "User32_UnitId",             default: -1, null: false
    t.integer  "User33_UnitId",             default: -1, null: false
    t.integer  "User34_UnitId",             default: -1, null: false
    t.integer  "User35_UnitId",             default: -1, null: false
    t.integer  "User36_UnitId",             default: -1, null: false
    t.integer  "User37_UnitId",             default: -1, null: false
    t.integer  "User38_UnitId",             default: -1, null: false
    t.integer  "User39_UnitId",             default: -1, null: false
    t.integer  "User40_UnitId",             default: -1, null: false
    t.integer  "User41_UnitId",             default: -1, null: false
    t.integer  "User42_UnitId",             default: -1, null: false
    t.integer  "User43_UnitId",             default: -1, null: false
    t.integer  "User44_UnitId",             default: -1, null: false
    t.integer  "User45_UnitId",             default: -1, null: false
    t.integer  "User46_UnitId",             default: -1, null: false
    t.integer  "User47_UnitId",             default: -1, null: false
    t.integer  "User48_UnitId",             default: -1, null: false
    t.integer  "User49_UnitId",             default: -1, null: false
    t.integer  "User50_UnitId",             default: -1, null: false
    t.integer  "User51_UnitId",             default: -1, null: false
    t.integer  "User52_UnitId",             default: -1, null: false
    t.integer  "User53_UnitId",             default: -1, null: false
    t.integer  "User54_UnitId",             default: -1, null: false
    t.integer  "User55_UnitId",             default: -1, null: false
    t.integer  "User56_UnitId",             default: -1, null: false
    t.integer  "User57_UnitId",             default: -1, null: false
    t.integer  "User58_UnitId",             default: -1, null: false
    t.integer  "User59_UnitId",             default: -1, null: false
    t.integer  "User60_UnitId",             default: -1, null: false
    t.integer  "User61_UnitId",             default: -1, null: false
    t.integer  "User62_UnitId",             default: -1, null: false
    t.integer  "User63_UnitId",             default: -1, null: false
    t.integer  "User64_UnitId",             default: -1, null: false
    t.integer  "User65_UnitId",             default: -1, null: false
    t.integer  "User66_UnitId",             default: -1, null: false
    t.integer  "User67_UnitId",             default: -1, null: false
    t.integer  "User68_UnitId",             default: -1, null: false
    t.integer  "User69_UnitId",             default: -1, null: false
    t.integer  "User70_UnitId",             default: -1, null: false
    t.integer  "User71_UnitId",             default: -1, null: false
    t.integer  "User72_UnitId",             default: -1, null: false
    t.integer  "User73_UnitId",             default: -1, null: false
    t.integer  "User74_UnitId",             default: -1, null: false
    t.integer  "User75_UnitId",             default: -1, null: false
    t.integer  "User76_UnitId",             default: -1, null: false
    t.integer  "User77_UnitId",             default: -1, null: false
    t.integer  "User78_UnitId",             default: -1, null: false
    t.integer  "User79_UnitId",             default: -1, null: false
    t.integer  "User80_UnitId",             default: -1, null: false
    t.integer  "User81_UnitId",             default: -1, null: false
    t.integer  "User82_UnitId",             default: -1, null: false
    t.integer  "User83_UnitId",             default: -1, null: false
    t.integer  "User84_UnitId",             default: -1, null: false
    t.integer  "User85_UnitId",             default: -1, null: false
    t.integer  "User86_UnitId",             default: -1, null: false
    t.integer  "User87_UnitId",             default: -1, null: false
    t.integer  "User88_UnitId",             default: -1, null: false
    t.integer  "User89_UnitId",             default: -1, null: false
    t.integer  "User90_UnitId",             default: -1, null: false
    t.integer  "User91_UnitId",             default: -1, null: false
    t.integer  "User92_UnitId",             default: -1, null: false
    t.integer  "User93_UnitId",             default: -1, null: false
    t.integer  "User94_UnitId",             default: -1, null: false
    t.integer  "User95_UnitId",             default: -1, null: false
    t.integer  "User96_UnitId",             default: -1, null: false
    t.integer  "User97_UnitId",             default: -1, null: false
    t.integer  "User98_UnitId",             default: -1, null: false
    t.integer  "User99_UnitId",             default: -1, null: false
    t.integer  "User100_UnitId",            default: -1, null: false
  end

  create_table "PitchClinics", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                     null: false
    t.integer  "SId",                     null: false
    t.integer  "CompanyId",               null: false
    t.integer  "UserId",                  null: false
    t.integer  "UserUnitId",              null: false
    t.string   "Name",         limit: 50, null: false, collation: "utf8_unicode_ci"
    t.datetime "TS"
    t.integer  "PitchType1",              null: false
    t.integer  "PitchType2",              null: false
    t.integer  "PitchType3",              null: false
    t.integer  "PitchType4",              null: false
    t.integer  "PitchType5",              null: false
    t.integer  "PitchType6",              null: false
    t.integer  "PitchType7",              null: false
    t.integer  "PitchType8",              null: false
    t.integer  "PitchType9",              null: false
    t.integer  "PitchType10",             null: false
    t.integer  "PitchType11",             null: false
    t.integer  "PitchType12",             null: false
    t.integer  "PitchType13",             null: false
    t.integer  "PitchType14",             null: false
    t.integer  "PitchType15",             null: false
    t.integer  "PitchType16",             null: false
    t.integer  "PitchType17",             null: false
    t.integer  "PitchType18",             null: false
    t.integer  "PitchCount1",             null: false
    t.integer  "PitchCount2",             null: false
    t.integer  "PitchCount3",             null: false
    t.integer  "PitchCount4",             null: false
    t.integer  "PitchCount5",             null: false
    t.integer  "PitchCount6",             null: false
    t.integer  "PitchCount7",             null: false
    t.integer  "PitchCount8",             null: false
    t.integer  "PitchCount9",             null: false
    t.integer  "PitchCount10",            null: false
    t.integer  "PitchCount11",            null: false
    t.integer  "PitchCount12",            null: false
    t.integer  "PitchCount13",            null: false
    t.integer  "PitchCount14",            null: false
    t.integer  "PitchCount15",            null: false
    t.integer  "PitchCount16",            null: false
    t.integer  "PitchCount17",            null: false
    t.integer  "PitchCount18",            null: false
  end

  create_table "Players", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                                 null: false
    t.integer  "SId",                                 null: false
    t.integer  "CompanyId",                           null: false
    t.integer  "TeamId",                              null: false
    t.integer  "TeamUnitId",                          null: false
    t.datetime "TS"
    t.string   "Name",         limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "UserId",                              null: false
    t.integer  "UserUnitId",                          null: false
    t.integer  "BattingOrder",                        null: false
    t.integer  "Boost",                   default: 0, null: false
    t.integer  "InRoster",                            null: false
  end

  create_table "Plays", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",                              null: false
    t.integer  "UId",                             null: false
    t.integer  "SId",                             null: false,                                                                                          unsigned: true
    t.integer  "SnId",                            null: false
    t.integer  "SnUId",                           null: false
    t.datetime "TS",                                           comment: "Time Stamp"
    t.integer  "Ms",     limit: 2,  default: 0,   null: false, comment: "Ms part of the time stamp",                                                    unsigned: true
    t.float    "EBV1",   limit: 24,               null: false, comment: "Exit ball velo vector"
    t.float    "EBV2",   limit: 24,               null: false
    t.float    "EBV3",   limit: 24,               null: false
    t.float    "Dist",   limit: 24,               null: false, comment: "Distance to first impact"
    t.float    "GD",     limit: 24, default: 0.0, null: false, comment: "Ground Distance"
    t.float    "PV",     limit: 24,               null: false, comment: "Pitch velo"
    t.integer  "Res",    limit: 1,                null: false, comment: "Result"
    t.integer  "HT",     limit: 1,                null: false, comment: "Hit Type, 0 - none, 1 - ground ball, 2 - line drive, 3 - fly ball, 4 - bouce"
    t.integer  "PT",     limit: 1,                null: false, comment: "Pitch Type, -1 - none, "
    t.integer  "Fld",    limit: 1,                null: false, comment: "Fielder"
    t.integer  "QD",     limit: 1,                null: false, comment: "Strike zone section"
    t.float    "PS1",    limit: 24,               null: false, comment: "Start point of the ball flight"
    t.float    "PS2",    limit: 24,               null: false
    t.float    "PS3",    limit: 24,               null: false
    t.float    "PE1",    limit: 24,               null: false, comment: "Ball impact position"
    t.float    "PE2",    limit: 24,               null: false
    t.float    "PE3",    limit: 24,               null: false
    t.float    "PP1",    limit: 24,               null: false, comment: "Pitch coordinate"
    t.float    "PP2",    limit: 24,               null: false
    t.float    "PP3",    limit: 24,               null: false
    t.float    "PC1",    limit: 24,               null: false, comment: "Coordinate where ball was caught or fielded"
    t.float    "PC2",    limit: 24,               null: false
    t.float    "PC3",    limit: 24,               null: false
    t.float    "PCf1",   limit: 24,               null: false, comment: "Pitch trajectory"
    t.float    "PCf2",   limit: 24,               null: false
    t.float    "PCf3",   limit: 24,               null: false
    t.float    "PCf4",   limit: 24,               null: false
    t.float    "PCf5",   limit: 24,               null: false
    t.float    "PCf6",   limit: 24,               null: false
    t.float    "PBH",    limit: 24,               null: false, comment: "Pitch break, horizontal"
    t.float    "PBV",    limit: 24,               null: false, comment: "Pitch breal, vertical"
    t.float    "Elv",    limit: 24,               null: false, comment: "Launch angle"
    t.integer  "Actv",              default: 1,   null: false
    t.integer  "OId",               default: 0,   null: false, comment: "Opposing player id"
    t.integer  "OUId",              default: 0,   null: false
    t.integer  "BM",     limit: 1,  default: 0,   null: false, comment: "Bat material"
    t.float    "SScr",   limit: 24,               null: false
    t.string   "SUuid",  limit: 50,               null: false
    t.string   "SSUuid", limit: 50,               null: false
    t.float    "SM9",    limit: 24,               null: false, comment: "Swing mechanics"
    t.float    "SM10",   limit: 24,               null: false
    t.float    "SM11",   limit: 24,               null: false
    t.float    "SM12",   limit: 24,               null: false
    t.float    "SM13",   limit: 24,               null: false
    t.float    "SM14",   limit: 24,               null: false
    t.float    "SM15",   limit: 24,               null: false
    t.float    "SM16",   limit: 24,               null: false
    t.float    "SM17",   limit: 24,               null: false
    t.float    "SM18",   limit: 24,               null: false
    t.float    "SM19",   limit: 24,               null: false
    t.index ["SnId", "SnUId"], name: "Index 1", using: :btree
  end

  create_table "QualityContactProfiles", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                null: false
    t.integer  "SId",                null: false
    t.integer  "CId",                null: false
    t.integer  "Active",             null: false
    t.datetime "TS"
    t.string   "Name",    limit: 50, null: false, collation: "utf8_unicode_ci"
    t.integer  "Count",              null: false
    t.integer  "MinVelo",            null: false
    t.integer  "MinDist",            null: false
    t.integer  "MinLA",              null: false
    t.integer  "MaxLA",              null: false
  end

  create_table "RecruitingEngine", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PlayerName",           limit: 100
    t.string "Sport",                limit: 10
    t.string "State",                limit: 2
    t.string "Region",               limit: 20
    t.string "Age",                  limit: 5
    t.string "GraduationYear",       limit: 4
    t.string "GPA",                  limit: 10
    t.string "Height",               limit: 15
    t.string "Weight",               limit: 10
    t.string "Position",             limit: 10
    t.string "Bats",                 limit: 10
    t.string "Throws",               limit: 10
    t.string "MaxExitVelocity",      limit: 10
    t.string "AvgExitVelocity",      limit: 10
    t.string "MaxDistance",          limit: 10
    t.string "AvgDistance",          limit: 10
    t.string "LaunchAngle",          limit: 10
    t.string "PlatePitchSpeed",      limit: 10
    t.string "LineDrivePercentage",  limit: 10
    t.string "GroundBallPercentage", limit: 10
    t.string "FlyBallPercentage",    limit: 10
    t.string "StrikePercentage",     limit: 10
    t.string "PlateSpeed",           limit: 10
    t.string "PitchType",            limit: 20
    t.string "OppAvgExitVelocity",   limit: 10
    t.string "EfficiencyIndex",      limit: 10
    t.string "PowerIndex",           limit: 10
    t.string "SwingSpeed",           limit: 10
    t.string "TimeToContact",        limit: 10
    t.string "MaxThrowVelocity",     limit: 10
    t.string "AverageThrowVelocity", limit: 10
    t.string "ThrowAccuracy",        limit: 10
    t.string "60YardDash",           limit: 10
    t.string "HomeToFirst",          limit: 10
    t.string "10YardDash",           limit: 10
    t.string "5105Shuttle",          limit: 10
  end

  create_table "RemoteTeamRequests", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                                  null: false
    t.integer  "SId",                                  null: false
    t.integer  "CompanyId",                            null: false
    t.datetime "TS"
    t.integer  "Active",                   default: 1, null: false
    t.integer  "Accepted",                 default: 0, null: false
    t.string   "CompanyName",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team1_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team1_Id",                             null: false
    t.integer  "Team1_UnitId",                         null: false
    t.string   "Team2_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team2_Id",                             null: false
    t.integer  "Team2_UnitId",                         null: false
    t.string   "Team3_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team3_Id",                             null: false
    t.integer  "Team3_UnitId",                         null: false
    t.string   "Team4_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team4_Id",                             null: false
    t.integer  "Team4_UnitId",                         null: false
    t.string   "Team5_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team5_Id",                             null: false
    t.integer  "Team5_UnitId",                         null: false
    t.string   "Team6_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team7_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team8_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team9_Name",    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team10_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team11_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team12_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team13_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team14_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team15_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team16_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team17_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Team18_Name",   limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Team6_Id",                             null: false
    t.integer  "Team7_Id",                             null: false
    t.integer  "Team8_Id",                             null: false
    t.integer  "Team9_Id",                             null: false
    t.integer  "Team10_Id",                            null: false
    t.integer  "Team11_Id",                            null: false
    t.integer  "Team12_Id",                            null: false
    t.integer  "Team13_Id",                            null: false
    t.integer  "Team14_Id",                            null: false
    t.integer  "Team15_Id",                            null: false
    t.integer  "Team16_Id",                            null: false
    t.integer  "Team17_Id",                            null: false
    t.integer  "Team18_Id",                            null: false
    t.integer  "Team6_UnitId",                         null: false
    t.integer  "Team7_UnitId",                         null: false
    t.integer  "Team8_UnitId",                         null: false
    t.integer  "Team9_UnitId",                         null: false
    t.integer  "Team10_UnitId",                        null: false
    t.integer  "Team11_UnitId",                        null: false
    t.integer  "Team12_UnitId",                        null: false
    t.integer  "Team13_UnitId",                        null: false
    t.integer  "Team14_UnitId",                        null: false
    t.integer  "Team15_UnitId",                        null: false
    t.integer  "Team16_UnitId",                        null: false
    t.integer  "Team17_UnitId",                        null: false
    t.integer  "Team18_UnitId",                        null: false
  end

  create_table "RemoteTournamentsAuxOld", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",        null: false
    t.integer  "SId",        null: false
    t.integer  "CompanyId",  null: false
    t.datetime "TS"
    t.datetime "G1_Date"
    t.datetime "G2_Date"
    t.datetime "G3_Date"
    t.datetime "G4_Date"
    t.datetime "G5_Date"
    t.datetime "G6_Date"
    t.datetime "G7_Date"
    t.datetime "G8_Date"
    t.datetime "G9_Date"
    t.datetime "G10_Date"
    t.datetime "G11_Date"
    t.datetime "G12_Date"
    t.datetime "G13_Date"
    t.datetime "G14_Date"
    t.datetime "G15_Date"
    t.datetime "G16_Date"
    t.datetime "G17_Date"
    t.datetime "G18_Date"
    t.datetime "G19_Date"
    t.datetime "G20_Date"
    t.datetime "G21_Date"
    t.datetime "G22_Date"
    t.datetime "G23_Date"
    t.datetime "G24_Date"
    t.datetime "G25_Date"
    t.datetime "G26_Date"
    t.datetime "G27_Date"
    t.datetime "G28_Date"
    t.datetime "G29_Date"
    t.datetime "G30_Date"
    t.datetime "G31_Date"
    t.datetime "G32_Date"
    t.datetime "G33_Date"
    t.datetime "G34_Date"
    t.datetime "G35_Date"
    t.datetime "G36_Date"
    t.datetime "G37_Date"
    t.datetime "G38_Date"
    t.datetime "G39_Date"
    t.datetime "G40_Date"
    t.datetime "G41_Date"
    t.datetime "G42_Date"
    t.datetime "G43_Date"
    t.datetime "G44_Date"
    t.datetime "G45_Date"
    t.datetime "G46_Date"
    t.datetime "G47_Date"
    t.datetime "G48_Date"
    t.datetime "G49_Date"
    t.datetime "G50_Date"
    t.datetime "G51_Date"
    t.datetime "G52_Date"
    t.datetime "G53_Date"
    t.datetime "G54_Date"
    t.datetime "G55_Date"
    t.datetime "G56_Date"
    t.datetime "G57_Date"
    t.datetime "G58_Date"
    t.datetime "G59_Date"
    t.datetime "G60_Date"
    t.datetime "G61_Date"
    t.datetime "G62_Date"
    t.datetime "G63_Date"
    t.datetime "G64_Date"
    t.datetime "G65_Date"
    t.datetime "G66_Date"
    t.datetime "G67_Date"
    t.datetime "G68_Date"
    t.datetime "G69_Date"
    t.datetime "G70_Date"
    t.datetime "G71_Date"
    t.datetime "G72_Date"
    t.datetime "G73_Date"
    t.datetime "G74_Date"
    t.datetime "G75_Date"
    t.datetime "G76_Date"
    t.datetime "G77_Date"
    t.datetime "G78_Date"
    t.datetime "G79_Date"
    t.datetime "G80_Date"
    t.datetime "G81_Date"
    t.datetime "G82_Date"
    t.datetime "G83_Date"
    t.datetime "G84_Date"
    t.datetime "G85_Date"
    t.datetime "G86_Date"
    t.datetime "G87_Date"
    t.datetime "G88_Date"
    t.datetime "G89_Date"
    t.datetime "G90_Date"
    t.datetime "G91_Date"
    t.datetime "G92_Date"
    t.datetime "G93_Date"
    t.datetime "G94_Date"
    t.datetime "G95_Date"
    t.datetime "G96_Date"
    t.datetime "G97_Date"
    t.datetime "G98_Date"
    t.datetime "G99_Date"
    t.datetime "G100_Date"
    t.datetime "G101_Date"
    t.datetime "G102_Date"
    t.datetime "G103_Date"
    t.datetime "G104_Date"
    t.datetime "G105_Date"
    t.datetime "G106_Date"
    t.datetime "G107_Date"
    t.datetime "G108_Date"
    t.datetime "G109_Date"
    t.datetime "G110_Date"
    t.datetime "G111_Date"
    t.datetime "G112_Date"
    t.datetime "G113_Date"
    t.datetime "G114_Date"
    t.datetime "G115_Date"
    t.datetime "G116_Date"
    t.datetime "G117_Date"
    t.datetime "G118_Date"
    t.datetime "G119_Date"
    t.datetime "G120_Date"
    t.datetime "G121_Date"
    t.datetime "G122_Date"
    t.datetime "G123_Date"
    t.datetime "G124_Date"
    t.datetime "G125_Date"
    t.datetime "G126_Date"
    t.datetime "G127_Date"
    t.datetime "G128_Date"
    t.datetime "G129_Date"
    t.datetime "G130_Date"
    t.datetime "G131_Date"
    t.datetime "G132_Date"
    t.datetime "G133_Date"
    t.datetime "G134_Date"
    t.datetime "G135_Date"
    t.datetime "G136_Date"
    t.datetime "G137_Date"
    t.datetime "G138_Date"
    t.datetime "G139_Date"
    t.datetime "G140_Date"
    t.datetime "G141_Date"
    t.datetime "G142_Date"
    t.datetime "G143_Date"
    t.datetime "G144_Date"
    t.datetime "G145_Date"
    t.datetime "G146_Date"
    t.datetime "G147_Date"
    t.datetime "G148_Date"
    t.datetime "G149_Date"
    t.datetime "G150_Date"
    t.datetime "G151_Date"
    t.datetime "G152_Date"
    t.datetime "G153_Date"
    t.datetime "G154_Date"
    t.datetime "G155_Date"
    t.datetime "G156_Date"
    t.datetime "G157_Date"
    t.datetime "G158_Date"
    t.datetime "G159_Date"
    t.datetime "G160_Date"
    t.datetime "G161_Date"
    t.datetime "G162_Date"
    t.datetime "G163_Date"
    t.datetime "G164_Date"
    t.datetime "G165_Date"
    t.datetime "G166_Date"
    t.datetime "G167_Date"
    t.datetime "G168_Date"
    t.datetime "G169_Date"
    t.datetime "G170_Date"
    t.datetime "G171_Date"
    t.datetime "G172_Date"
    t.datetime "G173_Date"
    t.datetime "G174_Date"
    t.datetime "G175_Date"
    t.datetime "G176_Date"
    t.datetime "G177_Date"
    t.datetime "G178_Date"
    t.datetime "G179_Date"
    t.datetime "G180_Date"
    t.datetime "G181_Date"
    t.datetime "G182_Date"
    t.datetime "G183_Date"
    t.datetime "G184_Date"
    t.datetime "G185_Date"
    t.datetime "G186_Date"
    t.datetime "G187_Date"
    t.datetime "G188_Date"
    t.datetime "G189_Date"
    t.datetime "G190_Date"
    t.datetime "G191_Date"
    t.datetime "G192_Date"
    t.datetime "G193_Date"
    t.datetime "G194_Date"
    t.datetime "G195_Date"
    t.integer  "G1_TAId",    null: false
    t.integer  "G2_TAId",    null: false
    t.integer  "G3_TAId",    null: false
    t.integer  "G4_TAId",    null: false
    t.integer  "G5_TAId",    null: false
    t.integer  "G6_TAId",    null: false
    t.integer  "G7_TAId",    null: false
    t.integer  "G8_TAId",    null: false
    t.integer  "G9_TAId",    null: false
    t.integer  "G10_TAId",   null: false
    t.integer  "G11_TAId",   null: false
    t.integer  "G12_TAId",   null: false
    t.integer  "G13_TAId",   null: false
    t.integer  "G14_TAId",   null: false
    t.integer  "G15_TAId",   null: false
    t.integer  "G16_TAId",   null: false
    t.integer  "G17_TAId",   null: false
    t.integer  "G18_TAId",   null: false
    t.integer  "G19_TAId",   null: false
    t.integer  "G20_TAId",   null: false
    t.integer  "G21_TAId",   null: false
    t.integer  "G23_TAId",   null: false
    t.integer  "G22_TAId",   null: false
    t.integer  "G24_TAId",   null: false
    t.integer  "G25_TAId",   null: false
    t.integer  "G26_TAId",   null: false
    t.integer  "G27_TAId",   null: false
    t.integer  "G28_TAId",   null: false
    t.integer  "G29_TAId",   null: false
    t.integer  "G30_TAId",   null: false
    t.integer  "G32_TAId",   null: false
    t.integer  "G31_TAId",   null: false
    t.integer  "G33_TAId",   null: false
    t.integer  "G34_TAId",   null: false
    t.integer  "G35_TAId",   null: false
    t.integer  "G36_TAId",   null: false
    t.integer  "G37_TAId",   null: false
    t.integer  "G38_TAId",   null: false
    t.integer  "G39_TAId",   null: false
    t.integer  "G40_TAId",   null: false
    t.integer  "G41_TAId",   null: false
    t.integer  "G42_TAId",   null: false
    t.integer  "G43_TAId",   null: false
    t.integer  "G44_TAId",   null: false
    t.integer  "G45_TAId",   null: false
    t.integer  "G46_TAId",   null: false
    t.integer  "G47_TAId",   null: false
    t.integer  "G48_TAId",   null: false
    t.integer  "G49_TAId",   null: false
    t.integer  "G50_TAId",   null: false
    t.integer  "G51_TAId",   null: false
    t.integer  "G52_TAId",   null: false
    t.integer  "G53_TAId",   null: false
    t.integer  "G54_TAId",   null: false
    t.integer  "G55_TAId",   null: false
    t.integer  "G56_TAId",   null: false
    t.integer  "G57_TAId",   null: false
    t.integer  "G58_TAId",   null: false
    t.integer  "G59_TAId",   null: false
    t.integer  "G60_TAId",   null: false
    t.integer  "G61_TAId",   null: false
    t.integer  "G62_TAId",   null: false
    t.integer  "G63_TAId",   null: false
    t.integer  "G64_TAId",   null: false
    t.integer  "G65_TAId",   null: false
    t.integer  "G66_TAId",   null: false
    t.integer  "G67_TAId",   null: false
    t.integer  "G68_TAId",   null: false
    t.integer  "G69_TAId",   null: false
    t.integer  "G70_TAId",   null: false
    t.integer  "G71_TAId",   null: false
    t.integer  "G72_TAId",   null: false
    t.integer  "G73_TAId",   null: false
    t.integer  "G74_TAId",   null: false
    t.integer  "G75_TAId",   null: false
    t.integer  "G76_TAId",   null: false
    t.integer  "G77_TAId",   null: false
    t.integer  "G78_TAId",   null: false
    t.integer  "G79_TAId",   null: false
    t.integer  "G80_TAId",   null: false
    t.integer  "G81_TAId",   null: false
    t.integer  "G82_TAId",   null: false
    t.integer  "G83_TAId",   null: false
    t.integer  "G84_TAId",   null: false
    t.integer  "G85_TAId",   null: false
    t.integer  "G86_TAId",   null: false
    t.integer  "G87_TAId",   null: false
    t.integer  "G88_TAId",   null: false
    t.integer  "G89_TAId",   null: false
    t.integer  "G90_TAId",   null: false
    t.integer  "G91_TAId",   null: false
    t.integer  "G92_TAId",   null: false
    t.integer  "G93_TAId",   null: false
    t.integer  "G94_TAId",   null: false
    t.integer  "G95_TAId",   null: false
    t.integer  "G96_TAId",   null: false
    t.integer  "G97_TAId",   null: false
    t.integer  "G98_TAId",   null: false
    t.integer  "G99_TAId",   null: false
    t.integer  "G100_TAId",  null: false
    t.integer  "G101_TAId",  null: false
    t.integer  "G102_TAId",  null: false
    t.integer  "G103_TAId",  null: false
    t.integer  "G104_TAId",  null: false
    t.integer  "G105_TAId",  null: false
    t.integer  "G106_TAId",  null: false
    t.integer  "G107_TAId",  null: false
    t.integer  "G108_TAId",  null: false
    t.integer  "G109_TAId",  null: false
    t.integer  "G110_TAId",  null: false
    t.integer  "G111_TAId",  null: false
    t.integer  "G112_TAId",  null: false
    t.integer  "G113_TAId",  null: false
    t.integer  "G114_TAId",  null: false
    t.integer  "G115_TAId",  null: false
    t.integer  "G116_TAId",  null: false
    t.integer  "G117_TAId",  null: false
    t.integer  "G118_TAId",  null: false
    t.integer  "G119_TAId",  null: false
    t.integer  "G120_TAId",  null: false
    t.integer  "G121_TAId",  null: false
    t.integer  "G122_TAId",  null: false
    t.integer  "G123_TAId",  null: false
    t.integer  "G124_TAId",  null: false
    t.integer  "G125_TAId",  null: false
    t.integer  "G126_TAId",  null: false
    t.integer  "G127_TAId",  null: false
    t.integer  "G128_TAId",  null: false
    t.integer  "G129_TAId",  null: false
    t.integer  "G130_TAId",  null: false
    t.integer  "G131_TAId",  null: false
    t.integer  "G132_TAId",  null: false
    t.integer  "G133_TAId",  null: false
    t.integer  "G134_TAId",  null: false
    t.integer  "G135_TAId",  null: false
    t.integer  "G136_TAId",  null: false
    t.integer  "G137_TAId",  null: false
    t.integer  "G138_TAId",  null: false
    t.integer  "G139_TAId",  null: false
    t.integer  "G140_TAId",  null: false
    t.integer  "G141_TAId",  null: false
    t.integer  "G142_TAId",  null: false
    t.integer  "G143_TAId",  null: false
    t.integer  "G144_TAId",  null: false
    t.integer  "G145_TAId",  null: false
    t.integer  "G146_TAId",  null: false
    t.integer  "G147_TAId",  null: false
    t.integer  "G148_TAId",  null: false
    t.integer  "G149_TAId",  null: false
    t.integer  "G150_TAId",  null: false
    t.integer  "G151_TAId",  null: false
    t.integer  "G152_TAId",  null: false
    t.integer  "G153_TAId",  null: false
    t.integer  "G154_TAId",  null: false
    t.integer  "G155_TAId",  null: false
    t.integer  "G156_TAId",  null: false
    t.integer  "G157_TAId",  null: false
    t.integer  "G158_TAId",  null: false
    t.integer  "G159_TAId",  null: false
    t.integer  "G160_TAId",  null: false
    t.integer  "G161_TAId",  null: false
    t.integer  "G162_TAId",  null: false
    t.integer  "G163_TAId",  null: false
    t.integer  "G164_TAId",  null: false
    t.integer  "G165_TAId",  null: false
    t.integer  "G166_TAId",  null: false
    t.integer  "G167_TAId",  null: false
    t.integer  "G168_TAId",  null: false
    t.integer  "G169_TAId",  null: false
    t.integer  "G170_TAId",  null: false
    t.integer  "G171_TAId",  null: false
    t.integer  "G172_TAId",  null: false
    t.integer  "G173_TAId",  null: false
    t.integer  "G174_TAId",  null: false
    t.integer  "G175_TAId",  null: false
    t.integer  "G176_TAId",  null: false
    t.integer  "G177_TAId",  null: false
    t.integer  "G178_TAId",  null: false
    t.integer  "G179_TAId",  null: false
    t.integer  "G180_TAId",  null: false
    t.integer  "G181_TAId",  null: false
    t.integer  "G182_TAId",  null: false
    t.integer  "G183_TAId",  null: false
    t.integer  "G184_TAId",  null: false
    t.integer  "G185_TAId",  null: false
    t.integer  "G186_TAId",  null: false
    t.integer  "G187_TAId",  null: false
    t.integer  "G188_TAId",  null: false
    t.integer  "G189_TAId",  null: false
    t.integer  "G190_TAId",  null: false
    t.integer  "G191_TAId",  null: false
    t.integer  "G192_TAId",  null: false
    t.integer  "G193_TAId",  null: false
    t.integer  "G194_TAId",  null: false
    t.integer  "G195_TAId",  null: false
    t.integer  "G1_TAUId",   null: false
    t.integer  "G2_TAUId",   null: false
    t.integer  "G3_TAUId",   null: false
    t.integer  "G4_TAUId",   null: false
    t.integer  "G5_TAUId",   null: false
    t.integer  "G6_TAUId",   null: false
    t.integer  "G7_TAUId",   null: false
    t.integer  "G8_TAUId",   null: false
    t.integer  "G9_TAUId",   null: false
    t.integer  "G10_TAUId",  null: false
    t.integer  "G11_TAUId",  null: false
    t.integer  "G12_TAUId",  null: false
    t.integer  "G13_TAUId",  null: false
    t.integer  "G14_TAUId",  null: false
    t.integer  "G15_TAUId",  null: false
    t.integer  "G16_TAUId",  null: false
    t.integer  "G17_TAUId",  null: false
    t.integer  "G18_TAUId",  null: false
    t.integer  "G19_TAUId",  null: false
    t.integer  "G20_TAUId",  null: false
    t.integer  "G21_TAUId",  null: false
    t.integer  "G22_TAUId",  null: false
    t.integer  "G23_TAUId",  null: false
    t.integer  "G24_TAUId",  null: false
    t.integer  "G25_TAUId",  null: false
    t.integer  "G26_TAUId",  null: false
    t.integer  "G27_TAUId",  null: false
    t.integer  "G28_TAUId",  null: false
    t.integer  "G29_TAUId",  null: false
    t.integer  "G30_TAUId",  null: false
    t.integer  "G31_TAUId",  null: false
    t.integer  "G32_TAUId",  null: false
    t.integer  "G33_TAUId",  null: false
    t.integer  "G34_TAUId",  null: false
    t.integer  "G35_TAUId",  null: false
    t.integer  "G36_TAUId",  null: false
    t.integer  "G37_TAUId",  null: false
    t.integer  "G38_TAUId",  null: false
    t.integer  "G39_TAUId",  null: false
    t.integer  "G40_TAUId",  null: false
    t.integer  "G41_TAUId",  null: false
    t.integer  "G42_TAUId",  null: false
    t.integer  "G43_TAUId",  null: false
    t.integer  "G44_TAUId",  null: false
    t.integer  "G45_TAUId",  null: false
    t.integer  "G46_TAUId",  null: false
    t.integer  "G47_TAUId",  null: false
    t.integer  "G48_TAUId",  null: false
    t.integer  "G49_TAUId",  null: false
    t.integer  "G50_TAUId",  null: false
    t.integer  "G51_TAUId",  null: false
    t.integer  "G52_TAUId",  null: false
    t.integer  "G53_TAUId",  null: false
    t.integer  "G54_TAUId",  null: false
    t.integer  "G55_TAUId",  null: false
    t.integer  "G56_TAUId",  null: false
    t.integer  "G57_TAUId",  null: false
    t.integer  "G58_TAUId",  null: false
    t.integer  "G59_TAUId",  null: false
    t.integer  "G60_TAUId",  null: false
    t.integer  "G61_TAUId",  null: false
    t.integer  "G62_TAUId",  null: false
    t.integer  "G63_TAUId",  null: false
    t.integer  "G64_TAUId",  null: false
    t.integer  "G65_TAUId",  null: false
    t.integer  "G66_TAUId",  null: false
    t.integer  "G67_TAUId",  null: false
    t.integer  "G68_TAUId",  null: false
    t.integer  "G69_TAUId",  null: false
    t.integer  "G70_TAUId",  null: false
    t.integer  "G71_TAUId",  null: false
    t.integer  "G72_TAUId",  null: false
    t.integer  "G73_TAUId",  null: false
    t.integer  "G74_TAUId",  null: false
    t.integer  "G75_TAUId",  null: false
    t.integer  "G76_TAUId",  null: false
    t.integer  "G77_TAUId",  null: false
    t.integer  "G78_TAUId",  null: false
    t.integer  "G79_TAUId",  null: false
    t.integer  "G80_TAUId",  null: false
    t.integer  "G81_TAUId",  null: false
    t.integer  "G82_TAUId",  null: false
    t.integer  "G83_TAUId",  null: false
    t.integer  "G84_TAUId",  null: false
    t.integer  "G85_TAUId",  null: false
    t.integer  "G86_TAUId",  null: false
    t.integer  "G87_TAUId",  null: false
    t.integer  "G88_TAUId",  null: false
    t.integer  "G89_TAUId",  null: false
    t.integer  "G90_TAUId",  null: false
    t.integer  "G91_TAUId",  null: false
    t.integer  "G92_TAUId",  null: false
    t.integer  "G93_TAUId",  null: false
    t.integer  "G94_TAUId",  null: false
    t.integer  "G95_TAUId",  null: false
    t.integer  "G96_TAUId",  null: false
    t.integer  "G97_TAUId",  null: false
    t.integer  "G98_TAUId",  null: false
    t.integer  "G99_TAUId",  null: false
    t.integer  "G100_TAUId", null: false
    t.integer  "G101_TAUId", null: false
    t.integer  "G102_TAUId", null: false
    t.integer  "G103_TAUId", null: false
    t.integer  "G104_TAUId", null: false
    t.integer  "G105_TAUId", null: false
    t.integer  "G106_TAUId", null: false
    t.integer  "G107_TAUId", null: false
    t.integer  "G108_TAUId", null: false
    t.integer  "G109_TAUId", null: false
    t.integer  "G110_TAUId", null: false
    t.integer  "G111_TAUId", null: false
    t.integer  "G112_TAUId", null: false
    t.integer  "G113_TAUId", null: false
    t.integer  "G114_TAUId", null: false
    t.integer  "G115_TAUId", null: false
    t.integer  "G116_TAUId", null: false
    t.integer  "G117_TAUId", null: false
    t.integer  "G118_TAUId", null: false
    t.integer  "G119_TAUId", null: false
    t.integer  "G120_TAUId", null: false
    t.integer  "G121_TAUId", null: false
    t.integer  "G122_TAUId", null: false
    t.integer  "G123_TAUId", null: false
    t.integer  "G124_TAUId", null: false
    t.integer  "G125_TAUId", null: false
    t.integer  "G126_TAUId", null: false
    t.integer  "G127_TAUId", null: false
    t.integer  "G128_TAUId", null: false
    t.integer  "G129_TAUId", null: false
    t.integer  "G130_TAUId", null: false
    t.integer  "G131_TAUId", null: false
    t.integer  "G132_TAUId", null: false
    t.integer  "G133_TAUId", null: false
    t.integer  "G134_TAUId", null: false
    t.integer  "G135_TAUId", null: false
    t.integer  "G136_TAUId", null: false
    t.integer  "G137_TAUId", null: false
    t.integer  "G138_TAUId", null: false
    t.integer  "G139_TAUId", null: false
    t.integer  "G140_TAUId", null: false
    t.integer  "G141_TAUId", null: false
    t.integer  "G142_TAUId", null: false
    t.integer  "G143_TAUId", null: false
    t.integer  "G144_TAUId", null: false
    t.integer  "G145_TAUId", null: false
    t.integer  "G146_TAUId", null: false
    t.integer  "G147_TAUId", null: false
    t.integer  "G148_TAUId", null: false
    t.integer  "G149_TAUId", null: false
    t.integer  "G150_TAUId", null: false
    t.integer  "G151_TAUId", null: false
    t.integer  "G152_TAUId", null: false
    t.integer  "G153_TAUId", null: false
    t.integer  "G154_TAUId", null: false
    t.integer  "G155_TAUId", null: false
    t.integer  "G156_TAUId", null: false
    t.integer  "G157_TAUId", null: false
    t.integer  "G158_TAUId", null: false
    t.integer  "G159_TAUId", null: false
    t.integer  "G160_TAUId", null: false
    t.integer  "G161_TAUId", null: false
    t.integer  "G162_TAUId", null: false
    t.integer  "G163_TAUId", null: false
    t.integer  "G164_TAUId", null: false
    t.integer  "G165_TAUId", null: false
    t.integer  "G166_TAUId", null: false
    t.integer  "G167_TAUId", null: false
    t.integer  "G168_TAUId", null: false
    t.integer  "G169_TAUId", null: false
    t.integer  "G170_TAUId", null: false
    t.integer  "G171_TAUId", null: false
    t.integer  "G172_TAUId", null: false
    t.integer  "G173_TAUId", null: false
    t.integer  "G174_TAUId", null: false
    t.integer  "G175_TAUId", null: false
    t.integer  "G176_TAUId", null: false
    t.integer  "G177_TAUId", null: false
    t.integer  "G178_TAUId", null: false
    t.integer  "G179_TAUId", null: false
    t.integer  "G180_TAUId", null: false
    t.integer  "G181_TAUId", null: false
    t.integer  "G182_TAUId", null: false
    t.integer  "G183_TAUId", null: false
    t.integer  "G184_TAUId", null: false
    t.integer  "G185_TAUId", null: false
    t.integer  "G186_TAUId", null: false
    t.integer  "G187_TAUId", null: false
    t.integer  "G188_TAUId", null: false
    t.integer  "G189_TAUId", null: false
    t.integer  "G190_TAUId", null: false
    t.integer  "G191_TAUId", null: false
    t.integer  "G192_TAUId", null: false
    t.integer  "G193_TAUId", null: false
    t.integer  "G194_TAUId", null: false
    t.integer  "G195_TAUId", null: false
    t.integer  "G1_THId",    null: false
    t.integer  "G2_THId",    null: false
    t.integer  "G3_THId",    null: false
    t.integer  "G4_THId",    null: false
    t.integer  "G5_THId",    null: false
    t.integer  "G6_THId",    null: false
    t.integer  "G7_THId",    null: false
    t.integer  "G8_THId",    null: false
    t.integer  "G9_THId",    null: false
    t.integer  "G10_THId",   null: false
    t.integer  "G11_THId",   null: false
    t.integer  "G12_THId",   null: false
    t.integer  "G13_THId",   null: false
    t.integer  "G14_THId",   null: false
    t.integer  "G15_THId",   null: false
    t.integer  "G16_THId",   null: false
    t.integer  "G17_THId",   null: false
    t.integer  "G18_THId",   null: false
    t.integer  "G19_THId",   null: false
    t.integer  "G20_THId",   null: false
    t.integer  "G21_THId",   null: false
    t.integer  "G22_THId",   null: false
    t.integer  "G23_THId",   null: false
    t.integer  "G24_THId",   null: false
    t.integer  "G25_THId",   null: false
    t.integer  "G26_THId",   null: false
    t.integer  "G27_THId",   null: false
    t.integer  "G28_THId",   null: false
    t.integer  "G29_THId",   null: false
    t.integer  "G30_THId",   null: false
    t.integer  "G31_THId",   null: false
    t.integer  "G32_THId",   null: false
    t.integer  "G33_THId",   null: false
    t.integer  "G34_THId",   null: false
    t.integer  "G35_THId",   null: false
    t.integer  "G36_THId",   null: false
    t.integer  "G37_THId",   null: false
    t.integer  "G38_THId",   null: false
    t.integer  "G39_THId",   null: false
    t.integer  "G40_THId",   null: false
    t.integer  "G41_THId",   null: false
    t.integer  "G42_THId",   null: false
    t.integer  "G43_THId",   null: false
    t.integer  "G44_THId",   null: false
    t.integer  "G45_THId",   null: false
    t.integer  "G46_THId",   null: false
    t.integer  "G47_THId",   null: false
    t.integer  "G48_THId",   null: false
    t.integer  "G49_THId",   null: false
    t.integer  "G50_THId",   null: false
    t.integer  "G51_THId",   null: false
    t.integer  "G52_THId",   null: false
    t.integer  "G53_THId",   null: false
    t.integer  "G54_THId",   null: false
    t.integer  "G55_THId",   null: false
    t.integer  "G56_THId",   null: false
    t.integer  "G57_THId",   null: false
    t.integer  "G58_THId",   null: false
    t.integer  "G59_THId",   null: false
    t.integer  "G60_THId",   null: false
    t.integer  "G61_THId",   null: false
    t.integer  "G62_THId",   null: false
    t.integer  "G63_THId",   null: false
    t.integer  "G64_THId",   null: false
    t.integer  "G65_THId",   null: false
    t.integer  "G66_THId",   null: false
    t.integer  "G67_THId",   null: false
    t.integer  "G68_THId",   null: false
    t.integer  "G69_THId",   null: false
    t.integer  "G70_THId",   null: false
    t.integer  "G71_THId",   null: false
    t.integer  "G72_THId",   null: false
    t.integer  "G73_THId",   null: false
    t.integer  "G74_THId",   null: false
    t.integer  "G75_THId",   null: false
    t.integer  "G76_THId",   null: false
    t.integer  "G77_THId",   null: false
    t.integer  "G78_THId",   null: false
    t.integer  "G79_THId",   null: false
    t.integer  "G80_THId",   null: false
    t.integer  "G81_THId",   null: false
    t.integer  "G82_THId",   null: false
    t.integer  "G83_THId",   null: false
    t.integer  "G84_THId",   null: false
    t.integer  "G85_THId",   null: false
    t.integer  "G86_THId",   null: false
    t.integer  "G87_THId",   null: false
    t.integer  "G88_THId",   null: false
    t.integer  "G89_THId",   null: false
    t.integer  "G90_THId",   null: false
    t.integer  "G91_THId",   null: false
    t.integer  "G92_THId",   null: false
    t.integer  "G93_THId",   null: false
    t.integer  "G94_THId",   null: false
    t.integer  "G95_THId",   null: false
    t.integer  "G96_THId",   null: false
    t.integer  "G97_THId",   null: false
    t.integer  "G98_THId",   null: false
    t.integer  "G99_THId",   null: false
    t.integer  "G100_THId",  null: false
    t.integer  "G101_THId",  null: false
    t.integer  "G102_THId",  null: false
    t.integer  "G103_THId",  null: false
    t.integer  "G104_THId",  null: false
    t.integer  "G105_THId",  null: false
    t.integer  "G106_THId",  null: false
    t.integer  "G107_THId",  null: false
    t.integer  "G108_THId",  null: false
    t.integer  "G109_THId",  null: false
    t.integer  "G110_THId",  null: false
    t.integer  "G111_THId",  null: false
    t.integer  "G112_THId",  null: false
    t.integer  "G113_THId",  null: false
    t.integer  "G114_THId",  null: false
    t.integer  "G115_THId",  null: false
    t.integer  "G116_THId",  null: false
    t.integer  "G117_THId",  null: false
    t.integer  "G118_THId",  null: false
    t.integer  "G119_THId",  null: false
    t.integer  "G120_THId",  null: false
    t.integer  "G121_THId",  null: false
    t.integer  "G122_THId",  null: false
    t.integer  "G123_THId",  null: false
    t.integer  "G124_THId",  null: false
    t.integer  "G125_THId",  null: false
    t.integer  "G126_THId",  null: false
    t.integer  "G127_THId",  null: false
    t.integer  "G128_THId",  null: false
    t.integer  "G129_THId",  null: false
    t.integer  "G130_THId",  null: false
    t.integer  "G131_THId",  null: false
    t.integer  "G132_THId",  null: false
    t.integer  "G133_THId",  null: false
    t.integer  "G134_THId",  null: false
    t.integer  "G135_THId",  null: false
    t.integer  "G136_THId",  null: false
    t.integer  "G137_THId",  null: false
    t.integer  "G138_THId",  null: false
    t.integer  "G139_THId",  null: false
    t.integer  "G140_THId",  null: false
    t.integer  "G141_THId",  null: false
    t.integer  "G142_THId",  null: false
    t.integer  "G143_THId",  null: false
    t.integer  "G144_THId",  null: false
    t.integer  "G145_THId",  null: false
    t.integer  "G146_THId",  null: false
    t.integer  "G147_THId",  null: false
    t.integer  "G148_THId",  null: false
    t.integer  "G149_THId",  null: false
    t.integer  "G150_THId",  null: false
    t.integer  "G151_THId",  null: false
    t.integer  "G152_THId",  null: false
    t.integer  "G153_THId",  null: false
    t.integer  "G154_THId",  null: false
    t.integer  "G155_THId",  null: false
    t.integer  "G156_THId",  null: false
    t.integer  "G157_THId",  null: false
    t.integer  "G158_THId",  null: false
    t.integer  "G159_THId",  null: false
    t.integer  "G160_THId",  null: false
    t.integer  "G161_THId",  null: false
    t.integer  "G162_THId",  null: false
    t.integer  "G163_THId",  null: false
    t.integer  "G164_THId",  null: false
    t.integer  "G165_THId",  null: false
    t.integer  "G166_THId",  null: false
    t.integer  "G167_THId",  null: false
    t.integer  "G168_THId",  null: false
    t.integer  "G169_THId",  null: false
    t.integer  "G170_THId",  null: false
    t.integer  "G171_THId",  null: false
    t.integer  "G172_THId",  null: false
    t.integer  "G173_THId",  null: false
    t.integer  "G174_THId",  null: false
    t.integer  "G175_THId",  null: false
    t.integer  "G176_THId",  null: false
    t.integer  "G177_THId",  null: false
    t.integer  "G178_THId",  null: false
    t.integer  "G179_THId",  null: false
    t.integer  "G180_THId",  null: false
    t.integer  "G181_THId",  null: false
    t.integer  "G182_THId",  null: false
    t.integer  "G183_THId",  null: false
    t.integer  "G184_THId",  null: false
    t.integer  "G185_THId",  null: false
    t.integer  "G186_THId",  null: false
    t.integer  "G187_THId",  null: false
    t.integer  "G188_THId",  null: false
    t.integer  "G189_THId",  null: false
    t.integer  "G190_THId",  null: false
    t.integer  "G191_THId",  null: false
    t.integer  "G192_THId",  null: false
    t.integer  "G193_THId",  null: false
    t.integer  "G194_THId",  null: false
    t.integer  "G195_THId",  null: false
    t.integer  "G1_THUId",   null: false
    t.integer  "G2_THUId",   null: false
    t.integer  "G3_THUId",   null: false
    t.integer  "G4_THUId",   null: false
    t.integer  "G5_THUId",   null: false
    t.integer  "G6_THUId",   null: false
    t.integer  "G7_THUId",   null: false
    t.integer  "G8_THUId",   null: false
    t.integer  "G9_THUId",   null: false
    t.integer  "G10_THUId",  null: false
    t.integer  "G11_THUId",  null: false
    t.integer  "G12_THUId",  null: false
    t.integer  "G13_THUId",  null: false
    t.integer  "G14_THUId",  null: false
    t.integer  "G15_THUId",  null: false
    t.integer  "G16_THUId",  null: false
    t.integer  "G17_THUId",  null: false
    t.integer  "G18_THUId",  null: false
    t.integer  "G19_THUId",  null: false
    t.integer  "G20_THUId",  null: false
    t.integer  "G21_THUId",  null: false
    t.integer  "G22_THUId",  null: false
    t.integer  "G23_THUId",  null: false
    t.integer  "G24_THUId",  null: false
    t.integer  "G25_THUId",  null: false
    t.integer  "G26_THUId",  null: false
    t.integer  "G27_THUId",  null: false
    t.integer  "G28_THUId",  null: false
    t.integer  "G29_THUId",  null: false
    t.integer  "G30_THUId",  null: false
    t.integer  "G31_THUId",  null: false
    t.integer  "G32_THUId",  null: false
    t.integer  "G33_THUId",  null: false
    t.integer  "G34_THUId",  null: false
    t.integer  "G35_THUId",  null: false
    t.integer  "G36_THUId",  null: false
    t.integer  "G37_THUId",  null: false
    t.integer  "G38_THUId",  null: false
    t.integer  "G39_THUId",  null: false
    t.integer  "G40_THUId",  null: false
    t.integer  "G41_THUId",  null: false
    t.integer  "G42_THUId",  null: false
    t.integer  "G43_THUId",  null: false
    t.integer  "G44_THUId",  null: false
    t.integer  "G45_THUId",  null: false
    t.integer  "G46_THUId",  null: false
    t.integer  "G47_THUId",  null: false
    t.integer  "G48_THUId",  null: false
    t.integer  "G49_THUId",  null: false
    t.integer  "G50_THUId",  null: false
    t.integer  "G51_THUId",  null: false
    t.integer  "G52_THUId",  null: false
    t.integer  "G53_THUId",  null: false
    t.integer  "G54_THUId",  null: false
    t.integer  "G55_THUId",  null: false
    t.integer  "G56_THUId",  null: false
    t.integer  "G57_THUId",  null: false
    t.integer  "G58_THUId",  null: false
    t.integer  "G59_THUId",  null: false
    t.integer  "G60_THUId",  null: false
    t.integer  "G61_THUId",  null: false
    t.integer  "G62_THUId",  null: false
    t.integer  "G63_THUId",  null: false
    t.integer  "G64_THUId",  null: false
    t.integer  "G65_THUId",  null: false
    t.integer  "G66_THUId",  null: false
    t.integer  "G67_THUId",  null: false
    t.integer  "G68_THUId",  null: false
    t.integer  "G69_THUId",  null: false
    t.integer  "G70_THUId",  null: false
    t.integer  "G71_THUId",  null: false
    t.integer  "G72_THUId",  null: false
    t.integer  "G73_THUId",  null: false
    t.integer  "G74_THUId",  null: false
    t.integer  "G75_THUId",  null: false
    t.integer  "G76_THUId",  null: false
    t.integer  "G77_THUId",  null: false
    t.integer  "G78_THUId",  null: false
    t.integer  "G79_THUId",  null: false
    t.integer  "G80_THUId",  null: false
    t.integer  "G81_THUId",  null: false
    t.integer  "G82_THUId",  null: false
    t.integer  "G83_THUId",  null: false
    t.integer  "G84_THUId",  null: false
    t.integer  "G85_THUId",  null: false
    t.integer  "G86_THUId",  null: false
    t.integer  "G87_THUId",  null: false
    t.integer  "G88_THUId",  null: false
    t.integer  "G89_THUId",  null: false
    t.integer  "G90_THUId",  null: false
    t.integer  "G91_THUId",  null: false
    t.integer  "G92_THUId",  null: false
    t.integer  "G93_THUId",  null: false
    t.integer  "G94_THUId",  null: false
    t.integer  "G95_THUId",  null: false
    t.integer  "G96_THUId",  null: false
    t.integer  "G97_THUId",  null: false
    t.integer  "G98_THUId",  null: false
    t.integer  "G99_THUId",  null: false
    t.integer  "G100_THUId", null: false
    t.integer  "G101_THUId", null: false
    t.integer  "G102_THUId", null: false
    t.integer  "G103_THUId", null: false
    t.integer  "G104_THUId", null: false
    t.integer  "G105_THUId", null: false
    t.integer  "G106_THUId", null: false
    t.integer  "G107_THUId", null: false
    t.integer  "G108_THUId", null: false
    t.integer  "G109_THUId", null: false
    t.integer  "G110_THUId", null: false
    t.integer  "G111_THUId", null: false
    t.integer  "G112_THUId", null: false
    t.integer  "G113_THUId", null: false
    t.integer  "G114_THUId", null: false
    t.integer  "G115_THUId", null: false
    t.integer  "G116_THUId", null: false
    t.integer  "G117_THUId", null: false
    t.integer  "G118_THUId", null: false
    t.integer  "G119_THUId", null: false
    t.integer  "G120_THUId", null: false
    t.integer  "G121_THUId", null: false
    t.integer  "G122_THUId", null: false
    t.integer  "G123_THUId", null: false
    t.integer  "G124_THUId", null: false
    t.integer  "G125_THUId", null: false
    t.integer  "G126_THUId", null: false
    t.integer  "G127_THUId", null: false
    t.integer  "G128_THUId", null: false
    t.integer  "G129_THUId", null: false
    t.integer  "G130_THUId", null: false
    t.integer  "G131_THUId", null: false
    t.integer  "G132_THUId", null: false
    t.integer  "G133_THUId", null: false
    t.integer  "G134_THUId", null: false
    t.integer  "G135_THUId", null: false
    t.integer  "G136_THUId", null: false
    t.integer  "G137_THUId", null: false
    t.integer  "G138_THUId", null: false
    t.integer  "G139_THUId", null: false
    t.integer  "G140_THUId", null: false
    t.integer  "G141_THUId", null: false
    t.integer  "G142_THUId", null: false
    t.integer  "G143_THUId", null: false
    t.integer  "G144_THUId", null: false
    t.integer  "G145_THUId", null: false
    t.integer  "G146_THUId", null: false
    t.integer  "G147_THUId", null: false
    t.integer  "G148_THUId", null: false
    t.integer  "G149_THUId", null: false
    t.integer  "G150_THUId", null: false
    t.integer  "G151_THUId", null: false
    t.integer  "G152_THUId", null: false
    t.integer  "G153_THUId", null: false
    t.integer  "G154_THUId", null: false
    t.integer  "G155_THUId", null: false
    t.integer  "G156_THUId", null: false
    t.integer  "G157_THUId", null: false
    t.integer  "G158_THUId", null: false
    t.integer  "G159_THUId", null: false
    t.integer  "G160_THUId", null: false
    t.integer  "G161_THUId", null: false
    t.integer  "G162_THUId", null: false
    t.integer  "G163_THUId", null: false
    t.integer  "G164_THUId", null: false
    t.integer  "G165_THUId", null: false
    t.integer  "G166_THUId", null: false
    t.integer  "G167_THUId", null: false
    t.integer  "G168_THUId", null: false
    t.integer  "G169_THUId", null: false
    t.integer  "G170_THUId", null: false
    t.integer  "G171_THUId", null: false
    t.integer  "G172_THUId", null: false
    t.integer  "G173_THUId", null: false
    t.integer  "G174_THUId", null: false
    t.integer  "G175_THUId", null: false
    t.integer  "G176_THUId", null: false
    t.integer  "G177_THUId", null: false
    t.integer  "G178_THUId", null: false
    t.integer  "G179_THUId", null: false
    t.integer  "G180_THUId", null: false
    t.integer  "G181_THUId", null: false
    t.integer  "G182_THUId", null: false
    t.integer  "G183_THUId", null: false
    t.integer  "G184_THUId", null: false
    t.integer  "G185_THUId", null: false
    t.integer  "G186_THUId", null: false
    t.integer  "G187_THUId", null: false
    t.integer  "G188_THUId", null: false
    t.integer  "G189_THUId", null: false
    t.integer  "G190_THUId", null: false
    t.integer  "G191_THUId", null: false
    t.integer  "G192_THUId", null: false
    t.integer  "G193_THUId", null: false
    t.integer  "G194_THUId", null: false
    t.integer  "G195_THUId", null: false
  end

  create_table "RemoteTournamentsGames", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "TournamentId",                                 null: false
    t.integer  "GameId",                                       null: false
    t.integer  "GameUId",                                      null: false
    t.datetime "TS",           default: '2017-02-02 20:10:54', null: false
  end

  create_table "RemoteTournamentsOld", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id"
    t.integer  "UId",                                null: false
    t.integer  "SId",                                null: false
    t.integer  "CompanyId",                          null: false
    t.integer  "PlayoffType",                        null: false
    t.string   "Name",        limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.datetime "TS"
    t.date     "StartDate"
    t.integer  "Finished",                           null: false
    t.integer  "Format",                 default: 1, null: false
    t.integer  "WinnerId",                           null: false
    t.integer  "WinnerUId",                          null: false
    t.integer  "Team1_Id",               default: 0, null: false
    t.integer  "Team2_Id",               default: 0, null: false
    t.integer  "Team3_Id",               default: 0, null: false
    t.integer  "Team4_Id",               default: 0, null: false
    t.integer  "Team5_Id",               default: 0, null: false
    t.integer  "Team6_Id",               default: 0, null: false
    t.integer  "Team7_Id",               default: 0, null: false
    t.integer  "Team8_Id",               default: 0, null: false
    t.integer  "Team9_Id",               default: 0, null: false
    t.integer  "Team10_Id",              default: 0, null: false
    t.integer  "Team11_Id",              default: 0, null: false
    t.integer  "Team12_Id",              default: 0, null: false
    t.integer  "Team13_Id",              default: 0, null: false
    t.integer  "Team14_Id",              default: 0, null: false
    t.integer  "Team15_Id",              default: 0, null: false
    t.integer  "Team16_Id",              default: 0, null: false
    t.integer  "Team17_Id",              default: 0, null: false
    t.integer  "Team18_Id",              default: 0, null: false
    t.integer  "Team19_Id",              default: 0, null: false
    t.integer  "Team20_Id",              default: 0, null: false
    t.integer  "Team21_Id",              default: 0, null: false
    t.integer  "Team22_Id",              default: 0, null: false
    t.integer  "Team23_Id",              default: 0, null: false
    t.integer  "Team24_Id",              default: 0, null: false
    t.integer  "Team25_Id",              default: 0, null: false
    t.integer  "Team26_Id",              default: 0, null: false
    t.integer  "Team27_Id",              default: 0, null: false
    t.integer  "Team28_Id",              default: 0, null: false
    t.integer  "Team29_Id",              default: 0, null: false
    t.integer  "Team30_Id",              default: 0, null: false
    t.integer  "Team31_Id",              default: 0, null: false
    t.integer  "Team32_Id",              default: 0, null: false
    t.integer  "Team33_Id",              default: 0, null: false
    t.integer  "Team34_Id",              default: 0, null: false
    t.integer  "Team35_Id",              default: 0, null: false
    t.integer  "Team36_Id",              default: 0, null: false
    t.integer  "Team37_Id",              default: 0, null: false
    t.integer  "Team38_Id",              default: 0, null: false
    t.integer  "Team39_Id",              default: 0, null: false
    t.integer  "Team40_Id",              default: 0, null: false
    t.integer  "Team41_Id",              default: 0, null: false
    t.integer  "Team42_Id",              default: 0, null: false
    t.integer  "Team43_Id",              default: 0, null: false
    t.integer  "Team44_Id",              default: 0, null: false
    t.integer  "Team45_Id",              default: 0, null: false
    t.integer  "Team46_Id",              default: 0, null: false
    t.integer  "Team47_Id",              default: 0, null: false
    t.integer  "Team48_Id",              default: 0, null: false
    t.integer  "Team49_Id",              default: 0, null: false
    t.integer  "Team50_Id",              default: 0, null: false
    t.integer  "Team51_Id",              default: 0, null: false
    t.integer  "Team52_Id",              default: 0, null: false
    t.integer  "Team53_Id",              default: 0, null: false
    t.integer  "Team54_Id",              default: 0, null: false
    t.integer  "Team55_Id",              default: 0, null: false
    t.integer  "Team56_Id",              default: 0, null: false
    t.integer  "Team57_Id",              default: 0, null: false
    t.integer  "Team58_Id",              default: 0, null: false
    t.integer  "Team59_Id",              default: 0, null: false
    t.integer  "Team60_Id",              default: 0, null: false
    t.integer  "Team61_Id",              default: 0, null: false
    t.integer  "Team62_Id",              default: 0, null: false
    t.integer  "Team63_Id",              default: 0, null: false
    t.integer  "Team64_Id",              default: 0, null: false
    t.integer  "Team65_Id",              default: 0, null: false
    t.integer  "Team66_Id",              default: 0, null: false
    t.integer  "Team67_Id",              default: 0, null: false
    t.integer  "Team68_Id",              default: 0, null: false
    t.integer  "Team69_Id",              default: 0, null: false
    t.integer  "Team70_Id",              default: 0, null: false
    t.integer  "Team1_UId",              default: 0, null: false
    t.integer  "Team2_UId",              default: 0, null: false
    t.integer  "Team3_UId",              default: 0, null: false
    t.integer  "Team4_UId",              default: 0, null: false
    t.integer  "Team5_UId",              default: 0, null: false
    t.integer  "Team6_UId",              default: 0, null: false
    t.integer  "Team7_UId",              default: 0, null: false
    t.integer  "Team8_UId",              default: 0, null: false
    t.integer  "Team9_UId",              default: 0, null: false
    t.integer  "Team10_UId",             default: 0, null: false
    t.integer  "Team11_UId",             default: 0, null: false
    t.integer  "Team12_UId",             default: 0, null: false
    t.integer  "Team13_UId",             default: 0, null: false
    t.integer  "Team14_UId",             default: 0, null: false
    t.integer  "Team15_UId",             default: 0, null: false
    t.integer  "Team16_UId",             default: 0, null: false
    t.integer  "Team17_UId",             default: 0, null: false
    t.integer  "Team18_UId",             default: 0, null: false
    t.integer  "Team19_UId",             default: 0, null: false
    t.integer  "Team20_UId",             default: 0, null: false
    t.integer  "Team21_UId",             default: 0, null: false
    t.integer  "Team22_UId",             default: 0, null: false
    t.integer  "Team23_UId",             default: 0, null: false
    t.integer  "Team24_UId",             default: 0, null: false
    t.integer  "Team25_UId",             default: 0, null: false
    t.integer  "Team26_UId",             default: 0, null: false
    t.integer  "Team27_UId",             default: 0, null: false
    t.integer  "Team28_UId",             default: 0, null: false
    t.integer  "Team29_UId",             default: 0, null: false
    t.integer  "Team30_UId",             default: 0, null: false
    t.integer  "Team31_UId",             default: 0, null: false
    t.integer  "Team32_UId",             default: 0, null: false
    t.integer  "Team33_UId",             default: 0, null: false
    t.integer  "Team34_UId",             default: 0, null: false
    t.integer  "Team35_UId",             default: 0, null: false
    t.integer  "Team36_UId",             default: 0, null: false
    t.integer  "Team37_UId",             default: 0, null: false
    t.integer  "Team38_UId",             default: 0, null: false
    t.integer  "Team39_UId",             default: 0, null: false
    t.integer  "Team40_UId",             default: 0, null: false
    t.integer  "Team41_UId",             default: 0, null: false
    t.integer  "Team42_UId",             default: 0, null: false
    t.integer  "Team43_UId",             default: 0, null: false
    t.integer  "Team44_UId",             default: 0, null: false
    t.integer  "Team45_UId",             default: 0, null: false
    t.integer  "Team46_UId",             default: 0, null: false
    t.integer  "Team47_UId",             default: 0, null: false
    t.integer  "Team48_UId",             default: 0, null: false
    t.integer  "Team49_UId",             default: 0, null: false
    t.integer  "Team50_UId",             default: 0, null: false
    t.integer  "Team51_UId",             default: 0, null: false
    t.integer  "Team52_UId",             default: 0, null: false
    t.integer  "Team53_UId",             default: 0, null: false
    t.integer  "Team54_UId",             default: 0, null: false
    t.integer  "Team55_UId",             default: 0, null: false
    t.integer  "Team56_UId",             default: 0, null: false
    t.integer  "Team57_UId",             default: 0, null: false
    t.integer  "Team58_UId",             default: 0, null: false
    t.integer  "Team59_UId",             default: 0, null: false
    t.integer  "Team60_UId",             default: 0, null: false
    t.integer  "Team61_UId",             default: 0, null: false
    t.integer  "Team62_UId",             default: 0, null: false
    t.integer  "Team63_UId",             default: 0, null: false
    t.integer  "Team64_UId",             default: 0, null: false
    t.integer  "Team65_UId",             default: 0, null: false
    t.integer  "Team66_UId",             default: 0, null: false
    t.integer  "Team67_UId",             default: 0, null: false
    t.integer  "Team68_UId",             default: 0, null: false
    t.integer  "Team69_UId",             default: 0, null: false
    t.integer  "Team70_UId",             default: 0, null: false
    t.integer  "PTeam_1",                default: 0, null: false
    t.integer  "PTeam_2",                default: 0, null: false
    t.integer  "PTeam_3",                default: 0, null: false
    t.integer  "PTeam_4",                default: 0, null: false
    t.integer  "PTeam_5",                default: 0, null: false
    t.integer  "PTeam_6",                default: 0, null: false
    t.integer  "PTeam_7",                default: 0, null: false
    t.integer  "PTeam_8",                default: 0, null: false
    t.integer  "PTeam_9",                default: 0, null: false
    t.integer  "PTeam_10",               default: 0, null: false
    t.integer  "PTeam_11",               default: 0, null: false
    t.integer  "PTeam_12",               default: 0, null: false
    t.integer  "PTeam_13",               default: 0, null: false
    t.integer  "PTeam_14",               default: 0, null: false
    t.integer  "PTeam_15",               default: 0, null: false
    t.integer  "PTeam_16",               default: 0, null: false
    t.integer  "PTeam_17",               default: 0, null: false
    t.integer  "PTeam_18",               default: 0, null: false
    t.integer  "PTeam_19",               default: 0, null: false
    t.integer  "PTeam_20",               default: 0, null: false
    t.integer  "PTeam_21",               default: 0, null: false
    t.integer  "PTeam_22",               default: 0, null: false
    t.integer  "PTeam_23",               default: 0, null: false
    t.integer  "PTeam_24",               default: 0, null: false
    t.integer  "PTeam_25",               default: 0, null: false
    t.integer  "PTeam_26",               default: 0, null: false
    t.integer  "PTeam_27",               default: 0, null: false
    t.integer  "PTeam_28",               default: 0, null: false
    t.integer  "PTeam_29",               default: 0, null: false
    t.integer  "PTeam_30",               default: 0, null: false
    t.datetime "TG1_Date"
    t.datetime "TG2_Date"
    t.datetime "TG3_Date"
    t.datetime "TG4_Date"
    t.datetime "TG5_Date"
    t.integer  "TG1_Id",                             null: false
    t.integer  "TG2_Id",                             null: false
    t.integer  "TG3_Id",                             null: false
    t.integer  "TG4_Id",                             null: false
    t.integer  "TG5_Id",                             null: false
    t.integer  "TG1_UId",                            null: false
    t.integer  "TG2_UId",                            null: false
    t.integer  "TG3_UId",                            null: false
    t.integer  "TG4_UId",                            null: false
    t.integer  "TG5_UId",                            null: false
    t.integer  "TG1_TAId",                           null: false
    t.integer  "TG2_TAId",                           null: false
    t.integer  "TG3_TAId",                           null: false
    t.integer  "TG4_TAId",                           null: false
    t.integer  "TG5_TAId",                           null: false
    t.integer  "TG1_TAUId",                          null: false
    t.integer  "TG2_TAUId",                          null: false
    t.integer  "TG3_TAUId",                          null: false
    t.integer  "TG4_TAUId",                          null: false
    t.integer  "TG5_TAUId",                          null: false
    t.integer  "TG1_THId",                           null: false
    t.integer  "TG2_THId",                           null: false
    t.integer  "TG3_THId",                           null: false
    t.integer  "TG4_THId",                           null: false
    t.integer  "TG5_THId",                           null: false
    t.integer  "TG1_THUId",                          null: false
    t.integer  "TG2_THUId",                          null: false
    t.integer  "TG3_THUId",                          null: false
    t.integer  "TG4_THUId",                          null: false
    t.integer  "TG5_THUId",                          null: false
    t.datetime "PG1_Date"
    t.datetime "PG2_Date"
    t.datetime "PG3_Date"
    t.datetime "PG4_Date"
    t.datetime "PG5_Date"
    t.datetime "PG6_Date"
    t.datetime "PG7_Date"
    t.datetime "PG8_Date"
    t.datetime "PG9_Date"
    t.datetime "PG10_Date"
    t.datetime "PG11_Date"
    t.datetime "PG12_Date"
    t.datetime "PG13_Date"
    t.datetime "PG14_Date"
    t.datetime "PG15_Date"
    t.datetime "PG16_Date"
    t.datetime "PG17_Date"
    t.datetime "PG18_Date"
    t.datetime "PG19_Date"
    t.datetime "PG20_Date"
    t.datetime "PG21_Date"
    t.datetime "PG22_Date"
    t.datetime "PG23_Date"
    t.datetime "PG24_Date"
    t.datetime "PG25_Date"
    t.datetime "PG26_Date"
    t.datetime "PG27_Date"
    t.datetime "PG28_Date"
    t.datetime "PG29_Date"
    t.datetime "PG30_Date"
    t.datetime "PG31_Date"
    t.datetime "PG32_Date"
    t.datetime "PG33_Date"
    t.datetime "PG34_Date"
    t.datetime "PG35_Date"
    t.datetime "PG36_Date"
    t.datetime "PG37_Date"
    t.datetime "PG38_Date"
    t.datetime "PG39_Date"
    t.datetime "PG40_Date"
    t.integer  "PG1_Id",                             null: false
    t.integer  "PG2_Id",                             null: false
    t.integer  "PG3_Id",                             null: false
    t.integer  "PG4_Id",                             null: false
    t.integer  "PG5_Id",                             null: false
    t.integer  "PG6_Id",                             null: false
    t.integer  "PG7_Id",                             null: false
    t.integer  "PG8_Id",                             null: false
    t.integer  "PG9_Id",                             null: false
    t.integer  "PG10_Id",                            null: false
    t.integer  "PG11_Id",                            null: false
    t.integer  "PG12_Id",                            null: false
    t.integer  "PG13_Id",                            null: false
    t.integer  "PG14_Id",                            null: false
    t.integer  "PG15_Id",                            null: false
    t.integer  "PG16_Id",                            null: false
    t.integer  "PG17_Id",                            null: false
    t.integer  "PG18_Id",                            null: false
    t.integer  "PG19_Id",                            null: false
    t.integer  "PG20_Id",                            null: false
    t.integer  "PG21_Id",                            null: false
    t.integer  "PG22_Id",                            null: false
    t.integer  "PG23_Id",                            null: false
    t.integer  "PG24_Id",                            null: false
    t.integer  "PG25_Id",                            null: false
    t.integer  "PG26_Id",                            null: false
    t.integer  "PG27_Id",                            null: false
    t.integer  "PG28_Id",                            null: false
    t.integer  "PG29_Id",                            null: false
    t.integer  "PG30_Id",                            null: false
    t.integer  "PG31_Id",                            null: false
    t.integer  "PG32_Id",                            null: false
    t.integer  "PG33_Id",                            null: false
    t.integer  "PG34_Id",                            null: false
    t.integer  "PG35_Id",                            null: false
    t.integer  "PG36_Id",                            null: false
    t.integer  "PG37_Id",                            null: false
    t.integer  "PG38_Id",                            null: false
    t.integer  "PG39_Id",                            null: false
    t.integer  "PG40_Id",                            null: false
    t.integer  "PG1_UId",                            null: false
    t.integer  "PG2_UId",                            null: false
    t.integer  "PG3_UId",                            null: false
    t.integer  "PG4_UId",                            null: false
    t.integer  "PG5_UId",                            null: false
    t.integer  "PG6_UId",                            null: false
    t.integer  "PG7_UId",                            null: false
    t.integer  "PG8_UId",                            null: false
    t.integer  "PG9_UId",                            null: false
    t.integer  "PG10_UId",                           null: false
    t.integer  "PG11_UId",                           null: false
    t.integer  "PG12_UId",                           null: false
    t.integer  "PG13_UId",                           null: false
    t.integer  "PG14_UId",                           null: false
    t.integer  "PG15_UId",                           null: false
    t.integer  "PG16_UId",                           null: false
    t.integer  "PG17_UId",                           null: false
    t.integer  "PG18_UId",                           null: false
    t.integer  "PG19_UId",                           null: false
    t.integer  "PG20_UId",                           null: false
    t.integer  "PG21_UId",                           null: false
    t.integer  "PG22_UId",                           null: false
    t.integer  "PG23_UId",                           null: false
    t.integer  "PG25_UId",                           null: false
    t.integer  "PG24_UId",                           null: false
    t.integer  "PG26_UId",                           null: false
    t.integer  "PG27_UId",                           null: false
    t.integer  "PG28_UId",                           null: false
    t.integer  "PG29_UId",                           null: false
    t.integer  "PG30_UId",                           null: false
    t.integer  "PG31_UId",                           null: false
    t.integer  "PG32_UId",                           null: false
    t.integer  "PG33_UId",                           null: false
    t.integer  "PG34_UId",                           null: false
    t.integer  "PG35_UId",                           null: false
    t.integer  "PG36_UId",                           null: false
    t.integer  "PG37_UId",                           null: false
    t.integer  "PG38_UId",                           null: false
    t.integer  "PG39_UId",                           null: false
    t.integer  "PG40_UId",                           null: false
    t.integer  "PG1_TAId",                           null: false
    t.integer  "PG2_TAId",                           null: false
    t.integer  "PG3_TAId",                           null: false
    t.integer  "PG4_TAId",                           null: false
    t.integer  "PG5_TAId",                           null: false
    t.integer  "PG6_TAId",                           null: false
    t.integer  "PG7_TAId",                           null: false
    t.integer  "PG8_TAId",                           null: false
    t.integer  "PG9_TAId",                           null: false
    t.integer  "PG10_TAId",                          null: false
    t.integer  "PG11_TAId",                          null: false
    t.integer  "PG12_TAId",                          null: false
    t.integer  "PG13_TAId",                          null: false
    t.integer  "PG14_TAId",                          null: false
    t.integer  "PG15_TAId",                          null: false
    t.integer  "PG16_TAId",                          null: false
    t.integer  "PG17_TAId",                          null: false
    t.integer  "PG18_TAId",                          null: false
    t.integer  "PG19_TAId",                          null: false
    t.integer  "PG20_TAId",                          null: false
    t.integer  "PG21_TAId",                          null: false
    t.integer  "PG22_TAId",                          null: false
    t.integer  "PG23_TAId",                          null: false
    t.integer  "PG24_TAId",                          null: false
    t.integer  "PG25_TAId",                          null: false
    t.integer  "PG26_TAId",                          null: false
    t.integer  "PG27_TAId",                          null: false
    t.integer  "PG28_TAId",                          null: false
    t.integer  "PG29_TAId",                          null: false
    t.integer  "PG30_TAId",                          null: false
    t.integer  "PG31_TAId",                          null: false
    t.integer  "PG32_TAId",                          null: false
    t.integer  "PG33_TAId",                          null: false
    t.integer  "PG34_TAId",                          null: false
    t.integer  "PG35_TAId",                          null: false
    t.integer  "PG36_TAId",                          null: false
    t.integer  "PG37_TAId",                          null: false
    t.integer  "PG38_TAId",                          null: false
    t.integer  "PG39_TAId",                          null: false
    t.integer  "PG40_TAId",                          null: false
    t.integer  "PG1_TAUId",                          null: false
    t.integer  "PG2_TAUId",                          null: false
    t.integer  "PG3_TAUId",                          null: false
    t.integer  "PG4_TAUId",                          null: false
    t.integer  "PG5_TAUId",                          null: false
    t.integer  "PG6_TAUId",                          null: false
    t.integer  "PG7_TAUId",                          null: false
    t.integer  "PG8_TAUId",                          null: false
    t.integer  "PG9_TAUId",                          null: false
    t.integer  "PG10_TAUId",                         null: false
    t.integer  "PG11_TAUId",                         null: false
    t.integer  "PG12_TAUId",                         null: false
    t.integer  "PG13_TAUId",                         null: false
    t.integer  "PG14_TAUId",                         null: false
    t.integer  "PG15_TAUId",                         null: false
    t.integer  "PG16_TAUId",                         null: false
    t.integer  "PG17_TAUId",                         null: false
    t.integer  "PG18_TAUId",                         null: false
    t.integer  "PG19_TAUId",                         null: false
    t.integer  "PG20_TAUId",                         null: false
    t.integer  "PG21_TAUId",                         null: false
    t.integer  "PG22_TAUId",                         null: false
    t.integer  "PG23_TAUId",                         null: false
    t.integer  "PG25_TAUId",                         null: false
    t.integer  "PG24_TAUId",                         null: false
    t.integer  "PG26_TAUId",                         null: false
    t.integer  "PG27_TAUId",                         null: false
    t.integer  "PG28_TAUId",                         null: false
    t.integer  "PG29_TAUId",                         null: false
    t.integer  "PG30_TAUId",                         null: false
    t.integer  "PG31_TAUId",                         null: false
    t.integer  "PG32_TAUId",                         null: false
    t.integer  "PG33_TAUId",                         null: false
    t.integer  "PG34_TAUId",                         null: false
    t.integer  "PG35_TAUId",                         null: false
    t.integer  "PG36_TAUId",                         null: false
    t.integer  "PG37_TAUId",                         null: false
    t.integer  "PG38_TAUId",                         null: false
    t.integer  "PG39_TAUId",                         null: false
    t.integer  "PG40_TAUId",                         null: false
    t.integer  "PG1_THId",                           null: false
    t.integer  "PG2_THId",                           null: false
    t.integer  "PG3_THId",                           null: false
    t.integer  "PG4_THId",                           null: false
    t.integer  "PG5_THId",                           null: false
    t.integer  "PG6_THId",                           null: false
    t.integer  "PG7_THId",                           null: false
    t.integer  "PG8_THId",                           null: false
    t.integer  "PG9_THId",                           null: false
    t.integer  "PG10_THId",                          null: false
    t.integer  "PG11_THId",                          null: false
    t.integer  "PG12_THId",                          null: false
    t.integer  "PG13_THId",                          null: false
    t.integer  "PG14_THId",                          null: false
    t.integer  "PG15_THId",                          null: false
    t.integer  "PG16_THId",                          null: false
    t.integer  "PG17_THId",                          null: false
    t.integer  "PG18_THId",                          null: false
    t.integer  "PG19_THId",                          null: false
    t.integer  "PG20_THId",                          null: false
    t.integer  "PG21_THId",                          null: false
    t.integer  "PG22_THId",                          null: false
    t.integer  "PG23_THId",                          null: false
    t.integer  "PG24_THId",                          null: false
    t.integer  "PG25_THId",                          null: false
    t.integer  "PG26_THId",                          null: false
    t.integer  "PG27_THId",                          null: false
    t.integer  "PG28_THId",                          null: false
    t.integer  "PG29_THId",                          null: false
    t.integer  "PG30_THId",                          null: false
    t.integer  "PG31_THId",                          null: false
    t.integer  "PG32_THId",                          null: false
    t.integer  "PG33_THId",                          null: false
    t.integer  "PG34_THId",                          null: false
    t.integer  "PG35_THId",                          null: false
    t.integer  "PG36_THId",                          null: false
    t.integer  "PG37_THId",                          null: false
    t.integer  "PG38_THId",                          null: false
    t.integer  "PG39_THId",                          null: false
    t.integer  "PG40_THId",                          null: false
    t.integer  "PG1_THUId",                          null: false
    t.integer  "PG2_THUId",                          null: false
    t.integer  "PG3_THUId",                          null: false
    t.integer  "PG4_THUId",                          null: false
    t.integer  "PG5_THUId",                          null: false
    t.integer  "PG6_THUId",                          null: false
    t.integer  "PG7_THUId",                          null: false
    t.integer  "PG8_THUId",                          null: false
    t.integer  "PG9_THUId",                          null: false
    t.integer  "PG10_THUId",                         null: false
    t.integer  "PG11_THUId",                         null: false
    t.integer  "PG12_THUId",                         null: false
    t.integer  "PG13_THUId",                         null: false
    t.integer  "PG14_THUId",                         null: false
    t.integer  "PG15_THUId",                         null: false
    t.integer  "PG16_THUId",                         null: false
    t.integer  "PG17_THUId",                         null: false
    t.integer  "PG18_THUId",                         null: false
    t.integer  "PG19_THUId",                         null: false
    t.integer  "PG20_THUId",                         null: false
    t.integer  "PG21_THUId",                         null: false
    t.integer  "PG22_THUId",                         null: false
    t.integer  "PG23_THUId",                         null: false
    t.integer  "PG25_THUId",                         null: false
    t.integer  "PG24_THUId",                         null: false
    t.integer  "PG26_THUId",                         null: false
    t.integer  "PG27_THUId",                         null: false
    t.integer  "PG28_THUId",                         null: false
    t.integer  "PG29_THUId",                         null: false
    t.integer  "PG30_THUId",                         null: false
    t.integer  "PG31_THUId",                         null: false
    t.integer  "PG32_THUId",                         null: false
    t.integer  "PG33_THUId",                         null: false
    t.integer  "PG34_THUId",                         null: false
    t.integer  "PG35_THUId",                         null: false
    t.integer  "PG36_THUId",                         null: false
    t.integer  "PG37_THUId",                         null: false
    t.integer  "PG38_THUId",                         null: false
    t.integer  "PG39_THUId",                         null: false
    t.integer  "PG40_THUId",                         null: false
    t.integer  "G1_Id",                              null: false
    t.integer  "G2_Id",                              null: false
    t.integer  "G3_Id",                              null: false
    t.integer  "G4_Id",                              null: false
    t.integer  "G5_Id",                              null: false
    t.integer  "G6_Id",                              null: false
    t.integer  "G7_Id",                              null: false
    t.integer  "G8_Id",                              null: false
    t.integer  "G9_Id",                              null: false
    t.integer  "G10_Id",                             null: false
    t.integer  "G11_Id",                             null: false
    t.integer  "G12_Id",                             null: false
    t.integer  "G13_Id",                             null: false
    t.integer  "G14_Id",                             null: false
    t.integer  "G15_Id",                             null: false
    t.integer  "G16_Id",                             null: false
    t.integer  "G17_Id",                             null: false
    t.integer  "G18_Id",                             null: false
    t.integer  "G19_Id",                             null: false
    t.integer  "G20_Id",                             null: false
    t.integer  "G21_Id",                             null: false
    t.integer  "G22_Id",                             null: false
    t.integer  "G23_Id",                             null: false
    t.integer  "G24_Id",                             null: false
    t.integer  "G25_Id",                             null: false
    t.integer  "G26_Id",                             null: false
    t.integer  "G27_Id",                             null: false
    t.integer  "G28_Id",                             null: false
    t.integer  "G29_Id",                             null: false
    t.integer  "G30_Id",                             null: false
    t.integer  "G31_Id",                             null: false
    t.integer  "G32_Id",                             null: false
    t.integer  "G33_Id",                             null: false
    t.integer  "G34_Id",                             null: false
    t.integer  "G35_Id",                             null: false
    t.integer  "G36_Id",                             null: false
    t.integer  "G37_Id",                             null: false
    t.integer  "G38_Id",                             null: false
    t.integer  "G39_Id",                             null: false
    t.integer  "G40_Id",                             null: false
    t.integer  "G41_Id",                             null: false
    t.integer  "G42_Id",                             null: false
    t.integer  "G43_Id",                             null: false
    t.integer  "G44_Id",                             null: false
    t.integer  "G45_Id",                             null: false
    t.integer  "G46_Id",                             null: false
    t.integer  "G47_Id",                             null: false
    t.integer  "G48_Id",                             null: false
    t.integer  "G49_Id",                             null: false
    t.integer  "G50_Id",                             null: false
    t.integer  "G51_Id",                             null: false
    t.integer  "G52_Id",                             null: false
    t.integer  "G53_Id",                             null: false
    t.integer  "G54_Id",                             null: false
    t.integer  "G55_Id",                             null: false
    t.integer  "G56_Id",                             null: false
    t.integer  "G57_Id",                             null: false
    t.integer  "G58_Id",                             null: false
    t.integer  "G59_Id",                             null: false
    t.integer  "G60_Id",                             null: false
    t.integer  "G61_Id",                             null: false
    t.integer  "G62_Id",                             null: false
    t.integer  "G63_Id",                             null: false
    t.integer  "G64_Id",                             null: false
    t.integer  "G65_Id",                             null: false
    t.integer  "G66_Id",                             null: false
    t.integer  "G67_Id",                             null: false
    t.integer  "G68_Id",                             null: false
    t.integer  "G69_Id",                             null: false
    t.integer  "G70_Id",                             null: false
    t.integer  "G71_Id",                             null: false
    t.integer  "G72_Id",                             null: false
    t.integer  "G73_Id",                             null: false
    t.integer  "G74_Id",                             null: false
    t.integer  "G75_Id",                             null: false
    t.integer  "G76_Id",                             null: false
    t.integer  "G77_Id",                             null: false
    t.integer  "G78_Id",                             null: false
    t.integer  "G79_Id",                             null: false
    t.integer  "G80_Id",                             null: false
    t.integer  "G81_Id",                             null: false
    t.integer  "G82_Id",                             null: false
    t.integer  "G83_Id",                             null: false
    t.integer  "G84_Id",                             null: false
    t.integer  "G85_Id",                             null: false
    t.integer  "G86_Id",                             null: false
    t.integer  "G87_Id",                             null: false
    t.integer  "G88_Id",                             null: false
    t.integer  "G89_Id",                             null: false
    t.integer  "G90_Id",                             null: false
    t.integer  "G91_Id",                             null: false
    t.integer  "G92_Id",                             null: false
    t.integer  "G93_Id",                             null: false
    t.integer  "G94_Id",                             null: false
    t.integer  "G95_Id",                             null: false
    t.integer  "G96_Id",                             null: false
    t.integer  "G97_Id",                             null: false
    t.integer  "G98_Id",                             null: false
    t.integer  "G99_Id",                             null: false
    t.integer  "G100_Id",                            null: false
    t.integer  "G101_Id",                            null: false
    t.integer  "G102_Id",                            null: false
    t.integer  "G103_Id",                            null: false
    t.integer  "G104_Id",                            null: false
    t.integer  "G105_Id",                            null: false
    t.integer  "G106_Id",                            null: false
    t.integer  "G107_Id",                            null: false
    t.integer  "G108_Id",                            null: false
    t.integer  "G109_Id",                            null: false
    t.integer  "G110_Id",                            null: false
    t.integer  "G111_Id",                            null: false
    t.integer  "G112_Id",                            null: false
    t.integer  "G113_Id",                            null: false
    t.integer  "G114_Id",                            null: false
    t.integer  "G115_Id",                            null: false
    t.integer  "G116_Id",                            null: false
    t.integer  "G117_Id",                            null: false
    t.integer  "G118_Id",                            null: false
    t.integer  "G119_Id",                            null: false
    t.integer  "G120_Id",                            null: false
    t.integer  "G121_Id",                            null: false
    t.integer  "G122_Id",                            null: false
    t.integer  "G123_Id",                            null: false
    t.integer  "G124_Id",                            null: false
    t.integer  "G125_Id",                            null: false
    t.integer  "G126_Id",                            null: false
    t.integer  "G127_Id",                            null: false
    t.integer  "G128_Id",                            null: false
    t.integer  "G129_Id",                            null: false
    t.integer  "G130_Id",                            null: false
    t.integer  "G131_Id",                            null: false
    t.integer  "G132_Id",                            null: false
    t.integer  "G133_Id",                            null: false
    t.integer  "G134_Id",                            null: false
    t.integer  "G135_Id",                            null: false
    t.integer  "G136_Id",                            null: false
    t.integer  "G137_Id",                            null: false
    t.integer  "G138_Id",                            null: false
    t.integer  "G139_Id",                            null: false
    t.integer  "G140_Id",                            null: false
    t.integer  "G141_Id",                            null: false
    t.integer  "G142_Id",                            null: false
    t.integer  "G143_Id",                            null: false
    t.integer  "G144_Id",                            null: false
    t.integer  "G145_Id",                            null: false
    t.integer  "G146_Id",                            null: false
    t.integer  "G147_Id",                            null: false
    t.integer  "G148_Id",                            null: false
    t.integer  "G149_Id",                            null: false
    t.integer  "G150_Id",                            null: false
    t.integer  "G151_Id",                            null: false
    t.integer  "G152_Id",                            null: false
    t.integer  "G153_Id",                            null: false
    t.integer  "G154_Id",                            null: false
    t.integer  "G155_Id",                            null: false
    t.integer  "G156_Id",                            null: false
    t.integer  "G157_Id",                            null: false
    t.integer  "G158_Id",                            null: false
    t.integer  "G159_Id",                            null: false
    t.integer  "G160_Id",                            null: false
    t.integer  "G161_Id",                            null: false
    t.integer  "G162_Id",                            null: false
    t.integer  "G163_Id",                            null: false
    t.integer  "G164_Id",                            null: false
    t.integer  "G165_Id",                            null: false
    t.integer  "G166_Id",                            null: false
    t.integer  "G167_Id",                            null: false
    t.integer  "G168_Id",                            null: false
    t.integer  "G169_Id",                            null: false
    t.integer  "G170_Id",                            null: false
    t.integer  "G171_Id",                            null: false
    t.integer  "G172_Id",                            null: false
    t.integer  "G173_Id",                            null: false
    t.integer  "G174_Id",                            null: false
    t.integer  "G175_Id",                            null: false
    t.integer  "G176_Id",                            null: false
    t.integer  "G177_Id",                            null: false
    t.integer  "G178_Id",                            null: false
    t.integer  "G179_Id",                            null: false
    t.integer  "G180_Id",                            null: false
    t.integer  "G181_Id",                            null: false
    t.integer  "G182_Id",                            null: false
    t.integer  "G183_Id",                            null: false
    t.integer  "G184_Id",                            null: false
    t.integer  "G185_Id",                            null: false
    t.integer  "G186_Id",                            null: false
    t.integer  "G187_Id",                            null: false
    t.integer  "G188_Id",                            null: false
    t.integer  "G189_Id",                            null: false
    t.integer  "G190_Id",                            null: false
    t.integer  "G191_Id",                            null: false
    t.integer  "G192_Id",                            null: false
    t.integer  "G193_Id",                            null: false
    t.integer  "G194_Id",                            null: false
    t.integer  "G195_Id",                            null: false
    t.integer  "G1_UId",                             null: false
    t.integer  "G2_UId",                             null: false
    t.integer  "G3_UId",                             null: false
    t.integer  "G4_UId",                             null: false
    t.integer  "G5_UId",                             null: false
    t.integer  "G6_UId",                             null: false
    t.integer  "G7_UId",                             null: false
    t.integer  "G8_UId",                             null: false
    t.integer  "G9_UId",                             null: false
    t.integer  "G10_UId",                            null: false
    t.integer  "G11_UId",                            null: false
    t.integer  "G12_UId",                            null: false
    t.integer  "G13_UId",                            null: false
    t.integer  "G14_UId",                            null: false
    t.integer  "G15_UId",                            null: false
    t.integer  "G16_UId",                            null: false
    t.integer  "G17_UId",                            null: false
    t.integer  "G18_UId",                            null: false
    t.integer  "G19_UId",                            null: false
    t.integer  "G20_UId",                            null: false
    t.integer  "G21_UId",                            null: false
    t.integer  "G22_UId",                            null: false
    t.integer  "G23_UId",                            null: false
    t.integer  "G24_UId",                            null: false
    t.integer  "G25_UId",                            null: false
    t.integer  "G26_UId",                            null: false
    t.integer  "G27_UId",                            null: false
    t.integer  "G28_UId",                            null: false
    t.integer  "G29_UId",                            null: false
    t.integer  "G30_UId",                            null: false
    t.integer  "G31_UId",                            null: false
    t.integer  "G32_UId",                            null: false
    t.integer  "G33_UId",                            null: false
    t.integer  "G34_UId",                            null: false
    t.integer  "G35_UId",                            null: false
    t.integer  "G40_UId",                            null: false
    t.integer  "G36_UId",                            null: false
    t.integer  "G37_UId",                            null: false
    t.integer  "G38_UId",                            null: false
    t.integer  "G39_UId",                            null: false
    t.integer  "G42_UId",                            null: false
    t.integer  "G41_UId",                            null: false
    t.integer  "G43_UId",                            null: false
    t.integer  "G44_UId",                            null: false
    t.integer  "G45_UId",                            null: false
    t.integer  "G46_UId",                            null: false
    t.integer  "G47_UId",                            null: false
    t.integer  "G48_UId",                            null: false
    t.integer  "G49_UId",                            null: false
    t.integer  "G50_UId",                            null: false
    t.integer  "G51_UId",                            null: false
    t.integer  "G52_UId",                            null: false
    t.integer  "G53_UId",                            null: false
    t.integer  "G54_UId",                            null: false
    t.integer  "G55_UId",                            null: false
    t.integer  "G56_UId",                            null: false
    t.integer  "G57_UId",                            null: false
    t.integer  "G58_UId",                            null: false
    t.integer  "G59_UId",                            null: false
    t.integer  "G60_UId",                            null: false
    t.integer  "G61_UId",                            null: false
    t.integer  "G62_UId",                            null: false
    t.integer  "G63_UId",                            null: false
    t.integer  "G64_UId",                            null: false
    t.integer  "G65_UId",                            null: false
    t.integer  "G66_UId",                            null: false
    t.integer  "G67_UId",                            null: false
    t.integer  "G68_UId",                            null: false
    t.integer  "G69_UId",                            null: false
    t.integer  "G70_UId",                            null: false
    t.integer  "G71_UId",                            null: false
    t.integer  "G72_UId",                            null: false
    t.integer  "G73_UId",                            null: false
    t.integer  "G74_UId",                            null: false
    t.integer  "G75_UId",                            null: false
    t.integer  "G76_UId",                            null: false
    t.integer  "G77_UId",                            null: false
    t.integer  "G78_UId",                            null: false
    t.integer  "G79_UId",                            null: false
    t.integer  "G80_UId",                            null: false
    t.integer  "G81_UId",                            null: false
    t.integer  "G82_UId",                            null: false
    t.integer  "G83_UId",                            null: false
    t.integer  "G84_UId",                            null: false
    t.integer  "G85_UId",                            null: false
    t.integer  "G86_UId",                            null: false
    t.integer  "G87_UId",                            null: false
    t.integer  "G88_UId",                            null: false
    t.integer  "G89_UId",                            null: false
    t.integer  "G90_UId",                            null: false
    t.integer  "G91_UId",                            null: false
    t.integer  "G92_UId",                            null: false
    t.integer  "G93_UId",                            null: false
    t.integer  "G94_UId",                            null: false
    t.integer  "G95_UId",                            null: false
    t.integer  "G96_UId",                            null: false
    t.integer  "G97_UId",                            null: false
    t.integer  "G98_UId",                            null: false
    t.integer  "G99_UId",                            null: false
    t.integer  "G100_UId",                           null: false
    t.integer  "G101_UId",                           null: false
    t.integer  "G102_UId",                           null: false
    t.integer  "G103_UId",                           null: false
    t.integer  "G104_UId",                           null: false
    t.integer  "G105_UId",                           null: false
    t.integer  "G106_UId",                           null: false
    t.integer  "G107_UId",                           null: false
    t.integer  "G108_UId",                           null: false
    t.integer  "G109_UId",                           null: false
    t.integer  "G110_UId",                           null: false
    t.integer  "G111_UId",                           null: false
    t.integer  "G112_UId",                           null: false
    t.integer  "G113_UId",                           null: false
    t.integer  "G114_UId",                           null: false
    t.integer  "G115_UId",                           null: false
    t.integer  "G116_UId",                           null: false
    t.integer  "G117_UId",                           null: false
    t.integer  "G118_UId",                           null: false
    t.integer  "G119_UId",                           null: false
    t.integer  "G120_UId",                           null: false
    t.integer  "G121_UId",                           null: false
    t.integer  "G122_UId",                           null: false
    t.integer  "G123_UId",                           null: false
    t.integer  "G124_UId",                           null: false
    t.integer  "G125_UId",                           null: false
    t.integer  "G126_UId",                           null: false
    t.integer  "G127_UId",                           null: false
    t.integer  "G128_UId",                           null: false
    t.integer  "G129_UId",                           null: false
    t.integer  "G130_UId",                           null: false
    t.integer  "G131_UId",                           null: false
    t.integer  "G132_UId",                           null: false
    t.integer  "G133_UId",                           null: false
    t.integer  "G134_UId",                           null: false
    t.integer  "G135_UId",                           null: false
    t.integer  "G140_UId",                           null: false
    t.integer  "G136_UId",                           null: false
    t.integer  "G137_UId",                           null: false
    t.integer  "G138_UId",                           null: false
    t.integer  "G139_UId",                           null: false
    t.integer  "G141_UId",                           null: false
    t.integer  "G142_UId",                           null: false
    t.integer  "G143_UId",                           null: false
    t.integer  "G144_UId",                           null: false
    t.integer  "G145_UId",                           null: false
    t.integer  "G146_UId",                           null: false
    t.integer  "G147_UId",                           null: false
    t.integer  "G148_UId",                           null: false
    t.integer  "G149_UId",                           null: false
    t.integer  "G150_UId",                           null: false
    t.integer  "G151_UId",                           null: false
    t.integer  "G152_UId",                           null: false
    t.integer  "G153_UId",                           null: false
    t.integer  "G154_UId",                           null: false
    t.integer  "G155_UId",                           null: false
    t.integer  "G156_UId",                           null: false
    t.integer  "G157_UId",                           null: false
    t.integer  "G158_UId",                           null: false
    t.integer  "G159_UId",                           null: false
    t.integer  "G160_UId",                           null: false
    t.integer  "G161_UId",                           null: false
    t.integer  "G162_UId",                           null: false
    t.integer  "G163_UId",                           null: false
    t.integer  "G164_UId",                           null: false
    t.integer  "G165_UId",                           null: false
    t.integer  "G166_UId",                           null: false
    t.integer  "G167_UId",                           null: false
    t.integer  "G168_UId",                           null: false
    t.integer  "G169_UId",                           null: false
    t.integer  "G170_UId",                           null: false
    t.integer  "G171_UId",                           null: false
    t.integer  "G172_UId",                           null: false
    t.integer  "G173_UId",                           null: false
    t.integer  "G174_UId",                           null: false
    t.integer  "G175_UId",                           null: false
    t.integer  "G176_UId",                           null: false
    t.integer  "G177_UId",                           null: false
    t.integer  "G178_UId",                           null: false
    t.integer  "G179_UId",                           null: false
    t.integer  "G180_UId",                           null: false
    t.integer  "G181_UId",                           null: false
    t.integer  "G182_UId",                           null: false
    t.integer  "G183_UId",                           null: false
    t.integer  "G184_UId",                           null: false
    t.integer  "G185_UId",                           null: false
    t.integer  "G186_UId",                           null: false
    t.integer  "G187_UId",                           null: false
    t.integer  "G188_UId",                           null: false
    t.integer  "G189_UId",                           null: false
    t.integer  "G190_UId",                           null: false
    t.integer  "G191_UId",                           null: false
    t.integer  "G192_UId",                           null: false
    t.integer  "G193_UId",                           null: false
    t.integer  "G194_UId",                           null: false
    t.integer  "G195_UId",                           null: false
  end

  create_table "SavedRecruitingSearches", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "MasterID",       limit: 50
    t.string "SearchName",     limit: 100
    t.string "SearchFormData", limit: 2000
  end

  create_table "ScoutingCategories", primary_key: "Uuid", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                                 null: false
    t.integer  "UId",                    default: 0, null: false
    t.integer  "SId",                    default: 0, null: false
    t.integer  "CId",                    default: 0, null: false
    t.datetime "TS",                                 null: false
    t.datetime "Updated",                            null: false
    t.string   "Name",        limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Description", limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer  "Game",                   default: 0, null: false
    t.integer  "Role",                   default: 0, null: false
    t.integer  "Active",                 default: 0, null: false
    t.string   "Muuid1",      limit: 50,             null: false
    t.string   "Muuid2",      limit: 50,             null: false
    t.string   "Muuid3",      limit: 50,             null: false
    t.string   "Muuid4",      limit: 50,             null: false
    t.string   "Muuid5",      limit: 50,             null: false
    t.string   "Muuid6",      limit: 50,             null: false
    t.string   "Muuid7",      limit: 50,             null: false
    t.string   "Muuid8",      limit: 50,             null: false
    t.string   "Muuid9",      limit: 50,             null: false
    t.string   "Muuid10",     limit: 50,             null: false
    t.string   "Muuid11",     limit: 50,             null: false
    t.string   "Muuid12",     limit: 50,             null: false
    t.string   "Muuid13",     limit: 50,             null: false
    t.string   "Muuid14",     limit: 50,             null: false
    t.string   "Muuid15",     limit: 50,             null: false
    t.string   "Muuid16",     limit: 50,             null: false
    t.string   "Muuid17",     limit: 50,             null: false
    t.string   "Muuid18",     limit: 50,             null: false
    t.string   "Muuid19",     limit: 50,             null: false
    t.string   "Muuid20",     limit: 50,             null: false
    t.index ["Id"], name: "Id", using: :btree
  end

  create_table "ScoutingMetrics", primary_key: "Uuid", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                                 null: false
    t.integer  "UId",                    default: 0, null: false
    t.integer  "SId",                    default: 0, null: false
    t.integer  "CId",                    default: 0, null: false
    t.datetime "TS",                                 null: false
    t.datetime "Updated",                            null: false
    t.string   "Name",        limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Description", limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string   "Label",       limit: 50,             null: false, collation: "utf8_general_ci"
    t.integer  "Editable",               default: 0, null: false
    t.integer  "Type",                   default: 0, null: false
    t.integer  "Units",                  default: 0, null: false
    t.integer  "Active",                 default: 0, null: false
    t.index ["Id"], name: "Id", using: :btree
  end

  create_table "ScoutingReports", primary_key: "Uuid", id: :string, limit: 50, collation: "utf8_unicode_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                                           null: false
    t.integer  "UId",                            default: 0,   null: false
    t.integer  "SId",                            default: 0,   null: false
    t.integer  "CId",                            default: 0,   null: false
    t.datetime "TS",                                           null: false
    t.integer  "ClinicId",                       default: 0,   null: false
    t.integer  "ClinicUId",                      default: 0,   null: false
    t.string   "ClinicUuid",        limit: 50,                 null: false
    t.integer  "UserId",                         default: 0,   null: false
    t.integer  "UserUId",                        default: 0,   null: false
    t.string   "UserUuid",          limit: 50,                 null: false
    t.string   "Name",              limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Age",               limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Facility",          limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Notes",             limit: 2048,               null: false
    t.integer  "Game",                           default: 0,   null: false
    t.integer  "GraduationYear",                 default: 0,   null: false
    t.integer  "Position",                       default: 0,   null: false
    t.integer  "Role",                           default: 0,   null: false
    t.integer  "Active",                         default: 0,   null: false
    t.float    "MaxExitVel",        limit: 24,   default: 0.0, null: false
    t.float    "AvgExitVel",        limit: 24,   default: 0.0, null: false
    t.float    "MaxGroundDist",     limit: 24,   default: 0.0, null: false
    t.float    "AvgGroundDist",     limit: 24,   default: 0.0, null: false
    t.float    "MaxExitVelRank",    limit: 24,   default: 0.0, null: false
    t.float    "AvgExitVelRank",    limit: 24,   default: 0.0, null: false
    t.float    "MaxGroundDistRank", limit: 24,   default: 0.0, null: false
    t.float    "AvgGroundDistRank", limit: 24,   default: 0.0, null: false
    t.float    "HHA",               limit: 24,   default: 0.0, null: false
    t.float    "LDPercentage",      limit: 24,   default: 0.0, null: false
    t.float    "GBPercentage",      limit: 24,   default: 0.0, null: false
    t.float    "FBPercentage",      limit: 24,   default: 0.0, null: false
    t.float    "Over80",            limit: 24,   default: 0.0, null: false
    t.float    "Over90",            limit: 24,   default: 0.0, null: false
    t.float    "Over100",           limit: 24,   default: 0.0, null: false
    t.float    "LA10",              limit: 24,   default: 0.0, null: false
    t.float    "LA20",              limit: 24,   default: 0.0, null: false
    t.float    "LA35",              limit: 24,   default: 0.0, null: false
    t.float    "LA35Plus",          limit: 24,   default: 0.0, null: false
    t.string   "Muuid1",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name1",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value1",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid2",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name2",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value2",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid3",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name3",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value3",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid4",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name4",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value4",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid5",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name5",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value5",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid6",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name6",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value6",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid7",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name7",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value7",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid8",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name8",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value8",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid9",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name9",             limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value9",            limit: 24,   default: 0.0, null: false
    t.string   "Muuid10",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name10",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value10",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid11",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name11",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value11",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid12",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name12",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value12",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid13",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name13",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value13",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid14",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name14",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value14",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid15",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name15",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value15",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid16",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name16",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value16",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid17",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name17",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value17",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid18",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name18",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value18",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid19",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name19",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value19",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid20",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name20",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value20",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid21",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name21",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value21",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid22",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name22",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value22",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid23",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name23",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value23",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid24",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name24",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value24",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid25",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name25",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value25",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid26",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name26",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value26",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid27",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name27",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value27",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid28",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name28",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value28",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid29",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name29",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value29",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid30",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name30",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value30",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid31",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name31",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value31",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid32",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name32",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value32",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid33",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name33",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value33",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid34",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name34",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value34",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid35",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name35",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value35",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid36",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name36",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value36",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid37",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name37",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value37",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid38",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name38",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value38",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid39",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name39",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value39",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid40",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name40",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value40",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid41",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name41",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value41",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid42",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name42",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value42",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid43",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name43",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value43",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid44",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name44",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value44",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid45",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name45",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value45",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid46",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name46",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value46",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid47",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name47",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value47",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid48",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name48",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value48",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid49",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name49",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value49",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid50",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name50",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value50",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid51",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name51",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value51",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid52",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name52",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value52",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid53",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name53",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value53",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid54",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name54",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value54",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid55",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name55",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value55",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid56",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name56",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value56",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid57",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name57",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value57",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid58",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name58",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value58",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid59",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name59",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value59",           limit: 24,   default: 0.0, null: false
    t.string   "Muuid60",           limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.string   "Name60",            limit: 50,                 null: false, collation: "utf8_unicode_ci"
    t.float    "Value60",           limit: 24,   default: 0.0, null: false
    t.index ["Id"], name: "Id", using: :btree
  end

  create_table "Session", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                                null: false
    t.integer  "SId",                                null: false
    t.integer  "CId",                                null: false
    t.integer  "UsId",                               null: false, comment: "User ids"
    t.integer  "UsUId",                              null: false
    t.string   "UserUuid",  limit: 50,               null: false
    t.integer  "ClcId",                              null: false, comment: "Clinic ids"
    t.integer  "ClcUId",                             null: false
    t.string   "EventUuid", limit: 50,               null: false, comment: "Event uuid"
    t.integer  "Actv",                               null: false, comment: "1 - Enabled, 0 - Disabled"
    t.datetime "TS",                                              comment: "Time Stamp"
    t.integer  "St",                                 null: false, comment: "Stadium"
    t.integer  "Type",                               null: false, comment: "Session Type"
    t.integer  "SL",                                 null: false, comment: "Skill Level"
    t.integer  "GT",                                 null: false, comment: "Game"
    t.float    "MPV",       limit: 24,               null: false, comment: "Max pitch velo"
    t.float    "MEV",       limit: 24,               null: false, comment: "Max hit velo"
    t.float    "MEVT",      limit: 24, default: 0.0, null: false, comment: "Max hit velo from tee"
    t.float    "APV",       limit: 24,               null: false, comment: "Avg pitch velo"
    t.float    "AEV",       limit: 24,               null: false, comment: "Average hit velo"
    t.float    "AElv",      limit: 24,               null: false, comment: "Avg launch angle"
    t.float    "AD",        limit: 24,               null: false, comment: "Avg distance to impact"
    t.float    "MD",        limit: 24,               null: false, comment: "Max distance to impact"
    t.float    "AGD",       limit: 24, default: 0.0, null: false, comment: "Avg ground distance"
    t.float    "MGD",       limit: 24, default: 0.0, null: false, comment: "Max ground distance"
    t.integer  "PC",                                 null: false, comment: "Pitch count"
    t.integer  "HC",                                 null: false, comment: "Hit count"
    t.integer  "Sing",                               null: false, comment: "Singles"
    t.integer  "Doub",                               null: false, comment: "Doubles"
    t.integer  "Trip",                               null: false, comment: "Triples"
    t.integer  "Home",                               null: false, comment: "Home runs"
    t.integer  "Foul",                               null: false, comment: "Foul balls"
    t.integer  "Strk",                               null: false, comment: "Strikes"
    t.integer  "Ball",                               null: false, comment: "Balls"
    t.float    "AVG",       limit: 24,               null: false, comment: "Batting average"
    t.float    "SLG",       limit: 24,               null: false, comment: "Slugging"
    t.float    "LDP",       limit: 24,               null: false, comment: "Line drive percentage"
    t.float    "FBP",       limit: 24,               null: false, comment: "Fly ball percentage"
    t.float    "GBP",       limit: 24,               null: false, comment: "Ground ball percentage"
    t.float    "LIP",       limit: 24,               null: false, comment: "Left infield percentage"
    t.float    "RIP",       limit: 24,               null: false, comment: "Right infield percentage"
    t.float    "CIP",       limit: 24,               null: false, comment: "Center infield percentage"
    t.float    "LOP",       limit: 24,               null: false, comment: "Left outfield percentage"
    t.float    "ROP",       limit: 24,               null: false, comment: "Right outfield percentage"
    t.float    "COP",       limit: 24,               null: false, comment: "Center outfield percentage"
    t.float    "AHZ1",      limit: 24,               null: false, comment: "Strike zone sections"
    t.float    "AHZ2",      limit: 24,               null: false
    t.float    "AHZ3",      limit: 24,               null: false
    t.float    "AHZ4",      limit: 24,               null: false
    t.float    "AHZ5",      limit: 24,               null: false
    t.float    "AHZ6",      limit: 24,               null: false
    t.float    "AHZ7",      limit: 24,               null: false
    t.float    "AHZ8",      limit: 24,               null: false
    t.float    "AHZ9",      limit: 24,               null: false
    t.float    "AHZ10",     limit: 24,               null: false
    t.float    "AHZ11",     limit: 24,               null: false
    t.float    "AHZ12",     limit: 24,               null: false
    t.float    "AHZ13",     limit: 24,               null: false
    t.string   "Tag",       limit: 50,                            comment: "Comments"
    t.float    "SZB",       limit: 24,               null: false, comment: "Strike zone bottom"
    t.float    "SZT",       limit: 24,               null: false, comment: "Strike zone top"
    t.float    "SZW",       limit: 24,               null: false, comment: "Strike zone width"
    t.integer  "HHC",                                null: false, comment: "Hard hit count"
    t.float    "HHV",       limit: 24,               null: false, comment: "Hard hit velo"
    t.float    "HHVT",      limit: 24, default: 0.0, null: false, comment: "Hard hi velo for tee"
    t.float    "MBRV",      limit: 24,               null: false, comment: "Max barrel velo"
    t.float    "ABRV",      limit: 24,               null: false, comment: "Avg barrel velo"
    t.float    "MIM",       limit: 24,               null: false, comment: "Max impact momentum"
    t.float    "AIM",       limit: 24,               null: false, comment: "Avg impact momentum"
    t.integer  "AB",        limit: 2,  default: 0,   null: false, comment: "At bats"
    t.integer  "SWT",       limit: 2,  default: 0,   null: false, comment: "1 - has swingtracker data"
    t.integer  "SCR",                  default: 0,   null: false, comment: "Point score"
    t.integer  "MPTS",                 default: 0,   null: false, comment: "Max points"
    t.integer  "VB",        limit: 2,                null: false, comment: "Velocity boost"
    t.index ["UsId", "UsUId"], name: "UsId", using: :btree
  end

  create_table "Teams", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                        null: false
    t.integer  "SId",                        null: false
    t.integer  "CompanyId",                  null: false
    t.datetime "TS"
    t.string   "Name",           limit: 120, null: false, collation: "utf8_unicode_ci"
    t.string   "GroupName",      limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.integer  "HomeStadium",                null: false
    t.integer  "SkillLevel",                 null: false
    t.integer  "GameType",                   null: false
    t.integer  "Active",                     null: false
    t.integer  "Player1_Id",                 null: false
    t.integer  "Player1_UnitId",             null: false
    t.integer  "Player2_Id",                 null: false
    t.integer  "Player2_UnitId",             null: false
    t.integer  "Player3_Id",                 null: false
    t.integer  "Player3_UnitId",             null: false
    t.integer  "Player4_Id",                 null: false
    t.integer  "Player4_UnitId",             null: false
    t.integer  "Player5_Id",                 null: false
    t.integer  "Player5_UnitId",             null: false
    t.integer  "Player6_Id",                 null: false
    t.integer  "Player6_UnitId",             null: false
    t.integer  "Player7_Id",                 null: false
    t.integer  "Player7_UnitId",             null: false
    t.integer  "Player8_Id",                 null: false
    t.integer  "Player8_UnitId",             null: false
    t.integer  "Player9_Id",                 null: false
    t.integer  "Player9_UnitId",             null: false
    t.integer  "Player1_Order",              null: false
    t.integer  "Player2_Order",              null: false
    t.integer  "Player3_Order",              null: false
    t.integer  "Player4_Order",              null: false
    t.integer  "Player5_Order",              null: false
    t.integer  "Player6_Order",              null: false
    t.integer  "Player7_Order",              null: false
    t.integer  "Player8_Order",              null: false
    t.integer  "Player9_Order",              null: false
  end

  create_table "TournamentLeaders", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                        default: 0,   null: false
    t.integer  "UId",                       default: 0,   null: false
    t.integer  "SId",                       default: 0,   null: false
    t.integer  "CId",                       default: 0,   null: false
    t.datetime "TS",                                      null: false
    t.datetime "Updated",                                 null: false
    t.string   "TournamentName", limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "TournamentId",              default: 0,   null: false
    t.integer  "TournamentUId",             default: 0,   null: false
    t.integer  "TournamentRId",             default: 0,   null: false
    t.string   "TeamName",       limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "TeamId",                    default: 0,   null: false
    t.integer  "TeamUId",                   default: 0,   null: false
    t.string   "PlayerName",     limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "PlayerId",                  default: 0,   null: false
    t.integer  "PlayerUId",                 default: 0,   null: false
    t.string   "UserName",       limit: 50,               null: false
    t.integer  "UserId",                    default: 0,   null: false
    t.integer  "UserUId",                   default: 0,   null: false
    t.integer  "AB_r",                      default: 0,   null: false
    t.integer  "R_r",                       default: 0,   null: false
    t.integer  "H_r",                       default: 0,   null: false
    t.integer  "EBH_r",                     default: 0,   null: false
    t.integer  "H2B_r",                     default: 0,   null: false
    t.integer  "H3B_r",                     default: 0,   null: false
    t.integer  "HR_r",                      default: 0,   null: false
    t.integer  "RBI_r",                     default: 0,   null: false
    t.integer  "SO_r",                      default: 0,   null: false
    t.float    "AVG_r",          limit: 24, default: 0.0, null: false
    t.float    "SLG_r",          limit: 24, default: 0.0, null: false
    t.float    "OPS_r",          limit: 24, default: 0.0, null: false
    t.float    "OBP_r",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_r",        limit: 24, default: 0.0, null: false
    t.float    "AV_r",           limit: 24, default: 0.0, null: false
    t.float    "MV_r",           limit: 24, default: 0.0, null: false
    t.float    "AD_r",           limit: 24, default: 0.0, null: false
    t.float    "MD_r",           limit: 24, default: 0.0, null: false
    t.integer  "AB_p",                      default: 0,   null: false
    t.integer  "R_p",                       default: 0,   null: false
    t.integer  "H_p",                       default: 0,   null: false
    t.integer  "EBH_p",                     default: 0,   null: false
    t.integer  "H2B_p",                     default: 0,   null: false
    t.integer  "H3B_p",                     default: 0,   null: false
    t.integer  "HR_p",                      default: 0,   null: false
    t.integer  "RBI_p",                     default: 0,   null: false
    t.integer  "SO_p",                      default: 0,   null: false
    t.float    "AVG_p",          limit: 24, default: 0.0, null: false
    t.float    "SLG_p",          limit: 24, default: 0.0, null: false
    t.float    "OPS_p",          limit: 24, default: 0.0, null: false
    t.float    "OBP_p",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_p",        limit: 24, default: 0.0, null: false
    t.float    "AV_p",           limit: 24, default: 0.0, null: false
    t.float    "MV_p",           limit: 24, default: 0.0, null: false
    t.float    "AD_p",           limit: 24, default: 0.0, null: false
    t.float    "MD_p",           limit: 24, default: 0.0, null: false
    t.integer  "AB_b",                      default: 0,   null: false
    t.integer  "R_b",                       default: 0,   null: false
    t.integer  "H_b",                       default: 0,   null: false
    t.integer  "EBH_b",                     default: 0,   null: false
    t.integer  "H2B_b",                     default: 0,   null: false
    t.integer  "H3B_b",                     default: 0,   null: false
    t.integer  "HR_b",                      default: 0,   null: false
    t.integer  "RBI_b",                     default: 0,   null: false
    t.integer  "SO_b",                      default: 0,   null: false
    t.float    "AVG_b",          limit: 24, default: 0.0, null: false
    t.float    "SLG_b",          limit: 24, default: 0.0, null: false
    t.float    "OPS_b",          limit: 24, default: 0.0, null: false
    t.float    "OBP_b",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_b",        limit: 24, default: 0.0, null: false
    t.float    "AV_b",           limit: 24, default: 0.0, null: false
    t.float    "MV_b",           limit: 24, default: 0.0, null: false
    t.float    "AD_b",           limit: 24, default: 0.0, null: false
    t.float    "MD_b",           limit: 24, default: 0.0, null: false
  end

  create_table "TournamentTeamStats", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT" do |t|
    t.integer  "Id",                        default: 0,   null: false
    t.integer  "UId",                       default: 0,   null: false
    t.integer  "SId",                       default: 0,   null: false
    t.integer  "CId",                       default: 0,   null: false
    t.datetime "TS",                                      null: false
    t.datetime "Updated",                                 null: false
    t.string   "TournamentName", limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "TournamentId",              default: 0,   null: false
    t.integer  "TournamentUId",             default: 0,   null: false
    t.integer  "TournamentRId",             default: 0,   null: false
    t.string   "TeamName",       limit: 50,               null: false, collation: "utf8_unicode_ci"
    t.integer  "TeamId",                    default: 0,   null: false
    t.integer  "TeamUId",                   default: 0,   null: false
    t.integer  "InPlayoffs",                default: 0,   null: false
    t.integer  "Rating_r",                  default: 0,   null: false
    t.integer  "Wins_r",                    default: 0,   null: false
    t.integer  "Losses_r",                  default: 0,   null: false
    t.integer  "Ties_r",                    default: 0,   null: false
    t.float    "WinP_r",         limit: 24, default: 0.0, null: false
    t.integer  "AB_r",                      default: 0,   null: false
    t.integer  "H_r",                       default: 0,   null: false
    t.integer  "R_r",                       default: 0,   null: false
    t.integer  "EBH_r",                     default: 0,   null: false
    t.integer  "H2B_r",                     default: 0,   null: false
    t.integer  "H3B_r",                     default: 0,   null: false
    t.integer  "HR_r",                      default: 0,   null: false
    t.integer  "RBI_r",                     default: 0,   null: false
    t.integer  "SO_r",                      default: 0,   null: false
    t.float    "AVG_r",          limit: 24, default: 0.0, null: false
    t.float    "SLG_r",          limit: 24, default: 0.0, null: false
    t.float    "OPS_r",          limit: 24, default: 0.0, null: false
    t.float    "OBP_r",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_r",        limit: 24, default: 0.0, null: false
    t.integer  "Rating_p",                  default: 0,   null: false
    t.integer  "Wins_p",                    default: 0,   null: false
    t.integer  "Losses_p",                  default: 0,   null: false
    t.integer  "Ties_p",                    default: 0,   null: false
    t.float    "WinP_p",         limit: 24, default: 0.0, null: false
    t.integer  "AB_p",                      default: 0,   null: false
    t.integer  "R_p",                       default: 0,   null: false
    t.integer  "H_p",                       default: 0,   null: false
    t.integer  "EBH_p",                     default: 0,   null: false
    t.integer  "H2B_p",                     default: 0,   null: false
    t.integer  "H3B_p",                     default: 0,   null: false
    t.integer  "HR_p",                      default: 0,   null: false
    t.integer  "RBI_p",                     default: 0,   null: false
    t.integer  "SO_p",                      default: 0,   null: false
    t.float    "AVG_p",          limit: 24, default: 0.0, null: false
    t.float    "SLG_p",          limit: 24, default: 0.0, null: false
    t.float    "OPS_p",          limit: 24, default: 0.0, null: false
    t.float    "OBP_p",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_p",        limit: 24, default: 0.0, null: false
    t.integer  "Rating_b",                  default: 0,   null: false
    t.integer  "Wins_b",                    default: 0,   null: false
    t.integer  "Losses_b",                  default: 0,   null: false
    t.integer  "Ties_b",                    default: 0,   null: false
    t.float    "WinP_b",         limit: 24, default: 0.0, null: false
    t.integer  "AB_b",                      default: 0,   null: false
    t.integer  "R_b",                       default: 0,   null: false
    t.integer  "H_b",                       default: 0,   null: false
    t.integer  "EBH_b",                     default: 0,   null: false
    t.integer  "H2B_b",                     default: 0,   null: false
    t.integer  "H3B_b",                     default: 0,   null: false
    t.integer  "HR_b",                      default: 0,   null: false
    t.integer  "RBI_b",                     default: 0,   null: false
    t.integer  "SO_b",                      default: 0,   null: false
    t.float    "AVG_b",          limit: 24, default: 0.0, null: false
    t.float    "SLG_b",          limit: 24, default: 0.0, null: false
    t.float    "OPS_b",          limit: 24, default: 0.0, null: false
    t.float    "OBP_b",          limit: 24, default: 0.0, null: false
    t.float    "BARSP_b",        limit: 24, default: 0.0, null: false
  end

  create_table "Tournaments", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id"
    t.integer  "UId",                                            null: false
    t.integer  "SId",                                            null: false
    t.integer  "CompanyId",                                      null: false
    t.integer  "RemoteId",                           default: 0, null: false
    t.integer  "PlayoffType",                                    null: false
    t.string   "Name",                    limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.datetime "TS"
    t.date     "StartDate"
    t.integer  "Finished",                                       null: false
    t.integer  "Format",                                         null: false
    t.integer  "WinnerId",                                       null: false
    t.integer  "WinnerUnitId",                                   null: false
    t.integer  "PostToWeb",                          default: 0, null: false
    t.integer  "Team1_Id",                                       null: false
    t.integer  "Team2_Id",                                       null: false
    t.integer  "Team3_Id",                                       null: false
    t.integer  "Team4_Id",                                       null: false
    t.integer  "Team5_Id",                                       null: false
    t.integer  "Team6_Id",                                       null: false
    t.integer  "Team7_Id",                                       null: false
    t.integer  "Team8_Id",                                       null: false
    t.integer  "Team9_Id",                                       null: false
    t.integer  "Team10_Id",                                      null: false
    t.integer  "Team11_Id",                                      null: false
    t.integer  "Team12_Id",                                      null: false
    t.integer  "Team13_Id",                                      null: false
    t.integer  "Team14_Id",                                      null: false
    t.integer  "Team15_Id",                                      null: false
    t.integer  "Team16_Id",                                      null: false
    t.integer  "Team17_Id",                                      null: false
    t.integer  "Team18_Id",                                      null: false
    t.integer  "Team1_UnitId",                                   null: false
    t.integer  "Team2_UnitId",                                   null: false
    t.integer  "Team3_UnitId",                                   null: false
    t.integer  "Team4_UnitId",                                   null: false
    t.integer  "Team5_UnitId",                                   null: false
    t.integer  "Team6_UnitId",                                   null: false
    t.integer  "Team7_UnitId",                                   null: false
    t.integer  "Team8_UnitId",                                   null: false
    t.integer  "Team9_UnitId",                                   null: false
    t.integer  "Team10_UnitId",                                  null: false
    t.integer  "Team11_UnitId",                                  null: false
    t.integer  "Team12_UnitId",                                  null: false
    t.integer  "Team13_UnitId",                                  null: false
    t.integer  "Team14_UnitId",                                  null: false
    t.integer  "Team15_UnitId",                                  null: false
    t.integer  "Team16_UnitId",                                  null: false
    t.integer  "Team17_UnitId",                                  null: false
    t.integer  "Team18_UnitId",                                  null: false
    t.integer  "Playoff_Team_1",                                 null: false
    t.integer  "Playoff_Team_2",                                 null: false
    t.integer  "Playoff_Team_3",                                 null: false
    t.integer  "Playoff_Team_4",                                 null: false
    t.integer  "Playoff_Team_5",                                 null: false
    t.integer  "Playoff_Team_6",                                 null: false
    t.integer  "Playoff_Team_7",                                 null: false
    t.integer  "Playoff_Team_8",                                 null: false
    t.integer  "Playoff_Team_9",                                 null: false
    t.integer  "Playoff_Team_10",                                null: false
    t.integer  "Round1_Game1_Id",                                null: false
    t.integer  "Round1_Game2_Id",                                null: false
    t.integer  "Round1_Game3_Id",                                null: false
    t.integer  "Round1_Game4_Id",                                null: false
    t.integer  "Round1_Game5_Id",                                null: false
    t.integer  "Round2_Game1_Id",                                null: false
    t.integer  "Round2_Game2_Id",                                null: false
    t.integer  "Round2_Game3_Id",                                null: false
    t.integer  "Round2_Game4_Id",                                null: false
    t.integer  "Round2_Game5_Id",                                null: false
    t.integer  "Round3_Game1_Id",                                null: false
    t.integer  "Round3_Game2_Id",                                null: false
    t.integer  "Round3_Game3_Id",                                null: false
    t.integer  "Round3_Game4_Id",                                null: false
    t.integer  "Round3_Game5_Id",                                null: false
    t.integer  "Round4_Game1_Id",                                null: false
    t.integer  "Round4_Game2_Id",                                null: false
    t.integer  "Round4_Game3_Id",                                null: false
    t.integer  "Round4_Game4_Id",                                null: false
    t.integer  "Round4_Game5_Id",                                null: false
    t.integer  "Round5_Game1_Id",                                null: false
    t.integer  "Round5_Game2_Id",                                null: false
    t.integer  "Round5_Game3_Id",                                null: false
    t.integer  "Round5_Game4_Id",                                null: false
    t.integer  "Round5_Game5_Id",                                null: false
    t.integer  "Round6_Game1_Id",                                null: false
    t.integer  "Round6_Game2_Id",                                null: false
    t.integer  "Round6_Game3_Id",                                null: false
    t.integer  "Round6_Game4_Id",                                null: false
    t.integer  "Round6_Game5_Id",                                null: false
    t.integer  "Round7_Game1_Id",                                null: false
    t.integer  "Round7_Game2_Id",                                null: false
    t.integer  "Round7_Game3_Id",                                null: false
    t.integer  "Round7_Game4_Id",                                null: false
    t.integer  "Round7_Game5_Id",                                null: false
    t.integer  "Round8_Game1_Id",                                null: false
    t.integer  "Round8_Game2_Id",                                null: false
    t.integer  "Round8_Game3_Id",                                null: false
    t.integer  "Round8_Game4_Id",                                null: false
    t.integer  "Round8_Game5_Id",                                null: false
    t.integer  "Round9_Game1_Id",                                null: false
    t.integer  "Round9_Game2_Id",                                null: false
    t.integer  "Round9_Game3_Id",                                null: false
    t.integer  "Round9_Game4_Id",                                null: false
    t.integer  "Round9_Game5_Id",                                null: false
    t.integer  "Round10_Game1_Id",                               null: false
    t.integer  "Round10_Game2_Id",                               null: false
    t.integer  "Round10_Game3_Id",                               null: false
    t.integer  "Round1_Game1_UnitId",                            null: false
    t.integer  "Round1_Game2_UnitId",                            null: false
    t.integer  "Round1_Game3_UnitId",                            null: false
    t.integer  "Round1_Game4_UnitId",                            null: false
    t.integer  "Round1_Game5_UnitId",                            null: false
    t.integer  "Round2_Game1_UnitId",                            null: false
    t.integer  "Round2_Game2_UnitId",                            null: false
    t.integer  "Round2_Game3_UnitId",                            null: false
    t.integer  "Round2_Game4_UnitId",                            null: false
    t.integer  "Round2_Game5_UnitId",                            null: false
    t.integer  "Round3_Game1_UnitId",                            null: false
    t.integer  "Round3_Game2_UnitId",                            null: false
    t.integer  "Round3_Game3_UnitId",                            null: false
    t.integer  "Round3_Game4_UnitId",                            null: false
    t.integer  "Round3_Game5_UnitId",                            null: false
    t.integer  "Round4_Game1_UnitId",                            null: false
    t.integer  "Round4_Game2_UnitId",                            null: false
    t.integer  "Round4_Game3_UnitId",                            null: false
    t.integer  "Round4_Game4_UnitId",                            null: false
    t.integer  "Round4_Game5_UnitId",                            null: false
    t.integer  "Round5_Game1_UnitId",                            null: false
    t.integer  "Round5_Game2_UnitId",                            null: false
    t.integer  "Round5_Game3_UnitId",                            null: false
    t.integer  "Round5_Game4_UnitId",                            null: false
    t.integer  "Round5_Game5_UnitId",                            null: false
    t.integer  "Round6_Game1_UnitId",                            null: false
    t.integer  "Round6_Game2_UnitId",                            null: false
    t.integer  "Round6_Game3_UnitId",                            null: false
    t.integer  "Round6_Game4_UnitId",                            null: false
    t.integer  "Round6_Game5_UnitId",                            null: false
    t.integer  "Round7_Game1_UnitId",                            null: false
    t.integer  "Round7_Game2_UnitId",                            null: false
    t.integer  "Round7_Game3_UnitId",                            null: false
    t.integer  "Round7_Game4_UnitId",                            null: false
    t.integer  "Round7_Game5_UnitId",                            null: false
    t.integer  "Round8_Game1_UnitId",                            null: false
    t.integer  "Round8_Game2_UnitId",                            null: false
    t.integer  "Round8_Game3_UnitId",                            null: false
    t.integer  "Round8_Game4_UnitId",                            null: false
    t.integer  "Round8_Game5_UnitId",                            null: false
    t.integer  "Round9_Game1_UnitId",                            null: false
    t.integer  "Round9_Game2_UnitId",                            null: false
    t.integer  "Round9_Game3_UnitId",                            null: false
    t.integer  "Round9_Game4_UnitId",                            null: false
    t.integer  "Round9_Game5_UnitId",                            null: false
    t.integer  "Round10_Game1_UnitId",                           null: false
    t.integer  "Round10_Game2_UnitId",                           null: false
    t.integer  "Round10_Game3_UnitId",                           null: false
    t.integer  "Playoff1_Game1_Id",                              null: false
    t.integer  "Playoff1_Game2_Id",                              null: false
    t.integer  "Playoff1_Game3_Id",                              null: false
    t.integer  "Playoff1_Game4_Id",                              null: false
    t.integer  "Playoff1_Game5_Id",                              null: false
    t.integer  "Playoff1_Game6_Id",                              null: false
    t.integer  "Playoff1_Game7_Id",                              null: false
    t.integer  "Playoff1_Game8_Id",                              null: false
    t.integer  "Playoff1_Game9_Id",                              null: false
    t.integer  "Playoff1_Game10_Id",                             null: false
    t.integer  "Playoff1_Game11_Id",                             null: false
    t.integer  "Playoff1_Game12_Id",                             null: false
    t.integer  "Playoff1_Game13_Id",                             null: false
    t.integer  "Playoff1_Game14_Id",                             null: false
    t.integer  "Playoff1_Game15_Id",                             null: false
    t.integer  "Playoff1_Game16_Id",                             null: false
    t.integer  "Playoff1_Game17_Id",                             null: false
    t.integer  "Playoff1_Game18_Id",                             null: false
    t.integer  "Playoff1_Game19_Id",                             null: false
    t.integer  "Playoff1_Game20_Id",                             null: false
    t.integer  "Playoff1_Game21_Id",                             null: false
    t.integer  "Playoff1_Game22_Id",                             null: false
    t.integer  "Playoff1_Game23_Id",                             null: false
    t.integer  "Playoff1_Game24_Id",                             null: false
    t.integer  "Playoff1_Game25_Id",                             null: false
    t.integer  "Playoff1_Game26_Id",                             null: false
    t.integer  "Playoff1_Game27_Id",                             null: false
    t.integer  "Playoff1_Game28_Id",                             null: false
    t.integer  "Playoff1_Game29_Id",                             null: false
    t.integer  "Playoff1_Game30_Id",                             null: false
    t.integer  "Playoff2_Game1_Id",                              null: false
    t.integer  "Playoff2_Game2_Id",                              null: false
    t.integer  "Playoff3_Game1_Id",                              null: false
    t.integer  "Playoff1_Game1_UnitId",                          null: false
    t.integer  "Playoff1_Game2_UnitId",                          null: false
    t.integer  "Playoff1_Game3_UnitId",                          null: false
    t.integer  "Playoff1_Game4_UnitId",                          null: false
    t.integer  "Playoff1_Game5_UnitId",                          null: false
    t.integer  "Playoff1_Game6_UnitId",                          null: false
    t.integer  "Playoff1_Game7_UnitId",                          null: false
    t.integer  "Playoff1_Game8_UnitId",                          null: false
    t.integer  "Playoff1_Game9_UnitId",                          null: false
    t.integer  "Playoff1_Game10_UnitId",                         null: false
    t.integer  "Playoff1_Game11_UnitId",                         null: false
    t.integer  "Playoff1_Game12_UnitId",                         null: false
    t.integer  "Playoff1_Game13_UnitId",                         null: false
    t.integer  "Playoff1_Game14_UnitId",                         null: false
    t.integer  "Playoff1_Game15_UnitId",                         null: false
    t.integer  "Playoff1_Game16_UnitId",                         null: false
    t.integer  "Playoff1_Game17_UnitId",                         null: false
    t.integer  "Playoff1_Game18_UnitId",                         null: false
    t.integer  "Playoff1_Game19_UnitId",                         null: false
    t.integer  "Playoff1_Game20_UnitId",                         null: false
    t.integer  "Playoff1_Game21_UnitId",                         null: false
    t.integer  "Playoff1_Game22_UnitId",                         null: false
    t.integer  "Playoff1_Game23_UnitId",                         null: false
    t.integer  "Playoff1_Game25_UnitId",                         null: false
    t.integer  "Playoff1_Game24_UnitId",                         null: false
    t.integer  "Playoff1_Game26_UnitId",                         null: false
    t.integer  "Playoff1_Game27_UnitId",                         null: false
    t.integer  "Playoff1_Game28_UnitId",                         null: false
    t.integer  "Playoff1_Game29_UnitId",                         null: false
    t.integer  "Playoff1_Game30_UnitId",                         null: false
    t.integer  "Playoff2_Game1_UnitId",                          null: false
    t.integer  "Playoff2_Game2_UnitId",                          null: false
    t.integer  "Playoff3_Game1_UnitId",                          null: false
    t.integer  "Tiebreaker_Game1_Id",                            null: false
    t.integer  "Tiebreaker_Game1_UnitId",                        null: false
    t.integer  "Tiebreaker_Game2_Id",                            null: false
    t.integer  "Tiebreaker_Game2_UnitId",                        null: false
    t.integer  "Tiebreaker_Game3_Id",                            null: false
    t.integer  "Tiebreaker_Game3_UnitId",                        null: false
    t.integer  "Tiebreaker_Game4_Id",                            null: false
    t.integer  "Tiebreaker_Game4_UnitId",                        null: false
    t.integer  "Tiebreaker_Game5_Id",                            null: false
    t.integer  "Tiebreaker_Game5_UnitId",                        null: false
    t.integer  "RoundM_Game1_Id",                                null: false
    t.integer  "RoundM_Game2_Id",                                null: false
    t.integer  "RoundM_Game3_Id",                                null: false
    t.integer  "RoundM_Game4_Id",                                null: false
    t.integer  "RoundM_Game5_Id",                                null: false
    t.integer  "RoundM_Game6_Id",                                null: false
    t.integer  "RoundM_Game7_Id",                                null: false
    t.integer  "RoundM_Game8_Id",                                null: false
    t.integer  "RoundM_Game9_Id",                                null: false
    t.integer  "RoundM_Game10_Id",                               null: false
    t.integer  "RoundM_Game11_Id",                               null: false
    t.integer  "RoundM_Game12_Id",                               null: false
    t.integer  "RoundM_Game13_Id",                               null: false
    t.integer  "RoundM_Game14_Id",                               null: false
    t.integer  "RoundM_Game15_Id",                               null: false
    t.integer  "RoundM_Game16_Id",                               null: false
    t.integer  "RoundM_Game17_Id",                               null: false
    t.integer  "RoundM_Game18_Id",                               null: false
    t.integer  "RoundM_Game19_Id",                               null: false
    t.integer  "RoundM_Game20_Id",                               null: false
    t.integer  "RoundM_Game21_Id",                               null: false
    t.integer  "RoundM_Game22_Id",                               null: false
    t.integer  "RoundM_Game23_Id",                               null: false
    t.integer  "RoundM_Game24_Id",                               null: false
    t.integer  "RoundM_Game25_Id",                               null: false
    t.integer  "RoundM_Game26_Id",                               null: false
    t.integer  "RoundM_Game27_Id",                               null: false
    t.integer  "RoundM_Game28_Id",                               null: false
    t.integer  "RoundM_Game29_Id",                               null: false
    t.integer  "RoundM_Game30_Id",                               null: false
    t.integer  "RoundM_Game31_Id",                               null: false
    t.integer  "RoundM_Game32_Id",                               null: false
    t.integer  "RoundM_Game33_Id",                               null: false
    t.integer  "RoundM_Game34_Id",                               null: false
    t.integer  "RoundM_Game35_Id",                               null: false
    t.integer  "RoundM_Game36_Id",                               null: false
    t.integer  "RoundM_Game37_Id",                               null: false
    t.integer  "RoundM_Game38_Id",                               null: false
    t.integer  "RoundM_Game39_Id",                               null: false
    t.integer  "RoundM_Game40_Id",                               null: false
    t.integer  "RoundM_Game41_Id",                               null: false
    t.integer  "RoundM_Game42_Id",                               null: false
    t.integer  "RoundM_Game43_Id",                               null: false
    t.integer  "RoundM_Game44_Id",                               null: false
    t.integer  "RoundM_Game45_Id",                               null: false
    t.integer  "RoundM_Game46_Id",                               null: false
    t.integer  "RoundM_Game47_Id",                               null: false
    t.integer  "RoundM_Game48_Id",                               null: false
    t.integer  "RoundM_Game49_Id",                               null: false
    t.integer  "RoundM_Game50_Id",                               null: false
    t.integer  "RoundM_Game51_Id",                               null: false
    t.integer  "RoundM_Game52_Id",                               null: false
    t.integer  "RoundM_Game53_Id",                               null: false
    t.integer  "RoundM_Game54_Id",                               null: false
    t.integer  "RoundM_Game55_Id",                               null: false
    t.integer  "RoundM_Game56_Id",                               null: false
    t.integer  "RoundM_Game57_Id",                               null: false
    t.integer  "RoundM_Game58_Id",                               null: false
    t.integer  "RoundM_Game59_Id",                               null: false
    t.integer  "RoundM_Game60_Id",                               null: false
    t.integer  "RoundM_Game61_Id",                               null: false
    t.integer  "RoundM_Game62_Id",                               null: false
    t.integer  "RoundM_Game63_Id",                               null: false
    t.integer  "RoundM_Game64_Id",                               null: false
    t.integer  "RoundM_Game65_Id",                               null: false
    t.integer  "RoundM_Game66_Id",                               null: false
    t.integer  "RoundM_Game67_Id",                               null: false
    t.integer  "RoundM_Game68_Id",                               null: false
    t.integer  "RoundM_Game69_Id",                               null: false
    t.integer  "RoundM_Game70_Id",                               null: false
    t.integer  "RoundM_Game71_Id",                               null: false
    t.integer  "RoundM_Game72_Id",                               null: false
    t.integer  "RoundM_Game73_Id",                               null: false
    t.integer  "RoundM_Game74_Id",                               null: false
    t.integer  "RoundM_Game75_Id",                               null: false
    t.integer  "RoundM_Game76_Id",                               null: false
    t.integer  "RoundM_Game77_Id",                               null: false
    t.integer  "RoundM_Game78_Id",                               null: false
    t.integer  "RoundM_Game79_Id",                               null: false
    t.integer  "RoundM_Game80_Id",                               null: false
    t.integer  "RoundM_Game81_Id",                               null: false
    t.integer  "RoundM_Game82_Id",                               null: false
    t.integer  "RoundM_Game83_Id",                               null: false
    t.integer  "RoundM_Game84_Id",                               null: false
    t.integer  "RoundM_Game85_Id",                               null: false
    t.integer  "RoundM_Game86_Id",                               null: false
    t.integer  "RoundM_Game87_Id",                               null: false
    t.integer  "RoundM_Game88_Id",                               null: false
    t.integer  "RoundM_Game89_Id",                               null: false
    t.integer  "RoundM_Game90_Id",                               null: false
    t.integer  "RoundM_Game91_Id",                               null: false
    t.integer  "RoundM_Game92_Id",                               null: false
    t.integer  "RoundM_Game93_Id",                               null: false
    t.integer  "RoundM_Game94_Id",                               null: false
    t.integer  "RoundM_Game95_Id",                               null: false
    t.integer  "RoundM_Game96_Id",                               null: false
    t.integer  "RoundM_Game97_Id",                               null: false
    t.integer  "RoundM_Game98_Id",                               null: false
    t.integer  "RoundM_Game99_Id",                               null: false
    t.integer  "RoundM_Game100_Id",                              null: false
    t.integer  "RoundM_Game1_UnitId",                            null: false
    t.integer  "RoundM_Game2_UnitId",                            null: false
    t.integer  "RoundM_Game3_UnitId",                            null: false
    t.integer  "RoundM_Game4_UnitId",                            null: false
    t.integer  "RoundM_Game5_UnitId",                            null: false
    t.integer  "RoundM_Game6_UnitId",                            null: false
    t.integer  "RoundM_Game7_UnitId",                            null: false
    t.integer  "RoundM_Game8_UnitId",                            null: false
    t.integer  "RoundM_Game9_UnitId",                            null: false
    t.integer  "RoundM_Game10_UnitId",                           null: false
    t.integer  "RoundM_Game11_UnitId",                           null: false
    t.integer  "RoundM_Game12_UnitId",                           null: false
    t.integer  "RoundM_Game13_UnitId",                           null: false
    t.integer  "RoundM_Game14_UnitId",                           null: false
    t.integer  "RoundM_Game15_UnitId",                           null: false
    t.integer  "RoundM_Game16_UnitId",                           null: false
    t.integer  "RoundM_Game17_UnitId",                           null: false
    t.integer  "RoundM_Game18_UnitId",                           null: false
    t.integer  "RoundM_Game19_UnitId",                           null: false
    t.integer  "RoundM_Game20_UnitId",                           null: false
    t.integer  "RoundM_Game21_UnitId",                           null: false
    t.integer  "RoundM_Game22_UnitId",                           null: false
    t.integer  "RoundM_Game23_UnitId",                           null: false
    t.integer  "RoundM_Game24_UnitId",                           null: false
    t.integer  "RoundM_Game25_UnitId",                           null: false
    t.integer  "RoundM_Game26_UnitId",                           null: false
    t.integer  "RoundM_Game27_UnitId",                           null: false
    t.integer  "RoundM_Game28_UnitId",                           null: false
    t.integer  "RoundM_Game29_UnitId",                           null: false
    t.integer  "RoundM_Game30_UnitId",                           null: false
    t.integer  "RoundM_Game31_UnitId",                           null: false
    t.integer  "RoundM_Game32_UnitId",                           null: false
    t.integer  "RoundM_Game33_UnitId",                           null: false
    t.integer  "RoundM_Game34_UnitId",                           null: false
    t.integer  "RoundM_Game35_UnitId",                           null: false
    t.integer  "RoundM_Game40_UnitId",                           null: false
    t.integer  "RoundM_Game36_UnitId",                           null: false
    t.integer  "RoundM_Game37_UnitId",                           null: false
    t.integer  "RoundM_Game38_UnitId",                           null: false
    t.integer  "RoundM_Game39_UnitId",                           null: false
    t.integer  "RoundM_Game42_UnitId",                           null: false
    t.integer  "RoundM_Game41_UnitId",                           null: false
    t.integer  "RoundM_Game43_UnitId",                           null: false
    t.integer  "RoundM_Game44_UnitId",                           null: false
    t.integer  "RoundM_Game45_UnitId",                           null: false
    t.integer  "RoundM_Game46_UnitId",                           null: false
    t.integer  "RoundM_Game47_UnitId",                           null: false
    t.integer  "RoundM_Game48_UnitId",                           null: false
    t.integer  "RoundM_Game49_UnitId",                           null: false
    t.integer  "RoundM_Game50_UnitId",                           null: false
    t.integer  "RoundM_Game51_UnitId",                           null: false
    t.integer  "RoundM_Game52_UnitId",                           null: false
    t.integer  "RoundM_Game53_UnitId",                           null: false
    t.integer  "RoundM_Game54_UnitId",                           null: false
    t.integer  "RoundM_Game55_UnitId",                           null: false
    t.integer  "RoundM_Game56_UnitId",                           null: false
    t.integer  "RoundM_Game57_UnitId",                           null: false
    t.integer  "RoundM_Game58_UnitId",                           null: false
    t.integer  "RoundM_Game59_UnitId",                           null: false
    t.integer  "RoundM_Game60_UnitId",                           null: false
    t.integer  "RoundM_Game61_UnitId",                           null: false
    t.integer  "RoundM_Game62_UnitId",                           null: false
    t.integer  "RoundM_Game63_UnitId",                           null: false
    t.integer  "RoundM_Game64_UnitId",                           null: false
    t.integer  "RoundM_Game65_UnitId",                           null: false
    t.integer  "RoundM_Game66_UnitId",                           null: false
    t.integer  "RoundM_Game67_UnitId",                           null: false
    t.integer  "RoundM_Game68_UnitId",                           null: false
    t.integer  "RoundM_Game69_UnitId",                           null: false
    t.integer  "RoundM_Game70_UnitId",                           null: false
    t.integer  "RoundM_Game71_UnitId",                           null: false
    t.integer  "RoundM_Game72_UnitId",                           null: false
    t.integer  "RoundM_Game73_UnitId",                           null: false
    t.integer  "RoundM_Game74_UnitId",                           null: false
    t.integer  "RoundM_Game75_UnitId",                           null: false
    t.integer  "RoundM_Game76_UnitId",                           null: false
    t.integer  "RoundM_Game77_UnitId",                           null: false
    t.integer  "RoundM_Game78_UnitId",                           null: false
    t.integer  "RoundM_Game79_UnitId",                           null: false
    t.integer  "RoundM_Game80_UnitId",                           null: false
    t.integer  "RoundM_Game81_UnitId",                           null: false
    t.integer  "RoundM_Game82_UnitId",                           null: false
    t.integer  "RoundM_Game83_UnitId",                           null: false
    t.integer  "RoundM_Game84_UnitId",                           null: false
    t.integer  "RoundM_Game85_UnitId",                           null: false
    t.integer  "RoundM_Game86_UnitId",                           null: false
    t.integer  "RoundM_Game87_UnitId",                           null: false
    t.integer  "RoundM_Game88_UnitId",                           null: false
    t.integer  "RoundM_Game89_UnitId",                           null: false
    t.integer  "RoundM_Game90_UnitId",                           null: false
    t.integer  "RoundM_Game91_UnitId",                           null: false
    t.integer  "RoundM_Game92_UnitId",                           null: false
    t.integer  "RoundM_Game93_UnitId",                           null: false
    t.integer  "RoundM_Game94_UnitId",                           null: false
    t.integer  "RoundM_Game95_UnitId",                           null: false
    t.integer  "RoundM_Game96_UnitId",                           null: false
    t.integer  "RoundM_Game97_UnitId",                           null: false
    t.integer  "RoundM_Game98_UnitId",                           null: false
    t.integer  "RoundM_Game99_UnitId",                           null: false
    t.integer  "RoundM_Game100_UnitId",                          null: false
  end

  create_table "UserMembershipAudit", primary_key: "ID", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "MasterID",       limit: 20, default: ""
    t.string   "CompanyID",      limit: 20, default: ""
    t.string   "OptionSelected", limit: 50
    t.string   "Price",          limit: 10
    t.datetime "CreatedOn"
  end

  create_table "Users", primary_key: "MasterID", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "Id",                                                                      null: false
    t.integer  "UId",                                                                     null: false
    t.integer  "SId",                                                                     null: false
    t.integer  "CompanyId",                                                               null: false
    t.integer  "Local",                                                                   null: false
    t.integer  "Role",                                    default: 0,                     null: false
    t.string   "Consent",                      limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.integer  "Active",                                  default: 1,                     null: false
    t.string   "Uuid",                         limit: 50,                                 null: false
    t.integer  "Disable",                                 default: 0,                     null: false
    t.string   "FirstName",                    limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.string   "LastName",                     limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.string   "UserName",                     limit: 50,                                              collation: "utf8_unicode_ci"
    t.string   "Hash",                         limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.datetime "TS"
    t.datetime "Updated",                                 default: '1900-01-01 00:00:00', null: false
    t.string   "Email",                        limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.string   "Email2",                       limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.string   "DKEmail",                      limit: 50,                                 null: false, collation: "utf8_unicode_ci"
    t.string   "ScreenName",                   limit: 50,                                              collation: "utf8_unicode_ci"
    t.string   "resetToken",                   limit: 50
    t.integer  "Stadium",                                                                 null: false
    t.integer  "SkillLevel",                                                              null: false
    t.integer  "GameType",                                                                null: false
    t.integer  "Gender",                                  default: 0,                     null: false
    t.integer  "Bats",                                    default: 0,                     null: false
    t.integer  "Throws",                                  default: 0,                     null: false
    t.integer  "Position",                                default: 0,                     null: false
    t.integer  "GraduationYear",                          default: 0,                     null: false
    t.float    "Height",                       limit: 24
    t.float    "HHVel",                        limit: 24
    t.string   "School",                       limit: 50,                                              collation: "utf8_unicode_ci"
    t.string   "HomeTown",                     limit: 50,                                              collation: "utf8_unicode_ci"
    t.integer  "Certified",                               default: 0,                     null: false
    t.datetime "BirthDate",                               default: '1900-01-01 00:00:00', null: false
    t.datetime "SubscriptionStart"
    t.integer  "SubscriptionType",                        default: 0
    t.integer  "SubscriptionLevel",            limit: 2,  default: 0,                     null: false
    t.datetime "Subscription"
    t.integer  "AuthorizeNetProfileID"
    t.integer  "AuthorizeNetPaymentProfileID"
    t.string   "EmailSent",                    limit: 1,  default: "N"
    t.string   "SubscriptionLevelPurchased",   limit: 50
    t.string   "Subscribe",                    limit: 1,  default: "Y"
    t.string   "MembershipThruFacility",       limit: 1,  default: "N"
    t.datetime "Last MailChimp Update"
    t.string   "InvalidEmail",                 limit: 1
    t.string   "auth_token"
    t.index ["CompanyId"], name: "IndexCId", using: :btree
    t.index ["SId"], name: "IndexSId", using: :btree
  end

  create_table "Zip_Code", unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "zip"
    t.string  "latitude",  limit: 20
    t.string  "longitude", limit: 20
  end

  create_table "remote_tournaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "company_id",                                                  null: false
    t.integer  "playoff_type",                                                null: false
    t.string   "name",             limit: 50, default: "",                    null: false
    t.datetime "start_date",                  default: '2017-02-06 19:11:47', null: false
    t.integer  "finished",                    default: 0,                     null: false
    t.integer  "format",                                                      null: false
    t.datetime "TS",                                                          null: false
    t.datetime "updated_at",                                                  null: false
    t.string   "winner_master_id"
  end

  create_table "remote_tournaments_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "remote_tournament_id"
    t.integer "team_id"
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "game_time"
    t.string   "away_team_id"
    t.string   "home_team_id"
    t.integer  "remote_tournament_id"
    t.datetime "TS",                   null: false
    t.datetime "updated_at",           null: false
    t.string   "UUId"
  end

  create_table "tournament_invites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "remote_tournament_id"
    t.integer  "facility_id"
    t.integer  "accepted",             default: 0
    t.datetime "TS",                               null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "tournament_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "remote_tournament_id", null: false
    t.datetime "TS",                   null: false
    t.datetime "updated_at",           null: false
    t.string   "team_master_id"
    t.string   "team_name"
  end

end
