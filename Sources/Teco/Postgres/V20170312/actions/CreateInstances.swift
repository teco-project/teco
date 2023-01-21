//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Postgres {
    /// CreateInstances请求参数结构体
    public struct CreateInstancesRequest: TCRequestModel {
        /// 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        public let specCode: String

        /// 实例容量大小，单位：GB。
        public let storage: UInt64

        /// 一次性购买的实例数量。取值1-10。
        public let instanceCount: UInt64

        /// 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        public let period: UInt64

        /// 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        public let zone: String

        /// 实例字符集，目前只支持：UTF8、LATIN1。
        public let charset: String

        /// 实例根账号用户名。
        public let adminName: String

        /// 实例根账号用户名对应的密码。
        public let adminPassword: String

        /// 项目ID。
        public let projectId: Int64?

        /// PostgreSQL版本。当输入该参数时，会基于此版本创建对应的最新内核版本号实例。该参数和DBMajorVersion、DBKernelVersion至少需要传递一个。
        public let dbVersion: String?

        /// 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。
        public let instanceChargeType: String?

        /// 是否自动使用代金券。1（是），0（否），默认不使用。
        public let autoVoucher: UInt64?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 私有网络ID。
        public let vpcId: String?

        /// 已配置的私有网络中的子网ID。
        public let subnetId: String?

        /// 续费标记：0-正常续费（默认）；1-自动续费。
        public let autoRenewFlag: Int64?

        /// 活动ID。
        public let activityId: Int64?

        /// 实例名。
        public let name: String?

        /// 是否需要支持Ipv6，1：是，0：否（默认）。
        public let needSupportIpv6: UInt64?

        /// 实例需要绑定的Tag信息，默认为空。
        public let tagList: [Tag]?

        /// 安全组ID。
        public let securityGroupIds: [String]?

        /// PostgreSQL主要版本。目前支持10，11，12，13这几个版本。当输入该参数时，会基于此版本创建对应的最新内核版本号实例。该参数和DBVersion、DBKernelVersion至少需要传递一个。
        public let dbMajorVersion: String?

        /// PostgreSQL内核版本。当输入该参数时，会创建该内核版本号实例。该参数和DBVersion、DBMajorVersion至少需要传递一个。
        public let dbKernelVersion: String?

        /// 实例节点信息，购买跨可用区实例时填写。
        public let dbNodeSet: [DBNode]?

        /// 是否需要支持数据透明加密，1：是，0：否（默认）。
        public let needSupportTDE: UInt64?

        /// 自定义密钥的KeyId，若选择自定义密匙加密，则需要传入自定义密匙的KeyId，KeyId是CMK的唯一标识。
        public let kmsKeyId: String?

        /// 使用KMS服务的地域，KMSRegion为空默认使用本地域的KMS，本地域不支持的情况下需自选其他KMS支持的地域。
        public let kmsRegion: String?

        /// 数据库引擎，支持：
        /// 1、postgresql（云数据库PostgreSQL）；
        /// 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        /// 如不指定默认使用postgresql。
        public let dbEngine: String?

        /// 数据库引擎的配置信息，配置格式如下：
        /// {"$key1":"$value1", "$key2":"$value2"}
        /// 各引擎支持如下：
        /// 1、mssql_compatible引擎：
        /// migrationMode：数据库模式，可选参数，可取值：single-db（单数据库模式），multi-db（多数据库模式）。默认为single-db。
        /// defaultLocale：排序区域规则，可选参数，在初始化后不可修改，默认为en_US，可选值如下：
        /// "af_ZA", "sq_AL", "ar_DZ", "ar_BH", "ar_EG", "ar_IQ", "ar_JO", "ar_KW", "ar_LB", "ar_LY", "ar_MA", "ar_OM", "ar_QA", "ar_SA", "ar_SY", "ar_TN", "ar_AE", "ar_YE", "hy_AM", "az_Cyrl_AZ", "az_Latn_AZ", "eu_ES", "be_BY", "bg_BG", "ca_ES", "zh_HK", "zh_MO", "zh_CN", "zh_SG", "zh_TW", "hr_HR", "cs_CZ", "da_DK", "nl_BE", "nl_NL", "en_AU", "en_BZ", "en_CA", "en_IE", "en_JM", "en_NZ", "en_PH", "en_ZA", "en_TT", "en_GB", "en_US", "en_ZW", "et_EE", "fo_FO", "fa_IR", "fi_FI", "fr_BE", "fr_CA", "fr_FR", "fr_LU", "fr_MC", "fr_CH", "mk_MK", "ka_GE", "de_AT", "de_DE", "de_LI", "de_LU", "de_CH", "el_GR", "gu_IN", "he_IL", "hi_IN", "hu_HU", "is_IS", "id_ID", "it_IT", "it_CH", "ja_JP", "kn_IN", "kok_IN", "ko_KR", "ky_KG", "lv_LV", "lt_LT", "ms_BN", "ms_MY", "mr_IN", "mn_MN", "nb_NO", "nn_NO", "pl_PL", "pt_BR", "pt_PT", "pa_IN", "ro_RO", "ru_RU", "sa_IN", "sr_Cyrl_RS", "sr_Latn_RS", "sk_SK", "sl_SI", "es_AR", "es_BO", "es_CL", "es_CO", "es_CR", "es_DO", "es_EC", "es_SV", "es_GT", "es_HN", "es_MX", "es_NI", "es_PA", "es_PY","es_PE", "es_PR", "es_ES", "es_TRADITIONAL", "es_UY", "es_VE", "sw_KE", "sv_FI", "sv_SE", "tt_RU", "te_IN", "th_TH", "tr_TR", "uk_UA", "ur_IN", "ur_PK", "uz_Cyrl_UZ", "uz_Latn_UZ", "vi_VN"。
        /// serverCollationName：排序规则名称，可选参数，在初始化后不可修改，默认为sql_latin1_general_cp1_ci_as，可选值如下：
        /// "bbf_unicode_general_ci_as", "bbf_unicode_cp1_ci_as", "bbf_unicode_CP1250_ci_as", "bbf_unicode_CP1251_ci_as", "bbf_unicode_cp1253_ci_as", "bbf_unicode_cp1254_ci_as", "bbf_unicode_cp1255_ci_as", "bbf_unicode_cp1256_ci_as", "bbf_unicode_cp1257_ci_as", "bbf_unicode_cp1258_ci_as", "bbf_unicode_cp874_ci_as", "sql_latin1_general_cp1250_ci_as", "sql_latin1_general_cp1251_ci_as", "sql_latin1_general_cp1_ci_as", "sql_latin1_general_cp1253_ci_as", "sql_latin1_general_cp1254_ci_as", "sql_latin1_general_cp1255_ci_as","sql_latin1_general_cp1256_ci_as", "sql_latin1_general_cp1257_ci_as", "sql_latin1_general_cp1258_ci_as", "chinese_prc_ci_as", "cyrillic_general_ci_as", "finnish_swedish_ci_as", "french_ci_as", "japanese_ci_as", "korean_wansung_ci_as", "latin1_general_ci_as", "modern_spanish_ci_as", "polish_ci_as", "thai_ci_as", "traditional_spanish_ci_as", "turkish_ci_as", "ukrainian_ci_as", "vietnamese_ci_as"。
        public let dbEngineConfig: String?

        public init(specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, zone: String, charset: String, adminName: String, adminPassword: String, projectId: Int64? = nil, dbVersion: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, autoRenewFlag: Int64? = nil, activityId: Int64? = nil, name: String? = nil, needSupportIpv6: UInt64? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, dbNodeSet: [DBNode]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil) {
            self.specCode = specCode
            self.storage = storage
            self.instanceCount = instanceCount
            self.period = period
            self.zone = zone
            self.charset = charset
            self.adminName = adminName
            self.adminPassword = adminPassword
            self.projectId = projectId
            self.dbVersion = dbVersion
            self.instanceChargeType = instanceChargeType
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.autoRenewFlag = autoRenewFlag
            self.activityId = activityId
            self.name = name
            self.needSupportIpv6 = needSupportIpv6
            self.tagList = tagList
            self.securityGroupIds = securityGroupIds
            self.dbMajorVersion = dbMajorVersion
            self.dbKernelVersion = dbKernelVersion
            self.dbNodeSet = dbNodeSet
            self.needSupportTDE = needSupportTDE
            self.kmsKeyId = kmsKeyId
            self.kmsRegion = kmsRegion
            self.dbEngine = dbEngine
            self.dbEngineConfig = dbEngineConfig
        }

        enum CodingKeys: String, CodingKey {
            case specCode = "SpecCode"
            case storage = "Storage"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case zone = "Zone"
            case charset = "Charset"
            case adminName = "AdminName"
            case adminPassword = "AdminPassword"
            case projectId = "ProjectId"
            case dbVersion = "DBVersion"
            case instanceChargeType = "InstanceChargeType"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case autoRenewFlag = "AutoRenewFlag"
            case activityId = "ActivityId"
            case name = "Name"
            case needSupportIpv6 = "NeedSupportIpv6"
            case tagList = "TagList"
            case securityGroupIds = "SecurityGroupIds"
            case dbMajorVersion = "DBMajorVersion"
            case dbKernelVersion = "DBKernelVersion"
            case dbNodeSet = "DBNodeSet"
            case needSupportTDE = "NeedSupportTDE"
            case kmsKeyId = "KMSKeyId"
            case kmsRegion = "KMSRegion"
            case dbEngine = "DBEngine"
            case dbEngineConfig = "DBEngineConfig"
        }
    }

    /// CreateInstances返回参数结构体
    public struct CreateInstancesResponse: TCResponseModel {
        /// 订单号列表。每个实例对应一个订单号。
        public let dealNames: [String]

        /// 冻结流水号。
        public let billId: String

        /// 创建成功的实例ID集合，只在后付费情景下有返回值。
        public let dbInstanceIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
            case billId = "BillId"
            case dbInstanceIdSet = "DBInstanceIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建实例(新)
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例(新)
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例(新)
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    @inlinable
    public func createInstances(specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, zone: String, charset: String, adminName: String, adminPassword: String, projectId: Int64? = nil, dbVersion: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, autoRenewFlag: Int64? = nil, activityId: Int64? = nil, name: String? = nil, needSupportIpv6: UInt64? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, dbNodeSet: [DBNode]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.createInstances(CreateInstancesRequest(specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, zone: zone, charset: charset, adminName: adminName, adminPassword: adminPassword, projectId: projectId, dbVersion: dbVersion, instanceChargeType: instanceChargeType, autoVoucher: autoVoucher, voucherIds: voucherIds, vpcId: vpcId, subnetId: subnetId, autoRenewFlag: autoRenewFlag, activityId: activityId, name: name, needSupportIpv6: needSupportIpv6, tagList: tagList, securityGroupIds: securityGroupIds, dbMajorVersion: dbMajorVersion, dbKernelVersion: dbKernelVersion, dbNodeSet: dbNodeSet, needSupportTDE: needSupportTDE, kmsKeyId: kmsKeyId, kmsRegion: kmsRegion, dbEngine: dbEngine, dbEngineConfig: dbEngineConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例(新)
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    @inlinable
    public func createInstances(specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, zone: String, charset: String, adminName: String, adminPassword: String, projectId: Int64? = nil, dbVersion: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, vpcId: String? = nil, subnetId: String? = nil, autoRenewFlag: Int64? = nil, activityId: Int64? = nil, name: String? = nil, needSupportIpv6: UInt64? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, dbMajorVersion: String? = nil, dbKernelVersion: String? = nil, dbNodeSet: [DBNode]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.createInstances(CreateInstancesRequest(specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, zone: zone, charset: charset, adminName: adminName, adminPassword: adminPassword, projectId: projectId, dbVersion: dbVersion, instanceChargeType: instanceChargeType, autoVoucher: autoVoucher, voucherIds: voucherIds, vpcId: vpcId, subnetId: subnetId, autoRenewFlag: autoRenewFlag, activityId: activityId, name: name, needSupportIpv6: needSupportIpv6, tagList: tagList, securityGroupIds: securityGroupIds, dbMajorVersion: dbMajorVersion, dbKernelVersion: dbKernelVersion, dbNodeSet: dbNodeSet, needSupportTDE: needSupportTDE, kmsKeyId: kmsKeyId, kmsRegion: kmsRegion, dbEngine: dbEngine, dbEngineConfig: dbEngineConfig), region: region, logger: logger, on: eventLoop)
    }
}
