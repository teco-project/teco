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

extension Emr {
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequestModel {
        /// EMR产品版本名称如EMR-V2.3.0 表示2.3.0版本的EMR， 当前支持产品版本名称查询：[产品版本名称](https://cloud.tencent.com/document/product/589/66338)
        public let productVersion: String

        /// 是否开启节点高可用。取值范围：
        /// <li>true：表示开启节点高可用。</li>
        /// <li>false：表示不开启节点高可用。</li>
        public let enableSupportHAFlag: Bool

        /// 实例名称。
        /// <li>长度限制为6-36个字符。</li>
        /// <li>只允许包含中文、字母、数字、-、_。</li>
        public let instanceName: String

        /// 实例计费模式。取值范围：
        /// <li>PREPAID：预付费，即包年包月。</li>
        /// <li>POSTPAID_BY_HOUR：按小时后付费。</li>
        public let instanceChargeType: String

        /// 实例登录设置。通过该参数可以设置所购买节点的登录方式密码或者密钥。
        /// <li>设置密钥时，密码仅用于组件原生WebUI快捷入口登录。</li>
        /// <li>未设置密钥时，密码用于登录所购节点以及组件原生WebUI快捷入口登录。</li>
        public let loginSettings: LoginSettings

        /// 集群应用场景以及支持部署组件配置
        public let sceneSoftwareConfig: SceneSoftwareConfig

        /// 即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        public let securityGroupIds: [String]?

        /// [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
        public let scriptBootstrapActionConfig: [ScriptBootstrapActionConfig]?

        /// 唯一随机标识，时效性为5分钟，需要调用者指定 防止客户端重复创建资源，例如 a9a90aa6-751a-41b6-aad6-fae360632808
        public let clientToken: String?

        /// 是否开启集群Master节点公网。取值范围：
        /// <li>NEED_MASTER_WAN：表示开启集群Master节点公网。</li>
        /// <li>NOT_NEED_MASTER_WAN：表示不开启。</li>默认开启集群Master节点公网。
        public let needMasterWan: String?

        /// 是否开启外网远程登录。（在SecurityGroupId不为空时，该参数无效）不填默认为不开启 取值范围：
        /// <li>true：表示开启</li>
        /// <li>false：表示不开启</li>
        public let enableRemoteLoginFlag: Bool?

        /// 是否开启Kerberos认证。默认不开启 取值范围：
        /// <li>true：表示开启</li>
        /// <li>false：表示不开启</li>
        public let enableKerberosFlag: Bool?

        /// [自定义软件配置](https://cloud.tencent.com/document/product/589/35655?from_cn_redirect=1)
        public let customConf: String?

        /// 标签描述列表。通过指定该参数可以同时绑定标签到相应的实例。
        public let tags: [Tag]?

        /// 分散置放群组ID列表，当前只支持指定一个。
        /// 该参数可以通过调用 [DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/product/213/17810)的返回值中的DisasterRecoverGroupId字段来获取。
        public let disasterRecoverGroupIds: [String]?

        /// 是否开启集群维度CBS加密。默认不加密 取值范围：
        /// <li>true：表示加密</li>
        /// <li>false：表示不加密</li>
        public let enableCbsEncryptFlag: Bool?

        /// MetaDB信息，当MetaType选择EMR_NEW_META时，MetaDataJdbcUrl MetaDataUser MetaDataPass UnifyMetaInstanceId不用填
        /// 当MetaType选择EMR_EXIT_META时，填写UnifyMetaInstanceId
        /// 当MetaType选择USER_CUSTOM_META时，填写MetaDataJdbcUrl MetaDataUser MetaDataPass
        public let metaDBInfo: CustomMetaDBInfo?

        /// 共享组件信息
        public let dependService: [DependService]?

        /// 节点资源的规格，有几个可用区，就填几个，按顺序第一个为主可用区，第二个为备可用区，第三个为仲裁可用区。如果没有开启跨AZ，则长度为1即可。
        public let zoneResourceConfiguration: [ZoneResourceConfiguration]?

        public init(productVersion: String, enableSupportHAFlag: Bool, instanceName: String, instanceChargeType: String, loginSettings: LoginSettings, sceneSoftwareConfig: SceneSoftwareConfig, instanceChargePrepaid: InstanceChargePrepaid? = nil, securityGroupIds: [String]? = nil, scriptBootstrapActionConfig: [ScriptBootstrapActionConfig]? = nil, clientToken: String? = nil, needMasterWan: String? = nil, enableRemoteLoginFlag: Bool? = nil, enableKerberosFlag: Bool? = nil, customConf: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, enableCbsEncryptFlag: Bool? = nil, metaDBInfo: CustomMetaDBInfo? = nil, dependService: [DependService]? = nil, zoneResourceConfiguration: [ZoneResourceConfiguration]? = nil) {
            self.productVersion = productVersion
            self.enableSupportHAFlag = enableSupportHAFlag
            self.instanceName = instanceName
            self.instanceChargeType = instanceChargeType
            self.loginSettings = loginSettings
            self.sceneSoftwareConfig = sceneSoftwareConfig
            self.instanceChargePrepaid = instanceChargePrepaid
            self.securityGroupIds = securityGroupIds
            self.scriptBootstrapActionConfig = scriptBootstrapActionConfig
            self.clientToken = clientToken
            self.needMasterWan = needMasterWan
            self.enableRemoteLoginFlag = enableRemoteLoginFlag
            self.enableKerberosFlag = enableKerberosFlag
            self.customConf = customConf
            self.tags = tags
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
            self.enableCbsEncryptFlag = enableCbsEncryptFlag
            self.metaDBInfo = metaDBInfo
            self.dependService = dependService
            self.zoneResourceConfiguration = zoneResourceConfiguration
        }

        enum CodingKeys: String, CodingKey {
            case productVersion = "ProductVersion"
            case enableSupportHAFlag = "EnableSupportHAFlag"
            case instanceName = "InstanceName"
            case instanceChargeType = "InstanceChargeType"
            case loginSettings = "LoginSettings"
            case sceneSoftwareConfig = "SceneSoftwareConfig"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case securityGroupIds = "SecurityGroupIds"
            case scriptBootstrapActionConfig = "ScriptBootstrapActionConfig"
            case clientToken = "ClientToken"
            case needMasterWan = "NeedMasterWan"
            case enableRemoteLoginFlag = "EnableRemoteLoginFlag"
            case enableKerberosFlag = "EnableKerberosFlag"
            case customConf = "CustomConf"
            case tags = "Tags"
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
            case enableCbsEncryptFlag = "EnableCbsEncryptFlag"
            case metaDBInfo = "MetaDBInfo"
            case dependService = "DependService"
            case zoneResourceConfiguration = "ZoneResourceConfiguration"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponseModel {
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

    /// 创建EMR集群实例
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建EMR集群实例
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建EMR集群实例
    @inlinable
    public func createCluster(productVersion: String, enableSupportHAFlag: Bool, instanceName: String, instanceChargeType: String, loginSettings: LoginSettings, sceneSoftwareConfig: SceneSoftwareConfig, instanceChargePrepaid: InstanceChargePrepaid? = nil, securityGroupIds: [String]? = nil, scriptBootstrapActionConfig: [ScriptBootstrapActionConfig]? = nil, clientToken: String? = nil, needMasterWan: String? = nil, enableRemoteLoginFlag: Bool? = nil, enableKerberosFlag: Bool? = nil, customConf: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, enableCbsEncryptFlag: Bool? = nil, metaDBInfo: CustomMetaDBInfo? = nil, dependService: [DependService]? = nil, zoneResourceConfiguration: [ZoneResourceConfiguration]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(productVersion: productVersion, enableSupportHAFlag: enableSupportHAFlag, instanceName: instanceName, instanceChargeType: instanceChargeType, loginSettings: loginSettings, sceneSoftwareConfig: sceneSoftwareConfig, instanceChargePrepaid: instanceChargePrepaid, securityGroupIds: securityGroupIds, scriptBootstrapActionConfig: scriptBootstrapActionConfig, clientToken: clientToken, needMasterWan: needMasterWan, enableRemoteLoginFlag: enableRemoteLoginFlag, enableKerberosFlag: enableKerberosFlag, customConf: customConf, tags: tags, disasterRecoverGroupIds: disasterRecoverGroupIds, enableCbsEncryptFlag: enableCbsEncryptFlag, metaDBInfo: metaDBInfo, dependService: dependService, zoneResourceConfiguration: zoneResourceConfiguration), region: region, logger: logger, on: eventLoop)
    }

    /// 创建EMR集群实例
    @inlinable
    public func createCluster(productVersion: String, enableSupportHAFlag: Bool, instanceName: String, instanceChargeType: String, loginSettings: LoginSettings, sceneSoftwareConfig: SceneSoftwareConfig, instanceChargePrepaid: InstanceChargePrepaid? = nil, securityGroupIds: [String]? = nil, scriptBootstrapActionConfig: [ScriptBootstrapActionConfig]? = nil, clientToken: String? = nil, needMasterWan: String? = nil, enableRemoteLoginFlag: Bool? = nil, enableKerberosFlag: Bool? = nil, customConf: String? = nil, tags: [Tag]? = nil, disasterRecoverGroupIds: [String]? = nil, enableCbsEncryptFlag: Bool? = nil, metaDBInfo: CustomMetaDBInfo? = nil, dependService: [DependService]? = nil, zoneResourceConfiguration: [ZoneResourceConfiguration]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(productVersion: productVersion, enableSupportHAFlag: enableSupportHAFlag, instanceName: instanceName, instanceChargeType: instanceChargeType, loginSettings: loginSettings, sceneSoftwareConfig: sceneSoftwareConfig, instanceChargePrepaid: instanceChargePrepaid, securityGroupIds: securityGroupIds, scriptBootstrapActionConfig: scriptBootstrapActionConfig, clientToken: clientToken, needMasterWan: needMasterWan, enableRemoteLoginFlag: enableRemoteLoginFlag, enableKerberosFlag: enableKerberosFlag, customConf: customConf, tags: tags, disasterRecoverGroupIds: disasterRecoverGroupIds, enableCbsEncryptFlag: enableCbsEncryptFlag, metaDBInfo: metaDBInfo, dependService: dependService, zoneResourceConfiguration: zoneResourceConfiguration), region: region, logger: logger, on: eventLoop)
    }
}
