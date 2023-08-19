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

extension As {
    /// UpgradeLaunchConfiguration请求参数结构体
    public struct UpgradeLaunchConfigurationRequest: TCRequest {
        /// 启动配置ID。
        public let launchConfigurationId: String

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-8toqc6s3`。镜像类型分为四种：
        ///
        /// - 公共镜像
        /// - 自定义镜像
        /// - 共享镜像
        /// - 服务市场镜像
        ///
        /// 可通过以下方式获取可用的镜像ID：
        ///
        /// - `公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。
        /// - 通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。
        public let imageId: String

        /// 实例机型列表，不同实例机型指定了不同的资源规格，最多支持5种实例机型。
        public let instanceTypes: [String]

        /// 启动配置显示名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        public let launchConfigurationName: String

        /// 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘，最多支持指定11块数据盘。
        public let dataDisks: [DataDisk]?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        public let enhancedService: EnhancedService?

        /// 实例计费类型，CVM默认值按照POSTPAID_BY_HOUR处理。
        ///
        /// - POSTPAID_BY_HOUR：按小时后付费
        /// - SPOTPAID：竞价付费
        /// - PREPAID：预付费，即包年包月
        public let instanceChargeType: String?

        /// 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        public let instanceMarketOptions: InstanceMarketOptionsRequest?

        /// 实例类型校验策略，取值包括 ALL 和 ANY，默认取值为ANY。
        ///
        /// - ALL，所有实例类型（InstanceType）都可用则通过校验，否则校验报错。
        /// - ANY，存在任何一个实例类型（InstanceType）可用则通过校验，否则校验报错。
        ///
        /// 实例类型不可用的常见原因包括该实例类型售罄、对应云盘售罄等。
        /// 如果 InstanceTypes 中一款机型不存在或者已下线，则无论 InstanceTypesCheckPolicy 采用何种取值，都会校验报错。
        public let instanceTypesCheckPolicy: String?

        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?

        /// 该参数已失效，请勿使用。升级启动配置接口无法修改或覆盖 LoginSettings 参数，升级后 LoginSettings 不会发生变化。
        public let loginSettings: LoginSettings?

        /// 实例所属项目ID。不填为默认项目。
        public let projectId: Int64?

        /// 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的`SecurityGroupId`字段来获取。若不指定该参数，则默认不绑定安全组。
        public let securityGroupIds: [String]?

        /// 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?

        /// 经过 Base64 编码后的自定义数据，最大长度不超过16KB。
        public let userData: String?

        /// 标签列表。通过指定该参数，可以为扩容的实例绑定标签。最多支持指定10个标签。
        public let instanceTags: [InstanceTag]?

        /// CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        public let camRoleName: String?

        /// 云服务器主机名（HostName）的相关设置。
        public let hostNameSettings: HostNameSettings?

        /// 云服务器实例名（InstanceName）的相关设置。
        public let instanceNameSettings: InstanceNameSettings?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 云盘类型选择策略，取值范围：
        ///
        /// - ORIGINAL：使用设置的云盘类型
        /// - AUTOMATIC：自动选择当前可用的云盘类型
        public let diskTypePolicy: String?

        /// IPv6公网带宽相关信息设置。若新建实例包含IPv6地址，该参数可为新建实例的IPv6地址分配公网带宽。关联启动配置的伸缩组Ipv6AddressCount参数为0时，该参数不会生效。
        public let iPv6InternetAccessible: IPv6InternetAccessible?

        public init(launchConfigurationId: String, imageId: String, instanceTypes: [String], launchConfigurationName: String, dataDisks: [DataDisk]? = nil, enhancedService: EnhancedService? = nil, instanceChargeType: String? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, instanceTypesCheckPolicy: String? = nil, internetAccessible: InternetAccessible? = nil, loginSettings: LoginSettings? = nil, projectId: Int64? = nil, securityGroupIds: [String]? = nil, systemDisk: SystemDisk? = nil, userData: String? = nil, instanceTags: [InstanceTag]? = nil, camRoleName: String? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, diskTypePolicy: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil) {
            self.launchConfigurationId = launchConfigurationId
            self.imageId = imageId
            self.instanceTypes = instanceTypes
            self.launchConfigurationName = launchConfigurationName
            self.dataDisks = dataDisks
            self.enhancedService = enhancedService
            self.instanceChargeType = instanceChargeType
            self.instanceMarketOptions = instanceMarketOptions
            self.instanceTypesCheckPolicy = instanceTypesCheckPolicy
            self.internetAccessible = internetAccessible
            self.loginSettings = loginSettings
            self.projectId = projectId
            self.securityGroupIds = securityGroupIds
            self.systemDisk = systemDisk
            self.userData = userData
            self.instanceTags = instanceTags
            self.camRoleName = camRoleName
            self.hostNameSettings = hostNameSettings
            self.instanceNameSettings = instanceNameSettings
            self.instanceChargePrepaid = instanceChargePrepaid
            self.diskTypePolicy = diskTypePolicy
            self.iPv6InternetAccessible = iPv6InternetAccessible
        }

        enum CodingKeys: String, CodingKey {
            case launchConfigurationId = "LaunchConfigurationId"
            case imageId = "ImageId"
            case instanceTypes = "InstanceTypes"
            case launchConfigurationName = "LaunchConfigurationName"
            case dataDisks = "DataDisks"
            case enhancedService = "EnhancedService"
            case instanceChargeType = "InstanceChargeType"
            case instanceMarketOptions = "InstanceMarketOptions"
            case instanceTypesCheckPolicy = "InstanceTypesCheckPolicy"
            case internetAccessible = "InternetAccessible"
            case loginSettings = "LoginSettings"
            case projectId = "ProjectId"
            case securityGroupIds = "SecurityGroupIds"
            case systemDisk = "SystemDisk"
            case userData = "UserData"
            case instanceTags = "InstanceTags"
            case camRoleName = "CamRoleName"
            case hostNameSettings = "HostNameSettings"
            case instanceNameSettings = "InstanceNameSettings"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case diskTypePolicy = "DiskTypePolicy"
            case iPv6InternetAccessible = "IPv6InternetAccessible"
        }
    }

    /// UpgradeLaunchConfiguration返回参数结构体
    public struct UpgradeLaunchConfigurationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 升级启动配置
    ///
    /// 本接口（UpgradeLaunchConfiguration）用于升级启动配置。
    ///
    /// * 本接口用于升级启动配置，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    /// * 升级修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    @inlinable @discardableResult
    public func upgradeLaunchConfiguration(_ input: UpgradeLaunchConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeLaunchConfigurationResponse> {
        self.client.execute(action: "UpgradeLaunchConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级启动配置
    ///
    /// 本接口（UpgradeLaunchConfiguration）用于升级启动配置。
    ///
    /// * 本接口用于升级启动配置，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    /// * 升级修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    @inlinable @discardableResult
    public func upgradeLaunchConfiguration(_ input: UpgradeLaunchConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeLaunchConfigurationResponse {
        try await self.client.execute(action: "UpgradeLaunchConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级启动配置
    ///
    /// 本接口（UpgradeLaunchConfiguration）用于升级启动配置。
    ///
    /// * 本接口用于升级启动配置，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    /// * 升级修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    @inlinable @discardableResult
    public func upgradeLaunchConfiguration(launchConfigurationId: String, imageId: String, instanceTypes: [String], launchConfigurationName: String, dataDisks: [DataDisk]? = nil, enhancedService: EnhancedService? = nil, instanceChargeType: String? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, instanceTypesCheckPolicy: String? = nil, internetAccessible: InternetAccessible? = nil, loginSettings: LoginSettings? = nil, projectId: Int64? = nil, securityGroupIds: [String]? = nil, systemDisk: SystemDisk? = nil, userData: String? = nil, instanceTags: [InstanceTag]? = nil, camRoleName: String? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, diskTypePolicy: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeLaunchConfigurationResponse> {
        self.upgradeLaunchConfiguration(.init(launchConfigurationId: launchConfigurationId, imageId: imageId, instanceTypes: instanceTypes, launchConfigurationName: launchConfigurationName, dataDisks: dataDisks, enhancedService: enhancedService, instanceChargeType: instanceChargeType, instanceMarketOptions: instanceMarketOptions, instanceTypesCheckPolicy: instanceTypesCheckPolicy, internetAccessible: internetAccessible, loginSettings: loginSettings, projectId: projectId, securityGroupIds: securityGroupIds, systemDisk: systemDisk, userData: userData, instanceTags: instanceTags, camRoleName: camRoleName, hostNameSettings: hostNameSettings, instanceNameSettings: instanceNameSettings, instanceChargePrepaid: instanceChargePrepaid, diskTypePolicy: diskTypePolicy, iPv6InternetAccessible: iPv6InternetAccessible), region: region, logger: logger, on: eventLoop)
    }

    /// 升级启动配置
    ///
    /// 本接口（UpgradeLaunchConfiguration）用于升级启动配置。
    ///
    /// * 本接口用于升级启动配置，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    /// * 升级修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    @inlinable @discardableResult
    public func upgradeLaunchConfiguration(launchConfigurationId: String, imageId: String, instanceTypes: [String], launchConfigurationName: String, dataDisks: [DataDisk]? = nil, enhancedService: EnhancedService? = nil, instanceChargeType: String? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, instanceTypesCheckPolicy: String? = nil, internetAccessible: InternetAccessible? = nil, loginSettings: LoginSettings? = nil, projectId: Int64? = nil, securityGroupIds: [String]? = nil, systemDisk: SystemDisk? = nil, userData: String? = nil, instanceTags: [InstanceTag]? = nil, camRoleName: String? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, diskTypePolicy: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeLaunchConfigurationResponse {
        try await self.upgradeLaunchConfiguration(.init(launchConfigurationId: launchConfigurationId, imageId: imageId, instanceTypes: instanceTypes, launchConfigurationName: launchConfigurationName, dataDisks: dataDisks, enhancedService: enhancedService, instanceChargeType: instanceChargeType, instanceMarketOptions: instanceMarketOptions, instanceTypesCheckPolicy: instanceTypesCheckPolicy, internetAccessible: internetAccessible, loginSettings: loginSettings, projectId: projectId, securityGroupIds: securityGroupIds, systemDisk: systemDisk, userData: userData, instanceTags: instanceTags, camRoleName: camRoleName, hostNameSettings: hostNameSettings, instanceNameSettings: instanceNameSettings, instanceChargePrepaid: instanceChargePrepaid, diskTypePolicy: diskTypePolicy, iPv6InternetAccessible: iPv6InternetAccessible), region: region, logger: logger, on: eventLoop)
    }
}
