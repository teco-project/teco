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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cdb {
    /// CreateDBInstanceHour请求参数结构体
    public struct CreateDBInstanceHourRequest: TCRequestModel {
        /// 实例数量，默认值为 1，最小值 1，最大值为 100。
        public let goodsNum: Int64

        /// 实例内存大小，单位：MB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的内存规格。
        public let memory: Int64

        /// 实例硬盘大小，单位：GB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的硬盘范围。
        public let volume: Int64

        /// MySQL 版本，值包括：5.5、5.6 、5.7 、8.0，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的实例版本。
        public let engineVersion: String?

        /// 私有网络 ID，如果不传则默认选择基础网络，请使用 [查询私有网络列表](/document/api/215/15778) 。
        public let uniqVpcId: String?

        /// 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用[查询子网列表](/document/api/215/15784)。
        public let uniqSubnetId: String?

        /// 项目 ID，不填为默认项目。
        public let projectId: Int64?

        /// 可用区信息，该参数缺省时，系统会自动选择一个可用区，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的可用区。
        public let zone: String?

        /// 实例 ID，购买只读实例或者灾备实例时必填，该字段表示只读实例或者灾备实例的主实例 ID，请使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询云数据库实例 ID。
        public let masterInstanceId: String?

        /// 实例类型，默认为 master，支持值包括：master - 表示主实例，dr - 表示灾备实例，ro - 表示只读实例。
        public let instanceRole: String?

        /// 主实例的可用区信息，购买灾备、RO实例时必填。
        public let masterRegion: String?

        /// 自定义端口，端口支持范围：[ 1024-65535 ] 。
        public let port: Int64?

        /// 设置 root 帐号密码，密码规则：8 - 64 个字符，至少包含字母、数字、字符（支持的字符：_+-&=!@#$%^*()）中的两种，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        public let password: String?

        /// 参数列表，参数格式如 ParamList.0.Name=auto_increment&ParamList.0.Value=1。可通过 [查询默认的可设置参数列表](https://cloud.tencent.com/document/api/236/32662) 查询支持设置的参数。
        public let paramList: [ParamInfo]?

        /// 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        public let protectMode: Int64?

        /// 多可用区域，默认为 0，支持值包括：0 - 表示单可用区，1 - 表示多可用区，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        public let deployMode: Int64?

        /// 备库 1 的可用区信息，默认为 Zone 的值，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        public let slaveZone: String?

        /// 备库 2 的可用区信息，默认为空，购买三节点主实例时可指定该参数。
        public let backupZone: String?

        /// 安全组参数，可使用 [查询项目安全组信息](https://cloud.tencent.com/document/api/236/15850) 接口查询某个项目的安全组详情。
        public let securityGroup: [String]?

        /// 只读实例信息。购买只读实例时，该参数必传。
        public let roGroup: RoGroup?

        /// 购买按量计费实例该字段无意义。
        public let autoRenewFlag: Int64?

        /// 实例名称。一次购买多个实例命名会用后缀数字区分，例instnaceName=db，goodsNum=3，实例命名分别为db1，db2，db3。
        public let instanceName: String?

        /// 实例标签信息。
        public let resourceTags: [TagInfo]?

        /// 置放群组 ID。
        public let deployGroupId: String?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间在48小时内唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC" - 基础版实例。 不指定则默认为通用型实例。
        public let deviceType: String?

        /// 参数模板id。
        public let paramTemplateId: Int64?

        /// 告警策略id数组。云监控DescribeAlarmPolicy接口返回的OriginId。
        public let alarmPolicyList: [Int64]?

        /// 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要购买三节点实例， 请将该值设置为3 或指定 BackupZone 参数。当购买主实例，且未指定该参数和 BackupZone 参数时，该值默认是 2， 即购买两节点实例。
        public let instanceNodes: Int64?

        /// 实例cpu核数， 如果不传将根据memory指定的内存值自动填充对应的cpu值。
        public let cpu: Int64?

        /// 是否自动发起灾备同步功能。该参数仅对购买灾备实例生效。 可选值为：0 - 不自动发起灾备同步；1 - 自动发起灾备同步。该值默认为0。
        public let autoSyncFlag: Int64?

        /// 金融围拢 ID 。
        public let cageId: String?

        /// 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板，默认值是："HIGH_STABILITY"。
        public let paramTemplateType: String?

        /// 告警策略名数组，例如:["policy-uyoee9wg"]，AlarmPolicyList不为空时该参数无效。
        public let alarmPolicyIdList: [String]?

        /// 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制等。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.默认为false：发送正常请求，通过检查后直接创建实例。
        public let dryRun: Bool?

        /// 实例引擎类型，默认为"InnoDB"，支持值包括："InnoDB"，"RocksDB"。
        public let engineType: String?

        /// 指定实例的IP列表。仅支持主实例指定，按实例顺序，不足则按未指定处理。
        public let vips: [String]?

        public init(goodsNum: Int64, memory: Int64, volume: Int64, engineVersion: String? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, projectId: Int64? = nil, zone: String? = nil, masterInstanceId: String? = nil, instanceRole: String? = nil, masterRegion: String? = nil, port: Int64? = nil, password: String? = nil, paramList: [ParamInfo]? = nil, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, backupZone: String? = nil, securityGroup: [String]? = nil, roGroup: RoGroup? = nil, autoRenewFlag: Int64? = nil, instanceName: String? = nil, resourceTags: [TagInfo]? = nil, deployGroupId: String? = nil, clientToken: String? = nil, deviceType: String? = nil, paramTemplateId: Int64? = nil, alarmPolicyList: [Int64]? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, autoSyncFlag: Int64? = nil, cageId: String? = nil, paramTemplateType: String? = nil, alarmPolicyIdList: [String]? = nil, dryRun: Bool? = nil, engineType: String? = nil, vips: [String]? = nil) {
            self.goodsNum = goodsNum
            self.memory = memory
            self.volume = volume
            self.engineVersion = engineVersion
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
            self.projectId = projectId
            self.zone = zone
            self.masterInstanceId = masterInstanceId
            self.instanceRole = instanceRole
            self.masterRegion = masterRegion
            self.port = port
            self.password = password
            self.paramList = paramList
            self.protectMode = protectMode
            self.deployMode = deployMode
            self.slaveZone = slaveZone
            self.backupZone = backupZone
            self.securityGroup = securityGroup
            self.roGroup = roGroup
            self.autoRenewFlag = autoRenewFlag
            self.instanceName = instanceName
            self.resourceTags = resourceTags
            self.deployGroupId = deployGroupId
            self.clientToken = clientToken
            self.deviceType = deviceType
            self.paramTemplateId = paramTemplateId
            self.alarmPolicyList = alarmPolicyList
            self.instanceNodes = instanceNodes
            self.cpu = cpu
            self.autoSyncFlag = autoSyncFlag
            self.cageId = cageId
            self.paramTemplateType = paramTemplateType
            self.alarmPolicyIdList = alarmPolicyIdList
            self.dryRun = dryRun
            self.engineType = engineType
            self.vips = vips
        }

        enum CodingKeys: String, CodingKey {
            case goodsNum = "GoodsNum"
            case memory = "Memory"
            case volume = "Volume"
            case engineVersion = "EngineVersion"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
            case projectId = "ProjectId"
            case zone = "Zone"
            case masterInstanceId = "MasterInstanceId"
            case instanceRole = "InstanceRole"
            case masterRegion = "MasterRegion"
            case port = "Port"
            case password = "Password"
            case paramList = "ParamList"
            case protectMode = "ProtectMode"
            case deployMode = "DeployMode"
            case slaveZone = "SlaveZone"
            case backupZone = "BackupZone"
            case securityGroup = "SecurityGroup"
            case roGroup = "RoGroup"
            case autoRenewFlag = "AutoRenewFlag"
            case instanceName = "InstanceName"
            case resourceTags = "ResourceTags"
            case deployGroupId = "DeployGroupId"
            case clientToken = "ClientToken"
            case deviceType = "DeviceType"
            case paramTemplateId = "ParamTemplateId"
            case alarmPolicyList = "AlarmPolicyList"
            case instanceNodes = "InstanceNodes"
            case cpu = "Cpu"
            case autoSyncFlag = "AutoSyncFlag"
            case cageId = "CageId"
            case paramTemplateType = "ParamTemplateType"
            case alarmPolicyIdList = "AlarmPolicyIdList"
            case dryRun = "DryRun"
            case engineType = "EngineType"
            case vips = "Vips"
        }
    }

    /// CreateDBInstanceHour返回参数结构体
    public struct CreateDBInstanceHourResponse: TCResponseModel {
        /// 短订单 ID。
        public let dealIds: [String]

        /// 实例 ID 列表。
        public let instanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealIds = "DealIds"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的实例，可通过传入实例规格、MySQL 版本号和数量等信息创建云数据库实例，支持主实例、灾备实例和只读实例的创建。
    ///
    /// 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为 1，且 TaskStatus 为 0，表示实例已经发货成功。
    ///
    /// 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
    /// 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
    /// 3. 支持创建 MySQL 5.5、MySQL 5.6 、MySQL 5.7 和 MySQL 8.0 版本；
    /// 4. 支持创建主实例、灾备实例和只读实例；
    /// 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作；
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceHourResponse> {
        self.client.execute(action: "CreateDBInstanceHour", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的实例，可通过传入实例规格、MySQL 版本号和数量等信息创建云数据库实例，支持主实例、灾备实例和只读实例的创建。
    ///
    /// 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为 1，且 TaskStatus 为 0，表示实例已经发货成功。
    ///
    /// 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
    /// 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
    /// 3. 支持创建 MySQL 5.5、MySQL 5.6 、MySQL 5.7 和 MySQL 8.0 版本；
    /// 4. 支持创建主实例、灾备实例和只读实例；
    /// 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作；
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.client.execute(action: "CreateDBInstanceHour", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的实例，可通过传入实例规格、MySQL 版本号和数量等信息创建云数据库实例，支持主实例、灾备实例和只读实例的创建。
    ///
    /// 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为 1，且 TaskStatus 为 0，表示实例已经发货成功。
    ///
    /// 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
    /// 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
    /// 3. 支持创建 MySQL 5.5、MySQL 5.6 、MySQL 5.7 和 MySQL 8.0 版本；
    /// 4. 支持创建主实例、灾备实例和只读实例；
    /// 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作；
    @inlinable
    public func createDBInstanceHour(goodsNum: Int64, memory: Int64, volume: Int64, engineVersion: String? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, projectId: Int64? = nil, zone: String? = nil, masterInstanceId: String? = nil, instanceRole: String? = nil, masterRegion: String? = nil, port: Int64? = nil, password: String? = nil, paramList: [ParamInfo]? = nil, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, backupZone: String? = nil, securityGroup: [String]? = nil, roGroup: RoGroup? = nil, autoRenewFlag: Int64? = nil, instanceName: String? = nil, resourceTags: [TagInfo]? = nil, deployGroupId: String? = nil, clientToken: String? = nil, deviceType: String? = nil, paramTemplateId: Int64? = nil, alarmPolicyList: [Int64]? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, autoSyncFlag: Int64? = nil, cageId: String? = nil, paramTemplateType: String? = nil, alarmPolicyIdList: [String]? = nil, dryRun: Bool? = nil, engineType: String? = nil, vips: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceHourResponse> {
        self.createDBInstanceHour(.init(goodsNum: goodsNum, memory: memory, volume: volume, engineVersion: engineVersion, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, projectId: projectId, zone: zone, masterInstanceId: masterInstanceId, instanceRole: instanceRole, masterRegion: masterRegion, port: port, password: password, paramList: paramList, protectMode: protectMode, deployMode: deployMode, slaveZone: slaveZone, backupZone: backupZone, securityGroup: securityGroup, roGroup: roGroup, autoRenewFlag: autoRenewFlag, instanceName: instanceName, resourceTags: resourceTags, deployGroupId: deployGroupId, clientToken: clientToken, deviceType: deviceType, paramTemplateId: paramTemplateId, alarmPolicyList: alarmPolicyList, instanceNodes: instanceNodes, cpu: cpu, autoSyncFlag: autoSyncFlag, cageId: cageId, paramTemplateType: paramTemplateType, alarmPolicyIdList: alarmPolicyIdList, dryRun: dryRun, engineType: engineType, vips: vips), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的实例，可通过传入实例规格、MySQL 版本号和数量等信息创建云数据库实例，支持主实例、灾备实例和只读实例的创建。
    ///
    /// 该接口为异步接口，您还可以使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询该实例的详细信息。当该实例的 Status 为 1，且 TaskStatus 为 0，表示实例已经发货成功。
    ///
    /// 1. 首先请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口查询可创建的实例规格信息，然后请使用 [查询数据库价格](https://cloud.tencent.com/document/api/236/18566) 接口查询可创建实例的售卖价格；
    /// 2. 单次创建实例最大支持 100 个，实例时长最大支持 36 个月；
    /// 3. 支持创建 MySQL 5.5、MySQL 5.6 、MySQL 5.7 和 MySQL 8.0 版本；
    /// 4. 支持创建主实例、灾备实例和只读实例；
    /// 5. 当入参指定 Port，ParamList 或 Password 时，该实例会进行初始化操作；
    @inlinable
    public func createDBInstanceHour(goodsNum: Int64, memory: Int64, volume: Int64, engineVersion: String? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, projectId: Int64? = nil, zone: String? = nil, masterInstanceId: String? = nil, instanceRole: String? = nil, masterRegion: String? = nil, port: Int64? = nil, password: String? = nil, paramList: [ParamInfo]? = nil, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, backupZone: String? = nil, securityGroup: [String]? = nil, roGroup: RoGroup? = nil, autoRenewFlag: Int64? = nil, instanceName: String? = nil, resourceTags: [TagInfo]? = nil, deployGroupId: String? = nil, clientToken: String? = nil, deviceType: String? = nil, paramTemplateId: Int64? = nil, alarmPolicyList: [Int64]? = nil, instanceNodes: Int64? = nil, cpu: Int64? = nil, autoSyncFlag: Int64? = nil, cageId: String? = nil, paramTemplateType: String? = nil, alarmPolicyIdList: [String]? = nil, dryRun: Bool? = nil, engineType: String? = nil, vips: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.createDBInstanceHour(.init(goodsNum: goodsNum, memory: memory, volume: volume, engineVersion: engineVersion, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId, projectId: projectId, zone: zone, masterInstanceId: masterInstanceId, instanceRole: instanceRole, masterRegion: masterRegion, port: port, password: password, paramList: paramList, protectMode: protectMode, deployMode: deployMode, slaveZone: slaveZone, backupZone: backupZone, securityGroup: securityGroup, roGroup: roGroup, autoRenewFlag: autoRenewFlag, instanceName: instanceName, resourceTags: resourceTags, deployGroupId: deployGroupId, clientToken: clientToken, deviceType: deviceType, paramTemplateId: paramTemplateId, alarmPolicyList: alarmPolicyList, instanceNodes: instanceNodes, cpu: cpu, autoSyncFlag: autoSyncFlag, cageId: cageId, paramTemplateType: paramTemplateType, alarmPolicyIdList: alarmPolicyIdList, dryRun: dryRun, engineType: engineType, vips: vips), region: region, logger: logger, on: eventLoop)
    }
}
