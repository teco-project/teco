//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ecm {
    /// RunInstances请求参数结构体
    public struct RunInstancesRequest: TCRequestModel {
        /// 需要创建实例的可用区及创建数目及运营商的列表。在单次请求的过程中，单个region下的请求创建实例数上限为100
        public let zoneInstanceCountISPSet: [ZoneInstanceCountISP]

        /// 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        /// Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? / ]中的特殊符。Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? /]中的特殊符号。
        public let password: String?

        /// 公网出带宽上限，单位：Mbps。
        /// 1.如果未传该参数或者传的值为0，则使用模块下的默认值。
        /// 2.如果未传该参数或者传的值为0且未指定模块，则使用InternetMaxBandwidthIn的值
        public let internetMaxBandwidthOut: Int64?

        /// 模块ID。如果未传该参数，则必须传ImageId，InstanceType，DataDiskSize，InternetMaxBandwidthOut参数
        public let moduleId: String?

        /// 镜像ID。如果未传该参数或者传的值为空，则使用模块下的默认值
        public let imageId: String?

        /// 实例显示名称。
        /// 不指定实例显示名称则默认显示‘未命名’。
        /// 购买多台实例，如果指定模式串{R:x}，表示生成数字[x, x+n-1]，其中n表示购买实例的数量，例如server\_{R:3}，购买1台时，实例显示名称为server\_3；购买2台时，实例显示名称分别为server\_3，server\_4。
        /// 支持指定多个模式串{R:x}。
        /// 购买多台实例，如果不指定模式串，则在实例显示名称添加后缀1、2...n，其中n表示购买实例的数量，例如server_，购买2台时，实例显示名称分别为server\_1，server\_2。
        /// 如果购买的实例属于不同的地域或运营商，则上述规则在每个地域和运营商内独立计数。
        /// 最多支持60个字符（包含模式串）。
        public let instanceName: String?

        /// 主机名称
        /// 点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。
        /// Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。
        /// 其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。
        public let hostName: String?

        /// 用于保证请求幂等性的字符串。目前为保留参数，请勿使用。
        public let clientToken: String?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务
        public let enhancedService: EnhancedService?

        /// 标签列表
        public let tagSpecification: [TagSpecification]?

        /// 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB
        public let userData: String?

        /// 机型。如果未传该参数或者传的值为空，则使用模块下的默认值
        public let instanceType: String?

        /// 数据盘大小，单位是G。如果未传该参数或者传的值为0，则使用模块下的默认值
        public let dataDiskSize: Int64?

        /// 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 系统盘大小，单位是G。如果未传该参数或者传的值为0，则使用模块下的默认值
        public let systemDiskSize: UInt64?

        /// 公网入带宽上限，单位：Mbps。
        /// 1.如果未传该参数或者传的值为0，则使用对应模块的默认值。
        /// 2.如果未传该参数或者传的值为0且未指定模块，则使用InternetMaxBandwidthOut
        public let internetMaxBandwidthIn: Int64?

        /// 实例计费类型。其中：
        /// 0，按资源维度后付费，计算当日用量峰值，例如CPU，内存，硬盘等，仅适用于非GNR系列机型；
        /// 1，按小时后付费，单价：xx元/实例/小时，仅适用于GNR机型，如需开通该计费方式请提工单申请；
        /// 2，按月后付费，单价：xx元/实例/月，仅适用于GNR机型；
        /// 该字段不填时，非GNR机型会默认选择0；GNR机型默认选择2。
        public let instanceChargeType: Int64?

        /// 密钥对。
        public let keyIds: [String]?

        /// 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：
        /// TRUE：表示保持镜像的登录设置
        /// FALSE：表示不保持镜像的登录设置
        /// 默认取值：FALSE。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keepImageLogin: String?

        /// 系统盘信息。
        public let systemDisk: SystemDisk?

        /// 数据盘信息。
        public let dataDisks: [DataDisk]?

        public init(zoneInstanceCountISPSet: [ZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, moduleId: String? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, clientToken: String? = nil, enhancedService: EnhancedService? = nil, tagSpecification: [TagSpecification]? = nil, userData: String? = nil, instanceType: String? = nil, dataDiskSize: Int64? = nil, securityGroupIds: [String]? = nil, systemDiskSize: UInt64? = nil, internetMaxBandwidthIn: Int64? = nil, instanceChargeType: Int64? = nil, keyIds: [String]? = nil, keepImageLogin: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil) {
            self.zoneInstanceCountISPSet = zoneInstanceCountISPSet
            self.password = password
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.moduleId = moduleId
            self.imageId = imageId
            self.instanceName = instanceName
            self.hostName = hostName
            self.clientToken = clientToken
            self.enhancedService = enhancedService
            self.tagSpecification = tagSpecification
            self.userData = userData
            self.instanceType = instanceType
            self.dataDiskSize = dataDiskSize
            self.securityGroupIds = securityGroupIds
            self.systemDiskSize = systemDiskSize
            self.internetMaxBandwidthIn = internetMaxBandwidthIn
            self.instanceChargeType = instanceChargeType
            self.keyIds = keyIds
            self.keepImageLogin = keepImageLogin
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
        }

        enum CodingKeys: String, CodingKey {
            case zoneInstanceCountISPSet = "ZoneInstanceCountISPSet"
            case password = "Password"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case moduleId = "ModuleId"
            case imageId = "ImageId"
            case instanceName = "InstanceName"
            case hostName = "HostName"
            case clientToken = "ClientToken"
            case enhancedService = "EnhancedService"
            case tagSpecification = "TagSpecification"
            case userData = "UserData"
            case instanceType = "InstanceType"
            case dataDiskSize = "DataDiskSize"
            case securityGroupIds = "SecurityGroupIds"
            case systemDiskSize = "SystemDiskSize"
            case internetMaxBandwidthIn = "InternetMaxBandwidthIn"
            case instanceChargeType = "InstanceChargeType"
            case keyIds = "KeyIds"
            case keepImageLogin = "KeepImageLogin"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
        }
    }

    /// RunInstances返回参数结构体
    public struct RunInstancesResponse: TCResponseModel {
        /// 创建中的实例ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceIdSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建实例
    ///
    /// 创建ECM实例。
    @inlinable
    public func runInstances(_ input: RunInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunInstancesResponse> {
        self.client.execute(action: "RunInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 创建ECM实例。
    @inlinable
    public func runInstances(_ input: RunInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunInstancesResponse {
        try await self.client.execute(action: "RunInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例
    ///
    /// 创建ECM实例。
    @inlinable
    public func runInstances(zoneInstanceCountISPSet: [ZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, moduleId: String? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, clientToken: String? = nil, enhancedService: EnhancedService? = nil, tagSpecification: [TagSpecification]? = nil, userData: String? = nil, instanceType: String? = nil, dataDiskSize: Int64? = nil, securityGroupIds: [String]? = nil, systemDiskSize: UInt64? = nil, internetMaxBandwidthIn: Int64? = nil, instanceChargeType: Int64? = nil, keyIds: [String]? = nil, keepImageLogin: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunInstancesResponse> {
        self.runInstances(RunInstancesRequest(zoneInstanceCountISPSet: zoneInstanceCountISPSet, password: password, internetMaxBandwidthOut: internetMaxBandwidthOut, moduleId: moduleId, imageId: imageId, instanceName: instanceName, hostName: hostName, clientToken: clientToken, enhancedService: enhancedService, tagSpecification: tagSpecification, userData: userData, instanceType: instanceType, dataDiskSize: dataDiskSize, securityGroupIds: securityGroupIds, systemDiskSize: systemDiskSize, internetMaxBandwidthIn: internetMaxBandwidthIn, instanceChargeType: instanceChargeType, keyIds: keyIds, keepImageLogin: keepImageLogin, systemDisk: systemDisk, dataDisks: dataDisks), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例
    ///
    /// 创建ECM实例。
    @inlinable
    public func runInstances(zoneInstanceCountISPSet: [ZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, moduleId: String? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, clientToken: String? = nil, enhancedService: EnhancedService? = nil, tagSpecification: [TagSpecification]? = nil, userData: String? = nil, instanceType: String? = nil, dataDiskSize: Int64? = nil, securityGroupIds: [String]? = nil, systemDiskSize: UInt64? = nil, internetMaxBandwidthIn: Int64? = nil, instanceChargeType: Int64? = nil, keyIds: [String]? = nil, keepImageLogin: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunInstancesResponse {
        try await self.runInstances(RunInstancesRequest(zoneInstanceCountISPSet: zoneInstanceCountISPSet, password: password, internetMaxBandwidthOut: internetMaxBandwidthOut, moduleId: moduleId, imageId: imageId, instanceName: instanceName, hostName: hostName, clientToken: clientToken, enhancedService: enhancedService, tagSpecification: tagSpecification, userData: userData, instanceType: instanceType, dataDiskSize: dataDiskSize, securityGroupIds: securityGroupIds, systemDiskSize: systemDiskSize, internetMaxBandwidthIn: internetMaxBandwidthIn, instanceChargeType: instanceChargeType, keyIds: keyIds, keepImageLogin: keepImageLogin, systemDisk: systemDisk, dataDisks: dataDisks), region: region, logger: logger, on: eventLoop)
    }
}
