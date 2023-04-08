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

extension As {
    /// ModifyLaunchConfigurationAttributes请求参数结构体
    public struct ModifyLaunchConfigurationAttributesRequest: TCRequestModel {
        /// 启动配置ID
        public let launchConfigurationId: String

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-8toqc6s3`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        public let imageId: String?

        /// 实例类型列表，不同实例机型指定了不同的资源规格，最多支持10种实例机型。
        /// InstanceType 指定单一实例类型，通过设置 InstanceTypes可以指定多实例类型，并使原有的InstanceType失效。
        public let instanceTypes: [String]?

        /// 实例类型校验策略，在实际修改 InstanceTypes 时发挥作用，取值包括 ALL 和 ANY，默认取值为ANY。
        /// <br><li> ALL，所有实例类型（InstanceType）都可用则通过校验，否则校验报错。
        /// <br><li> ANY，存在任何一个实例类型（InstanceType）可用则通过校验，否则校验报错。
        ///
        /// 实例类型不可用的常见原因包括该实例类型售罄、对应云盘售罄等。
        /// 如果 InstanceTypes 中一款机型不存在或者已下线，则无论 InstanceTypesCheckPolicy 采用何种取值，都会校验报错。
        public let instanceTypesCheckPolicy: String?

        /// 启动配置显示名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        public let launchConfigurationName: String?

        /// 经过 Base64 编码后的自定义数据，最大长度不超过16KB。如果要清空UserData，则指定其为空字符串。
        public let userData: String?

        /// 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的`SecurityGroupId`字段来获取。
        /// 若指定该参数，请至少提供一个安全组，列表顺序有先后。
        public let securityGroupIds: [String]?

        /// 公网带宽相关信息设置。
        /// 当公网出带宽上限为0Mbps时，不支持修改为开通分配公网IP；相应的，当前为开通分配公网IP时，修改的公网出带宽上限值必须大于0Mbps。
        public let internetAccessible: InternetAccessible?

        /// 实例计费类型。具体取值范围如下：
        /// <br><li>POSTPAID_BY_HOUR：按小时后付费
        /// <br><li>SPOTPAID：竞价付费
        /// <br><li>PREPAID：预付费，即包年包月
        public let instanceChargeType: String?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        /// 若修改实例的付费模式为预付费，则该参数必传；从预付费修改为其他付费模式时，本字段原信息会自动丢弃。
        /// 当新增该字段时，必须传递购买实例的时长，其它未传递字段会设置为默认值。
        /// 当修改本字段时，当前付费模式必须为预付费。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 实例的市场相关选项，如竞价实例相关参数。
        /// 若修改实例的付费模式为竞价付费，则该参数必传；从竞价付费修改为其他付费模式时，本字段原信息会自动丢弃。
        /// 当新增该字段时，必须传递竞价相关选项下的竞价出价，其它未传递字段会设置为默认值。
        /// 当修改本字段时，当前付费模式必须为竞价付费。
        public let instanceMarketOptions: InstanceMarketOptionsRequest?

        /// 云盘类型选择策略，取值范围：
        /// <br><li>ORIGINAL：使用设置的云盘类型。
        /// <br><li>AUTOMATIC：自动选择当前可用的云盘类型。
        public let diskTypePolicy: String?

        /// 实例系统盘配置信息。
        public let systemDisk: SystemDisk?

        /// 实例数据盘配置信息。
        /// 最多支持指定11块数据盘。采取整体修改，因此请提供修改后的全部值。
        /// 数据盘类型默认与系统盘类型保持一致。
        public let dataDisks: [DataDisk]?

        /// 云服务器主机名（HostName）的相关设置。
        /// 不支持windows实例设置主机名。
        /// 新增该属性时，必须传递云服务器的主机名，其它未传递字段会设置为默认值。
        public let hostNameSettings: HostNameSettings?

        /// 云服务器（InstanceName）实例名的相关设置。
        /// 如果用户在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 参照此字段进行设置，并传递给 CVM；如果用户未在启动配置中设置此字段，则伸缩组创建出的实例 InstanceName 按照“as-{{ 伸缩组AutoScalingGroupName }}”进行设置，并传递给 CVM。
        /// 新增该属性时，必须传递云服务器的实例名称，其它未传递字段会设置为默认值。
        public let instanceNameSettings: InstanceNameSettings?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。
        public let enhancedService: EnhancedService?

        /// CAM角色名称。可通过DescribeRoleList接口返回值中的roleName获取。
        public let camRoleName: String?

        /// 高性能计算集群ID。<br>
        /// 注意：此字段默认为空。
        public let hpcClusterId: String?

        /// IPv6公网带宽相关信息设置。若新建实例包含IPv6地址，该参数可为新建实例的IPv6地址分配公网带宽。关联启动配置的伸缩组Ipv6AddressCount参数为0时，该参数不会生效。
        public let iPv6InternetAccessible: IPv6InternetAccessible?

        /// 置放群组id，仅支持指定一个。
        public let disasterRecoverGroupIds: [String]?

        public init(launchConfigurationId: String, imageId: String? = nil, instanceTypes: [String]? = nil, instanceTypesCheckPolicy: String? = nil, launchConfigurationName: String? = nil, userData: String? = nil, securityGroupIds: [String]? = nil, internetAccessible: InternetAccessible? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, diskTypePolicy: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, enhancedService: EnhancedService? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil, disasterRecoverGroupIds: [String]? = nil) {
            self.launchConfigurationId = launchConfigurationId
            self.imageId = imageId
            self.instanceTypes = instanceTypes
            self.instanceTypesCheckPolicy = instanceTypesCheckPolicy
            self.launchConfigurationName = launchConfigurationName
            self.userData = userData
            self.securityGroupIds = securityGroupIds
            self.internetAccessible = internetAccessible
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceMarketOptions = instanceMarketOptions
            self.diskTypePolicy = diskTypePolicy
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.hostNameSettings = hostNameSettings
            self.instanceNameSettings = instanceNameSettings
            self.enhancedService = enhancedService
            self.camRoleName = camRoleName
            self.hpcClusterId = hpcClusterId
            self.iPv6InternetAccessible = iPv6InternetAccessible
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case launchConfigurationId = "LaunchConfigurationId"
            case imageId = "ImageId"
            case instanceTypes = "InstanceTypes"
            case instanceTypesCheckPolicy = "InstanceTypesCheckPolicy"
            case launchConfigurationName = "LaunchConfigurationName"
            case userData = "UserData"
            case securityGroupIds = "SecurityGroupIds"
            case internetAccessible = "InternetAccessible"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceMarketOptions = "InstanceMarketOptions"
            case diskTypePolicy = "DiskTypePolicy"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case hostNameSettings = "HostNameSettings"
            case instanceNameSettings = "InstanceNameSettings"
            case enhancedService = "EnhancedService"
            case camRoleName = "CamRoleName"
            case hpcClusterId = "HpcClusterId"
            case iPv6InternetAccessible = "IPv6InternetAccessible"
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
        }
    }

    /// ModifyLaunchConfigurationAttributes返回参数结构体
    public struct ModifyLaunchConfigurationAttributesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改启动配置属性
    ///
    /// 本接口（ModifyLaunchConfigurationAttributes）用于修改启动配置部分属性。
    ///
    /// * 修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    /// * 本接口支持修改部分简单类型。
    @inlinable @discardableResult
    public func modifyLaunchConfigurationAttributes(_ input: ModifyLaunchConfigurationAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLaunchConfigurationAttributesResponse> {
        self.client.execute(action: "ModifyLaunchConfigurationAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改启动配置属性
    ///
    /// 本接口（ModifyLaunchConfigurationAttributes）用于修改启动配置部分属性。
    ///
    /// * 修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    /// * 本接口支持修改部分简单类型。
    @inlinable @discardableResult
    public func modifyLaunchConfigurationAttributes(_ input: ModifyLaunchConfigurationAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLaunchConfigurationAttributesResponse {
        try await self.client.execute(action: "ModifyLaunchConfigurationAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改启动配置属性
    ///
    /// 本接口（ModifyLaunchConfigurationAttributes）用于修改启动配置部分属性。
    ///
    /// * 修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    /// * 本接口支持修改部分简单类型。
    @inlinable @discardableResult
    public func modifyLaunchConfigurationAttributes(launchConfigurationId: String, imageId: String? = nil, instanceTypes: [String]? = nil, instanceTypesCheckPolicy: String? = nil, launchConfigurationName: String? = nil, userData: String? = nil, securityGroupIds: [String]? = nil, internetAccessible: InternetAccessible? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, diskTypePolicy: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, enhancedService: EnhancedService? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil, disasterRecoverGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLaunchConfigurationAttributesResponse> {
        self.modifyLaunchConfigurationAttributes(.init(launchConfigurationId: launchConfigurationId, imageId: imageId, instanceTypes: instanceTypes, instanceTypesCheckPolicy: instanceTypesCheckPolicy, launchConfigurationName: launchConfigurationName, userData: userData, securityGroupIds: securityGroupIds, internetAccessible: internetAccessible, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, instanceMarketOptions: instanceMarketOptions, diskTypePolicy: diskTypePolicy, systemDisk: systemDisk, dataDisks: dataDisks, hostNameSettings: hostNameSettings, instanceNameSettings: instanceNameSettings, enhancedService: enhancedService, camRoleName: camRoleName, hpcClusterId: hpcClusterId, iPv6InternetAccessible: iPv6InternetAccessible, disasterRecoverGroupIds: disasterRecoverGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改启动配置属性
    ///
    /// 本接口（ModifyLaunchConfigurationAttributes）用于修改启动配置部分属性。
    ///
    /// * 修改启动配置后，已经使用该启动配置扩容的存量实例不会发生变更，此后使用该启动配置的新增实例会按照新的配置进行扩容。
    /// * 本接口支持修改部分简单类型。
    @inlinable @discardableResult
    public func modifyLaunchConfigurationAttributes(launchConfigurationId: String, imageId: String? = nil, instanceTypes: [String]? = nil, instanceTypesCheckPolicy: String? = nil, launchConfigurationName: String? = nil, userData: String? = nil, securityGroupIds: [String]? = nil, internetAccessible: InternetAccessible? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceMarketOptions: InstanceMarketOptionsRequest? = nil, diskTypePolicy: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, hostNameSettings: HostNameSettings? = nil, instanceNameSettings: InstanceNameSettings? = nil, enhancedService: EnhancedService? = nil, camRoleName: String? = nil, hpcClusterId: String? = nil, iPv6InternetAccessible: IPv6InternetAccessible? = nil, disasterRecoverGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLaunchConfigurationAttributesResponse {
        try await self.modifyLaunchConfigurationAttributes(.init(launchConfigurationId: launchConfigurationId, imageId: imageId, instanceTypes: instanceTypes, instanceTypesCheckPolicy: instanceTypesCheckPolicy, launchConfigurationName: launchConfigurationName, userData: userData, securityGroupIds: securityGroupIds, internetAccessible: internetAccessible, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, instanceMarketOptions: instanceMarketOptions, diskTypePolicy: diskTypePolicy, systemDisk: systemDisk, dataDisks: dataDisks, hostNameSettings: hostNameSettings, instanceNameSettings: instanceNameSettings, enhancedService: enhancedService, camRoleName: camRoleName, hpcClusterId: hpcClusterId, iPv6InternetAccessible: iPv6InternetAccessible, disasterRecoverGroupIds: disasterRecoverGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
