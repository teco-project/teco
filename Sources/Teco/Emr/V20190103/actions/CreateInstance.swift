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

extension Emr {
    /// CreateInstance请求参数结构体
    public struct CreateInstanceRequest: TCRequestModel {
        /// 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        /// <li>16：表示EMR-V2.3.0。</li>
        /// <li>20：表示EMR-V2.5.0。</li>
        /// <li>25：表示EMR-V3.1.0。</li>
        /// <li>27：表示KAFKA-V1.0.0。</li>
        /// <li>30：表示EMR-V2.6.0。</li>
        /// <li>33 :   表示EMR-V3.2.1。</li>
        /// <li>34 :   表示EMR-V3.3.0。</li>
        /// <li>36 :   表示STARROCKS-V1.0.0。</li>
        /// <li>37 :   表示EMR-V3.4.0。</li>
        /// <li>38 :   表示EMR-V2.7.0。</li>
        /// <li>39 :   表示STARROCKS-V1.1.0。</li>
        /// <li>41 :   表示DRUID-V1.1.0。</li>
        public let productId: UInt64

        /// 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）对应不同可选组件列表，不同产品版本可选组件列表查询：[组件版本](https://cloud.tencent.com/document/product/589/20279) ；
        /// 填写实例值：hive、flink。
        public let software: [String]

        /// 是否开启节点高可用。取值范围：
        /// <li>0：表示不开启节点高可用。</li>
        /// <li>1：表示开启节点高可用。</li>
        public let supportHA: UInt64

        /// 实例名称。
        /// <li>长度限制为6-36个字符。</li>
        /// <li>只允许包含中文、字母、数字、-、_。</li>
        public let instanceName: String

        /// 实例计费模式。取值范围：
        /// <li>0：表示按量计费。</li>
        /// <li>1：表示包年包月。</li>
        public let payMode: UInt64

        /// 购买实例的时长。结合TimeUnit一起使用。
        /// <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        /// <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        public let timeSpan: UInt64

        /// 购买实例的时间单位。取值范围：
        /// <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        /// <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        public let timeUnit: String

        /// 实例登录设置。通过该参数可以设置所购买节点的登录方式密码或者密钥。
        /// <li>设置密钥时，密码仅用于组件原生WebUI快捷入口登录。</li>
        /// <li>未设置密钥时，密码用于登录所购节点以及组件原生WebUI快捷入口登录。</li>
        public let loginSettings: LoginSettings

        /// 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        public let vpcSettings: VPCSettings?

        /// 节点资源的规格。
        public let resourceSpec: NewResourceSpec?

        /// 开启COS访问需要设置的参数。
        public let cosSettings: COSSettings?

        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        public let placement: Placement?

        /// 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        public let sgId: String?

        /// [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
        public let preExecutedFileSettings: [PreExecuteFileSettings]?

        /// 包年包月实例是否自动续费。取值范围：
        /// <li>0：表示不自动续费。</li>
        /// <li>1：表示自动续费。</li>
        public let autoRenew: UInt64?

        /// 客户端Token。
        public let clientToken: String?

        /// 是否开启集群Master节点公网。取值范围：
        /// <li>NEED_MASTER_WAN：表示开启集群Master节点公网。</li>
        /// <li>NOT_NEED_MASTER_WAN：表示不开启。</li>默认开启集群Master节点公网。
        public let needMasterWan: String?

        /// 是否需要开启外网远程登录，即22号端口。在SgId不为空时，该参数无效。
        public let remoteLoginAtCreate: Int64?

        /// 是否开启安全集群。0表示不开启，非0表示开启。
        public let checkSecurity: Int64?

        /// 访问外部文件系统。
        public let extendFsField: String?

        /// 标签描述列表。通过指定该参数可以同时绑定标签到相应的实例。
        public let tags: [Tag]?

        /// 分散置放群组ID列表，当前只支持指定一个。
        /// 该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/213/15486 ) 的返回值中的SecurityGroupId字段来获取。
        public let disasterRecoverGroupIds: [String]?

        /// 集群维度CBS加密盘，默认0表示不加密，1表示加密
        public let cbsEncrypt: UInt64?

        /// hive共享元数据库类型。取值范围：
        /// <li>EMR_NEW_META：表示集群默认创建</li>
        /// <li>EMR_EXIT_META：表示集群使用指定EMR-MetaDB。</li>
        /// <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        public let metaType: String?

        /// EMR-MetaDB实例
        public let unifyMetaInstanceId: String?

        /// 自定义MetaDB信息
        public let metaDBInfo: CustomMetaInfo?

        /// 自定义应用角色。
        public let applicationRole: String?

        /// 场景化取值：
        /// Hadoop-Kudu
        /// Hadoop-Zookeeper
        /// Hadoop-Presto
        /// Hadoop-Hbase
        public let sceneName: String?

        /// 共享组件信息
        public let externalService: [ExternalService]?

        /// 如果为0，则MultiZone、MultiDeployStrategy、MultiZoneSettings是disable的状态，如果为1，则废弃ResourceSpec，使用MultiZoneSettings。
        public let versionID: Int64?

        /// true表示开启跨AZ部署；仅为新建集群时的用户参数，后续不支持调整。
        public let multiZone: Bool?

        /// 节点资源的规格，有几个可用区，就填几个，按顺序第一个为主可用区，第二个为备可用区，第三个为仲裁可用区。如果没有开启跨AZ，则长度为1即可。
        public let multiZoneSettings: [MultiZoneSetting]?

        public init(productId: UInt64, software: [String], supportHA: UInt64, instanceName: String, payMode: UInt64, timeSpan: UInt64, timeUnit: String, loginSettings: LoginSettings, vpcSettings: VPCSettings? = nil, resourceSpec: NewResourceSpec? = nil, cosSettings: COSSettings? = nil, placement: Placement? = nil, sgId: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, autoRenew: UInt64? = nil, clientToken: String? = nil, needMasterWan: String? = nil, remoteLoginAtCreate: Int64? = nil, checkSecurity: Int64? = nil, extendFsField: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, cbsEncrypt: UInt64? = nil, metaType: String? = nil, unifyMetaInstanceId: String? = nil, metaDBInfo: CustomMetaInfo? = nil, applicationRole: String? = nil, sceneName: String? = nil, externalService: [ExternalService]? = nil, versionID: Int64? = nil, multiZone: Bool? = nil, multiZoneSettings: [MultiZoneSetting]? = nil) {
            self.productId = productId
            self.software = software
            self.supportHA = supportHA
            self.instanceName = instanceName
            self.payMode = payMode
            self.timeSpan = timeSpan
            self.timeUnit = timeUnit
            self.loginSettings = loginSettings
            self.vpcSettings = vpcSettings
            self.resourceSpec = resourceSpec
            self.cosSettings = cosSettings
            self.placement = placement
            self.sgId = sgId
            self.preExecutedFileSettings = preExecutedFileSettings
            self.autoRenew = autoRenew
            self.clientToken = clientToken
            self.needMasterWan = needMasterWan
            self.remoteLoginAtCreate = remoteLoginAtCreate
            self.checkSecurity = checkSecurity
            self.extendFsField = extendFsField
            self.tags = tags
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
            self.cbsEncrypt = cbsEncrypt
            self.metaType = metaType
            self.unifyMetaInstanceId = unifyMetaInstanceId
            self.metaDBInfo = metaDBInfo
            self.applicationRole = applicationRole
            self.sceneName = sceneName
            self.externalService = externalService
            self.versionID = versionID
            self.multiZone = multiZone
            self.multiZoneSettings = multiZoneSettings
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case software = "Software"
            case supportHA = "SupportHA"
            case instanceName = "InstanceName"
            case payMode = "PayMode"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
            case loginSettings = "LoginSettings"
            case vpcSettings = "VPCSettings"
            case resourceSpec = "ResourceSpec"
            case cosSettings = "COSSettings"
            case placement = "Placement"
            case sgId = "SgId"
            case preExecutedFileSettings = "PreExecutedFileSettings"
            case autoRenew = "AutoRenew"
            case clientToken = "ClientToken"
            case needMasterWan = "NeedMasterWan"
            case remoteLoginAtCreate = "RemoteLoginAtCreate"
            case checkSecurity = "CheckSecurity"
            case extendFsField = "ExtendFsField"
            case tags = "Tags"
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
            case cbsEncrypt = "CbsEncrypt"
            case metaType = "MetaType"
            case unifyMetaInstanceId = "UnifyMetaInstanceId"
            case metaDBInfo = "MetaDBInfo"
            case applicationRole = "ApplicationRole"
            case sceneName = "SceneName"
            case externalService = "ExternalService"
            case versionID = "VersionID"
            case multiZone = "MultiZone"
            case multiZoneSettings = "MultiZoneSettings"
        }
    }

    /// CreateInstance返回参数结构体
    public struct CreateInstanceResponse: TCResponseModel {
        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建EMR实例
    ///
    /// 创建EMR集群实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建EMR实例
    ///
    /// 创建EMR集群实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        try await self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建EMR实例
    ///
    /// 创建EMR集群实例
    @inlinable
    public func createInstance(productId: UInt64, software: [String], supportHA: UInt64, instanceName: String, payMode: UInt64, timeSpan: UInt64, timeUnit: String, loginSettings: LoginSettings, vpcSettings: VPCSettings? = nil, resourceSpec: NewResourceSpec? = nil, cosSettings: COSSettings? = nil, placement: Placement? = nil, sgId: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, autoRenew: UInt64? = nil, clientToken: String? = nil, needMasterWan: String? = nil, remoteLoginAtCreate: Int64? = nil, checkSecurity: Int64? = nil, extendFsField: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, cbsEncrypt: UInt64? = nil, metaType: String? = nil, unifyMetaInstanceId: String? = nil, metaDBInfo: CustomMetaInfo? = nil, applicationRole: String? = nil, sceneName: String? = nil, externalService: [ExternalService]? = nil, versionID: Int64? = nil, multiZone: Bool? = nil, multiZoneSettings: [MultiZoneSetting]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        self.createInstance(.init(productId: productId, software: software, supportHA: supportHA, instanceName: instanceName, payMode: payMode, timeSpan: timeSpan, timeUnit: timeUnit, loginSettings: loginSettings, vpcSettings: vpcSettings, resourceSpec: resourceSpec, cosSettings: cosSettings, placement: placement, sgId: sgId, preExecutedFileSettings: preExecutedFileSettings, autoRenew: autoRenew, clientToken: clientToken, needMasterWan: needMasterWan, remoteLoginAtCreate: remoteLoginAtCreate, checkSecurity: checkSecurity, extendFsField: extendFsField, tags: tags, disasterRecoverGroupIds: disasterRecoverGroupIds, cbsEncrypt: cbsEncrypt, metaType: metaType, unifyMetaInstanceId: unifyMetaInstanceId, metaDBInfo: metaDBInfo, applicationRole: applicationRole, sceneName: sceneName, externalService: externalService, versionID: versionID, multiZone: multiZone, multiZoneSettings: multiZoneSettings), region: region, logger: logger, on: eventLoop)
    }

    /// 创建EMR实例
    ///
    /// 创建EMR集群实例
    @inlinable
    public func createInstance(productId: UInt64, software: [String], supportHA: UInt64, instanceName: String, payMode: UInt64, timeSpan: UInt64, timeUnit: String, loginSettings: LoginSettings, vpcSettings: VPCSettings? = nil, resourceSpec: NewResourceSpec? = nil, cosSettings: COSSettings? = nil, placement: Placement? = nil, sgId: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, autoRenew: UInt64? = nil, clientToken: String? = nil, needMasterWan: String? = nil, remoteLoginAtCreate: Int64? = nil, checkSecurity: Int64? = nil, extendFsField: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, cbsEncrypt: UInt64? = nil, metaType: String? = nil, unifyMetaInstanceId: String? = nil, metaDBInfo: CustomMetaInfo? = nil, applicationRole: String? = nil, sceneName: String? = nil, externalService: [ExternalService]? = nil, versionID: Int64? = nil, multiZone: Bool? = nil, multiZoneSettings: [MultiZoneSetting]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        try await self.createInstance(.init(productId: productId, software: software, supportHA: supportHA, instanceName: instanceName, payMode: payMode, timeSpan: timeSpan, timeUnit: timeUnit, loginSettings: loginSettings, vpcSettings: vpcSettings, resourceSpec: resourceSpec, cosSettings: cosSettings, placement: placement, sgId: sgId, preExecutedFileSettings: preExecutedFileSettings, autoRenew: autoRenew, clientToken: clientToken, needMasterWan: needMasterWan, remoteLoginAtCreate: remoteLoginAtCreate, checkSecurity: checkSecurity, extendFsField: extendFsField, tags: tags, disasterRecoverGroupIds: disasterRecoverGroupIds, cbsEncrypt: cbsEncrypt, metaType: metaType, unifyMetaInstanceId: unifyMetaInstanceId, metaDBInfo: metaDBInfo, applicationRole: applicationRole, sceneName: sceneName, externalService: externalService, versionID: versionID, multiZone: multiZone, multiZoneSettings: multiZoneSettings), region: region, logger: logger, on: eventLoop)
    }
}
