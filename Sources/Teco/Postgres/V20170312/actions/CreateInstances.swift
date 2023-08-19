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

import Logging
import NIOCore
import TecoCore

extension Postgres {
    /// CreateInstances请求参数结构体
    public struct CreateInstancesRequest: TCRequest {
        /// 实例所属主可用区， 如：ap-guangzhou-3；若需要支持多可用区，在DBNodeSet.N字段中进行添加主可用区和备可用区信息；
        /// 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        public let zone: String

        /// 售卖规格码。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)的返回值中的SpecCode字段来获取。
        public let specCode: String

        /// 实例容量大小，单位：GB。
        public let storage: UInt64

        /// 购买实例数量，取值范围：[1-10]。一次性购买支持最大数量10个，若超过该数量，可进行多次调用进行购买。
        public let instanceCount: UInt64

        /// 购买时长，单位：月。
        /// - 预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36
        /// - 后付费：只支持1
        public let period: UInt64

        /// 实例字符集，目前只支持：
        /// - UTF8
        /// - LATIN1
        public let charset: String

        /// 实例根账号用户名，具体规范如下：
        /// - 用户名需要1-16个字符，只能由字母、数字或下划线组成
        /// - 不能为postgres
        /// - 不能由数字和pg_开头
        /// - 所有规则均不区分大小写
        public let adminName: String

        /// 实例根账号用户名对应的密码，长度8 ~ 32位，推荐使用12位以上的密码;不能以" / "开头;
        /// 必须包含以下四项，字符种类:
        /// - 小写字母： [a ~ z]
        /// - 大写字母：[A ～ Z]
        /// - 数字：0 - 9
        /// - 特殊字符：()`~!@#$%^&*-+=_|{}[]:;'<>,.?/
        public let adminPassword: String

        /// PostgreSQL大版本号，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取，目前支持10，11，12，13，14，15这几个大版本。
        /// 当只输入该参数时，会基于此大版本号创建对应的最新小版本的最新内核版本号实例。
        /// 该参数和DBVersion、DBKernelVersion需要至少指定一个，如无指定购买内核小版本需求时，只传入该参数即可。
        public let dbMajorVersion: String?

        /// PostgreSQL社区大版本+小版本号，如12.4，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取。
        /// 当只输入该参数时，会基于此社区小版本号创建对应的最新内核版本实例。
        /// 该参数和DBMajorVersion、DBKernelVersion需要至少指定一个。
        public let dbVersion: String?

        /// PostgreSQL内核版本号，如v12.7_r1.8，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取。
        /// 当只输入该参数时，会创建指定的内核版本实例。只针对内核版本需要指定时使用，一般场景不推荐传入该参数。
        public let dbKernelVersion: String?

        /// 实例计费类型，目前支持：
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：后付费，即按量计费
        ///
        /// 默认值：PREPAID
        public let instanceChargeType: String?

        /// 私有网络ID，形如vpc-xxxxxxxx。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372) ，从接口返回中的unVpcId字段获取。
        public let vpcId: String?

        /// 私有网络子网ID，形如subnet-xxxxxxxx。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        public let subnetId: String?

        /// 实例节点部署信息，支持多可用区部署时需要指定每个节点的部署可用区信息。
        /// 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        public let dbNodeSet: [DBNode]?

        /// 续费标记：
        /// - 0：手动续费
        /// - 1：自动续费
        ///
        /// 默认值：0
        public let autoRenewFlag: Int64?

        /// 是否自动使用代金券：
        /// - 0：否
        /// - 1：是
        ///
        /// 默认值：0
        public let autoVoucher: UInt64?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 项目ID。
        public let projectId: Int64?

        /// 活动ID。
        public let activityId: Int64?

        /// 实例名称，仅支持长度小于60的中文/英文/数字/"_"/"-"，不指定实例名称则默认显示"未命名"。
        public let name: String?

        /// 实例需要绑定的Tag信息，默认为空；可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
        public let tagList: [Tag]?

        /// 实例所属安全组，该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 是否需要支持数据透明加密：
        /// - 0：否
        /// - 1：是
        ///
        /// 默认值：0
        /// 参考[数据透明加密概述](https://cloud.tencent.com/document/product/409/71748)
        public let needSupportTDE: UInt64?

        /// 自定义密钥的KeyId，若选择自定义密匙加密，则需要传入自定义密匙的KeyId，KeyId是CMK的唯一标识。
        /// KeyId创建获取相关参考[开启透明数据加密](https://cloud.tencent.com/document/product/409/71749)
        public let kmsKeyId: String?

        /// 使用KMS服务的地域，KMSRegion为空默认使用本地域的KMS，本地域不支持的情况下需自选其他KMS支持的地域。
        /// KMSRegion相关介绍参考[开启透明数据加密](https://cloud.tencent.com/document/product/409/71749)
        public let kmsRegion: String?

        /// 数据库引擎，支持：
        /// - postgresql：云数据库PostgreSQL
        /// - mssql_compatible：MSSQL兼容-云数据库PostgreSQL
        ///
        /// 默认值：postgresql
        public let dbEngine: String?

        /// 数据库引擎的配置信息，配置格式如下：
        /// {"$key1":"$value1", "$key2":"$value2"}
        /// 各引擎支持如下：
        /// mssql_compatible引擎：
        /// - migrationMode：数据库模式，可选参数，可取值：single-db（单数据库模式），multi-db（多数据库模式）。默认为single-db。
        /// - defaultLocale：排序区域规则，可选参数，在初始化后不可修改，默认为en_US，可选值如下：
        ///
        /// "af_ZA", "sq_AL", "ar_DZ", "ar_BH", "ar_EG", "ar_IQ", "ar_JO", "ar_KW", "ar_LB", "ar_LY", "ar_MA", "ar_OM", "ar_QA", "ar_SA", "ar_SY", "ar_TN", "ar_AE", "ar_YE", "hy_AM", "az_Cyrl_AZ", "az_Latn_AZ", "eu_ES", "be_BY", "bg_BG", "ca_ES", "zh_HK", "zh_MO", "zh_CN", "zh_SG", "zh_TW", "hr_HR", "cs_CZ", "da_DK", "nl_BE", "nl_NL", "en_AU", "en_BZ", "en_CA", "en_IE", "en_JM", "en_NZ", "en_PH", "en_ZA", "en_TT", "en_GB", "en_US", "en_ZW", "et_EE", "fo_FO", "fa_IR", "fi_FI", "fr_BE", "fr_CA", "fr_FR", "fr_LU", "fr_MC", "fr_CH", "mk_MK", "ka_GE", "de_AT", "de_DE", "de_LI", "de_LU", "de_CH", "el_GR", "gu_IN", "he_IL", "hi_IN", "hu_HU", "is_IS", "id_ID", "it_IT", "it_CH", "ja_JP", "kn_IN", "kok_IN", "ko_KR", "ky_KG", "lv_LV", "lt_LT", "ms_BN", "ms_MY", "mr_IN", "mn_MN", "nb_NO", "nn_NO", "pl_PL", "pt_BR", "pt_PT", "pa_IN", "ro_RO", "ru_RU", "sa_IN", "sr_Cyrl_RS", "sr_Latn_RS", "sk_SK", "sl_SI", "es_AR", "es_BO", "es_CL", "es_CO", "es_CR", "es_DO", "es_EC", "es_SV", "es_GT", "es_HN", "es_MX", "es_NI", "es_PA", "es_PY","es_PE", "es_PR", "es_ES", "es_TRADITIONAL", "es_UY", "es_VE", "sw_KE", "sv_FI", "sv_SE", "tt_RU", "te_IN", "th_TH", "tr_TR", "uk_UA", "ur_IN", "ur_PK", "uz_Cyrl_UZ", "uz_Latn_UZ", "vi_VN"。
        /// - serverCollationName：排序规则名称，可选参数，在初始化后不可修改，默认为sql_latin1_general_cp1_ci_as，可选值如下："bbf_unicode_general_ci_as", "bbf_unicode_cp1_ci_as", "bbf_unicode_CP1250_ci_as", "bbf_unicode_CP1251_ci_as", "bbf_unicode_cp1253_ci_as", "bbf_unicode_cp1254_ci_as", "bbf_unicode_cp1255_ci_as", "bbf_unicode_cp1256_ci_as", "bbf_unicode_cp1257_ci_as", "bbf_unicode_cp1258_ci_as", "bbf_unicode_cp874_ci_as", "sql_latin1_general_cp1250_ci_as", "sql_latin1_general_cp1251_ci_as", "sql_latin1_general_cp1_ci_as", "sql_latin1_general_cp1253_ci_as", "sql_latin1_general_cp1254_ci_as", "sql_latin1_general_cp1255_ci_as","sql_latin1_general_cp1256_ci_as", "sql_latin1_general_cp1257_ci_as", "sql_latin1_general_cp1258_ci_as", "chinese_prc_ci_as", "cyrillic_general_ci_as", "finnish_swedish_ci_as", "french_ci_as", "japanese_ci_as", "korean_wansung_ci_as", "latin1_general_ci_as", "modern_spanish_ci_as", "polish_ci_as", "thai_ci_as", "traditional_spanish_ci_as", "turkish_ci_as", "ukrainian_ci_as", "vietnamese_ci_as"。
        public let dbEngineConfig: String?

        /// 主从同步方式，支持：
        /// - Semi-sync：半同步
        /// - Async：异步
        ///
        /// 主实例默认值：Semi-sync
        /// 只读实例默认值：Async
        public let syncMode: String?

        /// 是否需要支持Ipv6：
        /// - 0：否
        /// - 1：是
        ///
        /// 默认值：0
        public let needSupportIpv6: UInt64?

        public init(zone: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, charset: String, adminName: String, adminPassword: String, dbMajorVersion: String? = nil, dbVersion: String? = nil, dbKernelVersion: String? = nil, instanceChargeType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbNodeSet: [DBNode]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, projectId: Int64? = nil, activityId: Int64? = nil, name: String? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil, syncMode: String? = nil, needSupportIpv6: UInt64? = nil) {
            self.zone = zone
            self.specCode = specCode
            self.storage = storage
            self.instanceCount = instanceCount
            self.period = period
            self.charset = charset
            self.adminName = adminName
            self.adminPassword = adminPassword
            self.dbMajorVersion = dbMajorVersion
            self.dbVersion = dbVersion
            self.dbKernelVersion = dbKernelVersion
            self.instanceChargeType = instanceChargeType
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.dbNodeSet = dbNodeSet
            self.autoRenewFlag = autoRenewFlag
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.projectId = projectId
            self.activityId = activityId
            self.name = name
            self.tagList = tagList
            self.securityGroupIds = securityGroupIds
            self.needSupportTDE = needSupportTDE
            self.kmsKeyId = kmsKeyId
            self.kmsRegion = kmsRegion
            self.dbEngine = dbEngine
            self.dbEngineConfig = dbEngineConfig
            self.syncMode = syncMode
            self.needSupportIpv6 = needSupportIpv6
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case specCode = "SpecCode"
            case storage = "Storage"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case charset = "Charset"
            case adminName = "AdminName"
            case adminPassword = "AdminPassword"
            case dbMajorVersion = "DBMajorVersion"
            case dbVersion = "DBVersion"
            case dbKernelVersion = "DBKernelVersion"
            case instanceChargeType = "InstanceChargeType"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case dbNodeSet = "DBNodeSet"
            case autoRenewFlag = "AutoRenewFlag"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case projectId = "ProjectId"
            case activityId = "ActivityId"
            case name = "Name"
            case tagList = "TagList"
            case securityGroupIds = "SecurityGroupIds"
            case needSupportTDE = "NeedSupportTDE"
            case kmsKeyId = "KMSKeyId"
            case kmsRegion = "KMSRegion"
            case dbEngine = "DBEngine"
            case dbEngineConfig = "DBEngineConfig"
            case syncMode = "SyncMode"
            case needSupportIpv6 = "NeedSupportIpv6"
        }
    }

    /// CreateInstances返回参数结构体
    public struct CreateInstancesResponse: TCResponse {
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

    /// 创建实例
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    /// - 实例创建成功后将自动开机启动，实例状态变为“运行中”。
    /// - 预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    /// - 实例创建成功后将自动开机启动，实例状态变为“运行中”。
    /// - 预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.client.execute(action: "CreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    /// - 实例创建成功后将自动开机启动，实例状态变为“运行中”。
    /// - 预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。
    @inlinable
    public func createInstances(zone: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, charset: String, adminName: String, adminPassword: String, dbMajorVersion: String? = nil, dbVersion: String? = nil, dbKernelVersion: String? = nil, instanceChargeType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbNodeSet: [DBNode]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, projectId: Int64? = nil, activityId: Int64? = nil, name: String? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil, syncMode: String? = nil, needSupportIpv6: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancesResponse> {
        self.createInstances(.init(zone: zone, specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, charset: charset, adminName: adminName, adminPassword: adminPassword, dbMajorVersion: dbMajorVersion, dbVersion: dbVersion, dbKernelVersion: dbKernelVersion, instanceChargeType: instanceChargeType, vpcId: vpcId, subnetId: subnetId, dbNodeSet: dbNodeSet, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, voucherIds: voucherIds, projectId: projectId, activityId: activityId, name: name, tagList: tagList, securityGroupIds: securityGroupIds, needSupportTDE: needSupportTDE, kmsKeyId: kmsKeyId, kmsRegion: kmsRegion, dbEngine: dbEngine, dbEngineConfig: dbEngineConfig, syncMode: syncMode, needSupportIpv6: needSupportIpv6), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 本接口 (CreateInstances) 用于创建一个或者多个PostgreSQL实例，通过此接口创建的实例无需进行初始化，可直接使用。
    /// - 实例创建成功后将自动开机启动，实例状态变为“运行中”。
    /// - 预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。
    @inlinable
    public func createInstances(zone: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, charset: String, adminName: String, adminPassword: String, dbMajorVersion: String? = nil, dbVersion: String? = nil, dbKernelVersion: String? = nil, instanceChargeType: String? = nil, vpcId: String? = nil, subnetId: String? = nil, dbNodeSet: [DBNode]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, projectId: Int64? = nil, activityId: Int64? = nil, name: String? = nil, tagList: [Tag]? = nil, securityGroupIds: [String]? = nil, needSupportTDE: UInt64? = nil, kmsKeyId: String? = nil, kmsRegion: String? = nil, dbEngine: String? = nil, dbEngineConfig: String? = nil, syncMode: String? = nil, needSupportIpv6: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.createInstances(.init(zone: zone, specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, charset: charset, adminName: adminName, adminPassword: adminPassword, dbMajorVersion: dbMajorVersion, dbVersion: dbVersion, dbKernelVersion: dbKernelVersion, instanceChargeType: instanceChargeType, vpcId: vpcId, subnetId: subnetId, dbNodeSet: dbNodeSet, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, voucherIds: voucherIds, projectId: projectId, activityId: activityId, name: name, tagList: tagList, securityGroupIds: securityGroupIds, needSupportTDE: needSupportTDE, kmsKeyId: kmsKeyId, kmsRegion: kmsRegion, dbEngine: dbEngine, dbEngineConfig: dbEngineConfig, syncMode: syncMode, needSupportIpv6: needSupportIpv6), region: region, logger: logger, on: eventLoop)
    }
}
