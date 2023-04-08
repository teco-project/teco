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

import TecoCore

extension As {
    /// CreateAutoScalingGroup请求参数结构体
    public struct CreateAutoScalingGroupRequest: TCRequestModel {
        /// 伸缩组名称，在您账号中必须唯一。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超55个字节。
        public let autoScalingGroupName: String

        /// 启动配置ID
        public let launchConfigurationId: String

        /// 最大实例数，取值范围为0-2000。
        public let maxSize: UInt64

        /// 最小实例数，取值范围为0-2000。
        public let minSize: UInt64

        /// VPC ID，基础网络则填空字符串
        public let vpcId: String

        /// 默认冷却时间，单位秒，默认值为300
        public let defaultCooldown: UInt64?

        /// 期望实例数，大小介于最小实例数和最大实例数之间
        public let desiredCapacity: UInt64?

        /// 传统负载均衡器ID列表，目前长度上限为20，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let loadBalancerIds: [String]?

        /// 伸缩组内实例所属项目ID。不填为默认项目。
        public let projectId: UInt64?

        /// 应用型负载均衡器列表，目前长度上限为100，LoadBalancerIds 和 ForwardLoadBalancers 二者同时最多只能指定一个
        public let forwardLoadBalancers: [ForwardLoadBalancer]?

        /// 子网ID列表，VPC场景下必须指定子网。多个子网以填写顺序为优先级，依次进行尝试，直至可以成功创建实例。
        public let subnetIds: [String]?

        /// 销毁策略，目前长度上限为1。取值包括 OLDEST_INSTANCE 和 NEWEST_INSTANCE，默认取值为 OLDEST_INSTANCE。
        /// <br><li> OLDEST_INSTANCE 优先销毁伸缩组中最旧的实例。
        /// <br><li> NEWEST_INSTANCE，优先销毁伸缩组中最新的实例。
        public let terminationPolicies: [String]?

        /// 可用区列表，基础网络场景下必须指定可用区。多个可用区以填写顺序为优先级，依次进行尝试，直至可以成功创建实例。
        public let zones: [String]?

        /// 重试策略，取值包括 IMMEDIATE_RETRY、 INCREMENTAL_INTERVALS、NO_RETRY，默认取值为 IMMEDIATE_RETRY。部分成功的伸缩活动判定为一次失败活动。
        /// <br><li> IMMEDIATE_RETRY，立即重试，在较短时间内快速重试，连续失败超过一定次数（5次）后不再重试。
        /// <br><li> INCREMENTAL_INTERVALS，间隔递增重试，随着连续失败次数的增加，重试间隔逐渐增大，重试间隔从秒级到1天不等。
        /// <br><li> NO_RETRY，不进行重试，直到再次收到用户调用或者告警信息后才会重试。
        public let retryPolicy: String?

        /// 可用区校验策略，取值包括 ALL 和 ANY，默认取值为ANY。
        /// <br><li> ALL，所有可用区（Zone）或子网（SubnetId）都可用则通过校验，否则校验报错。
        /// <br><li> ANY，存在任何一个可用区（Zone）或子网（SubnetId）可用则通过校验，否则校验报错。
        ///
        /// 可用区或子网不可用的常见原因包括该可用区CVM实例类型售罄、该可用区CBS云盘售罄、该可用区配额不足、该子网IP不足等。
        /// 如果 Zones/SubnetIds 中可用区或者子网不存在，则无论 ZonesCheckPolicy 采用何种取值，都会校验报错。
        public let zonesCheckPolicy: String?

        /// 标签描述列表。通过指定该参数可以支持绑定标签到伸缩组。同时绑定标签到相应的资源实例。每个伸缩组最多支持30个标签。
        public let tags: [Tag]?

        /// 服务设置，包括云监控不健康替换等服务设置。
        public let serviceSettings: ServiceSettings?

        /// 实例具有IPv6地址数量的配置，取值包括 0、1，默认值为0。
        public let ipv6AddressCount: Int64?

        /// 多可用区/子网策略，取值包括 PRIORITY 和 EQUALITY，默认为 PRIORITY。
        /// <br><li> PRIORITY，按照可用区/子网列表的顺序，作为优先级来尝试创建实例，如果优先级最高的可用区/子网可以创建成功，则总在该可用区/子网创建。
        /// <br><li> EQUALITY：扩容出的实例会打散到多个可用区/子网，保证扩容后的各个可用区/子网实例数相对均衡。
        ///
        /// 与本策略相关的注意点：
        /// <br><li> 当伸缩组为基础网络时，本策略适用于多可用区；当伸缩组为VPC网络时，本策略适用于多子网，此时不再考虑可用区因素，例如四个子网ABCD，其中ABC处于可用区1，D处于可用区2，此时考虑子网ABCD进行排序，而不考虑可用区1、2。
        /// <br><li> 本策略适用于多可用区/子网，不适用于启动配置的多机型。多机型按照优先级策略进行选择。
        /// <br><li> 按照 PRIORITY 策略创建实例时，先保证多机型的策略，后保证多可用区/子网的策略。例如多机型A、B，多子网1、2、3，会按照A1、A2、A3、B1、B2、B3 进行尝试，如果A1售罄，会尝试A2（而非B1）。
        public let multiZoneSubnetPolicy: String?

        /// 伸缩组实例健康检查类型，取值如下：<br><li>CVM：根据实例网络状态判断实例是否处于不健康状态，不健康的网络状态即发生实例 PING 不可达事件，详细判断标准可参考[实例健康检查](https://cloud.tencent.com/document/product/377/8553)<br><li>CLB：根据 CLB 的健康检查状态判断实例是否处于不健康状态，CLB健康检查原理可参考[健康检查](https://cloud.tencent.com/document/product/214/6097) <br>如果选择了`CLB`类型，伸缩组将同时检查实例网络状态与CLB健康检查状态，如果出现实例网络状态不健康，实例将被标记为 UNHEALTHY 状态；如果出现 CLB 健康检查状态异常，实例将被标记为CLB_UNHEALTHY 状态，如果两个异常状态同时出现，实例`HealthStatus`字段将返回 UNHEALTHY|CLB_UNHEALTHY。默认值：CLB
        public let healthCheckType: String?

        /// CLB健康检查宽限期，当扩容的实例进入`IN_SERVICE`后，在宽限期时间范围内将不会被标记为不健康`CLB_UNHEALTHY`。<br>默认值：0。取值范围[0, 7200]，单位：秒。
        public let loadBalancerHealthCheckGracePeriod: UInt64?

        /// 实例分配策略，取值包括 LAUNCH_CONFIGURATION 和 SPOT_MIXED，默认取 LAUNCH_CONFIGURATION。
        /// <br><li> LAUNCH_CONFIGURATION，代表传统的按照启动配置模式。
        /// <br><li> SPOT_MIXED，代表竞价混合模式。目前仅支持启动配置为按量计费模式时使用混合模式，混合模式下，伸缩组将根据设定扩容按量或竞价机型。使用混合模式时，关联的启动配置的计费类型不可被修改。
        public let instanceAllocationPolicy: String?

        /// 竞价混合模式下，各计费类型实例的分配策略。
        /// 仅当 InstanceAllocationPolicy 取 SPOT_MIXED 时可用。
        public let spotMixedAllocationPolicy: SpotMixedAllocationPolicy?

        /// 容量重平衡功能，仅对伸缩组内的竞价实例有效。取值范围：
        /// <br><li> TRUE，开启该功能，当伸缩组内的竞价实例即将被竞价实例服务自动回收前，AS 主动发起竞价实例销毁流程，如果有配置过缩容 hook，则销毁前 hook 会生效。销毁流程启动后，AS 会异步开启一个扩容活动，用于补齐期望实例数。
        /// <br><li> FALSE，不开启该功能，则 AS 等待竞价实例被销毁后才会去扩容补齐伸缩组期望实例数。
        ///
        /// 默认取 FALSE。
        public let capacityRebalance: Bool?

        public init(autoScalingGroupName: String, launchConfigurationId: String, maxSize: UInt64, minSize: UInt64, vpcId: String, defaultCooldown: UInt64? = nil, desiredCapacity: UInt64? = nil, loadBalancerIds: [String]? = nil, projectId: UInt64? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, subnetIds: [String]? = nil, terminationPolicies: [String]? = nil, zones: [String]? = nil, retryPolicy: String? = nil, zonesCheckPolicy: String? = nil, tags: [Tag]? = nil, serviceSettings: ServiceSettings? = nil, ipv6AddressCount: Int64? = nil, multiZoneSubnetPolicy: String? = nil, healthCheckType: String? = nil, loadBalancerHealthCheckGracePeriod: UInt64? = nil, instanceAllocationPolicy: String? = nil, spotMixedAllocationPolicy: SpotMixedAllocationPolicy? = nil, capacityRebalance: Bool? = nil) {
            self.autoScalingGroupName = autoScalingGroupName
            self.launchConfigurationId = launchConfigurationId
            self.maxSize = maxSize
            self.minSize = minSize
            self.vpcId = vpcId
            self.defaultCooldown = defaultCooldown
            self.desiredCapacity = desiredCapacity
            self.loadBalancerIds = loadBalancerIds
            self.projectId = projectId
            self.forwardLoadBalancers = forwardLoadBalancers
            self.subnetIds = subnetIds
            self.terminationPolicies = terminationPolicies
            self.zones = zones
            self.retryPolicy = retryPolicy
            self.zonesCheckPolicy = zonesCheckPolicy
            self.tags = tags
            self.serviceSettings = serviceSettings
            self.ipv6AddressCount = ipv6AddressCount
            self.multiZoneSubnetPolicy = multiZoneSubnetPolicy
            self.healthCheckType = healthCheckType
            self.loadBalancerHealthCheckGracePeriod = loadBalancerHealthCheckGracePeriod
            self.instanceAllocationPolicy = instanceAllocationPolicy
            self.spotMixedAllocationPolicy = spotMixedAllocationPolicy
            self.capacityRebalance = capacityRebalance
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupName = "AutoScalingGroupName"
            case launchConfigurationId = "LaunchConfigurationId"
            case maxSize = "MaxSize"
            case minSize = "MinSize"
            case vpcId = "VpcId"
            case defaultCooldown = "DefaultCooldown"
            case desiredCapacity = "DesiredCapacity"
            case loadBalancerIds = "LoadBalancerIds"
            case projectId = "ProjectId"
            case forwardLoadBalancers = "ForwardLoadBalancers"
            case subnetIds = "SubnetIds"
            case terminationPolicies = "TerminationPolicies"
            case zones = "Zones"
            case retryPolicy = "RetryPolicy"
            case zonesCheckPolicy = "ZonesCheckPolicy"
            case tags = "Tags"
            case serviceSettings = "ServiceSettings"
            case ipv6AddressCount = "Ipv6AddressCount"
            case multiZoneSubnetPolicy = "MultiZoneSubnetPolicy"
            case healthCheckType = "HealthCheckType"
            case loadBalancerHealthCheckGracePeriod = "LoadBalancerHealthCheckGracePeriod"
            case instanceAllocationPolicy = "InstanceAllocationPolicy"
            case spotMixedAllocationPolicy = "SpotMixedAllocationPolicy"
            case capacityRebalance = "CapacityRebalance"
        }
    }

    /// CreateAutoScalingGroup返回参数结构体
    public struct CreateAutoScalingGroupResponse: TCResponseModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建伸缩组
    ///
    /// 本接口（CreateAutoScalingGroup）用于创建伸缩组
    @inlinable
    public func createAutoScalingGroup(_ input: CreateAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAutoScalingGroupResponse> {
        self.client.execute(action: "CreateAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建伸缩组
    ///
    /// 本接口（CreateAutoScalingGroup）用于创建伸缩组
    @inlinable
    public func createAutoScalingGroup(_ input: CreateAutoScalingGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoScalingGroupResponse {
        try await self.client.execute(action: "CreateAutoScalingGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建伸缩组
    ///
    /// 本接口（CreateAutoScalingGroup）用于创建伸缩组
    @inlinable
    public func createAutoScalingGroup(autoScalingGroupName: String, launchConfigurationId: String, maxSize: UInt64, minSize: UInt64, vpcId: String, defaultCooldown: UInt64? = nil, desiredCapacity: UInt64? = nil, loadBalancerIds: [String]? = nil, projectId: UInt64? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, subnetIds: [String]? = nil, terminationPolicies: [String]? = nil, zones: [String]? = nil, retryPolicy: String? = nil, zonesCheckPolicy: String? = nil, tags: [Tag]? = nil, serviceSettings: ServiceSettings? = nil, ipv6AddressCount: Int64? = nil, multiZoneSubnetPolicy: String? = nil, healthCheckType: String? = nil, loadBalancerHealthCheckGracePeriod: UInt64? = nil, instanceAllocationPolicy: String? = nil, spotMixedAllocationPolicy: SpotMixedAllocationPolicy? = nil, capacityRebalance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAutoScalingGroupResponse> {
        self.createAutoScalingGroup(.init(autoScalingGroupName: autoScalingGroupName, launchConfigurationId: launchConfigurationId, maxSize: maxSize, minSize: minSize, vpcId: vpcId, defaultCooldown: defaultCooldown, desiredCapacity: desiredCapacity, loadBalancerIds: loadBalancerIds, projectId: projectId, forwardLoadBalancers: forwardLoadBalancers, subnetIds: subnetIds, terminationPolicies: terminationPolicies, zones: zones, retryPolicy: retryPolicy, zonesCheckPolicy: zonesCheckPolicy, tags: tags, serviceSettings: serviceSettings, ipv6AddressCount: ipv6AddressCount, multiZoneSubnetPolicy: multiZoneSubnetPolicy, healthCheckType: healthCheckType, loadBalancerHealthCheckGracePeriod: loadBalancerHealthCheckGracePeriod, instanceAllocationPolicy: instanceAllocationPolicy, spotMixedAllocationPolicy: spotMixedAllocationPolicy, capacityRebalance: capacityRebalance), region: region, logger: logger, on: eventLoop)
    }

    /// 创建伸缩组
    ///
    /// 本接口（CreateAutoScalingGroup）用于创建伸缩组
    @inlinable
    public func createAutoScalingGroup(autoScalingGroupName: String, launchConfigurationId: String, maxSize: UInt64, minSize: UInt64, vpcId: String, defaultCooldown: UInt64? = nil, desiredCapacity: UInt64? = nil, loadBalancerIds: [String]? = nil, projectId: UInt64? = nil, forwardLoadBalancers: [ForwardLoadBalancer]? = nil, subnetIds: [String]? = nil, terminationPolicies: [String]? = nil, zones: [String]? = nil, retryPolicy: String? = nil, zonesCheckPolicy: String? = nil, tags: [Tag]? = nil, serviceSettings: ServiceSettings? = nil, ipv6AddressCount: Int64? = nil, multiZoneSubnetPolicy: String? = nil, healthCheckType: String? = nil, loadBalancerHealthCheckGracePeriod: UInt64? = nil, instanceAllocationPolicy: String? = nil, spotMixedAllocationPolicy: SpotMixedAllocationPolicy? = nil, capacityRebalance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoScalingGroupResponse {
        try await self.createAutoScalingGroup(.init(autoScalingGroupName: autoScalingGroupName, launchConfigurationId: launchConfigurationId, maxSize: maxSize, minSize: minSize, vpcId: vpcId, defaultCooldown: defaultCooldown, desiredCapacity: desiredCapacity, loadBalancerIds: loadBalancerIds, projectId: projectId, forwardLoadBalancers: forwardLoadBalancers, subnetIds: subnetIds, terminationPolicies: terminationPolicies, zones: zones, retryPolicy: retryPolicy, zonesCheckPolicy: zonesCheckPolicy, tags: tags, serviceSettings: serviceSettings, ipv6AddressCount: ipv6AddressCount, multiZoneSubnetPolicy: multiZoneSubnetPolicy, healthCheckType: healthCheckType, loadBalancerHealthCheckGracePeriod: loadBalancerHealthCheckGracePeriod, instanceAllocationPolicy: instanceAllocationPolicy, spotMixedAllocationPolicy: spotMixedAllocationPolicy, capacityRebalance: capacityRebalance), region: region, logger: logger, on: eventLoop)
    }
}
