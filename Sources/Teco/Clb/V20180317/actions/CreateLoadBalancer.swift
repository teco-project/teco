//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Clb {
    /// 购买负载均衡实例
    ///
    /// 本接口(CreateLoadBalancer)用来创建负载均衡实例（本接口只支持购买按量计费的负载均衡，包年包月的负载均衡请通过控制台购买）。为了使用负载均衡服务，您必须购买一个或多个负载均衡实例。成功调用该接口后，会返回负载均衡实例的唯一 ID。负载均衡实例的类型分为：公网、内网。详情可参考产品说明中的产品类型。
    /// 注意：(1)指定可用区申请负载均衡、跨zone容灾(仅香港支持)【如果您需要体验该功能，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category)】；(2)目前只有北京、上海、广州支持IPv6；(3)一个账号在每个地域的默认购买配额为：公网100个，内网100个。
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable
    public func createLoadBalancer(_ input: CreateLoadBalancerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLoadBalancerResponse > {
        self.client.execute(action: "CreateLoadBalancer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 购买负载均衡实例
    ///
    /// 本接口(CreateLoadBalancer)用来创建负载均衡实例（本接口只支持购买按量计费的负载均衡，包年包月的负载均衡请通过控制台购买）。为了使用负载均衡服务，您必须购买一个或多个负载均衡实例。成功调用该接口后，会返回负载均衡实例的唯一 ID。负载均衡实例的类型分为：公网、内网。详情可参考产品说明中的产品类型。
    /// 注意：(1)指定可用区申请负载均衡、跨zone容灾(仅香港支持)【如果您需要体验该功能，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category)】；(2)目前只有北京、上海、广州支持IPv6；(3)一个账号在每个地域的默认购买配额为：公网100个，内网100个。
    /// 本接口为异步接口，接口成功返回后，可使用 DescribeLoadBalancers 接口查询负载均衡实例的状态（如创建中、正常），以确定是否创建成功。
    @inlinable
    public func createLoadBalancer(_ input: CreateLoadBalancerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerResponse {
        try await self.client.execute(action: "CreateLoadBalancer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateLoadBalancer请求参数结构体
    public struct CreateLoadBalancerRequest: TCRequestModel {
        /// 负载均衡实例的网络类型：
        /// OPEN：公网属性， INTERNAL：内网属性。
        public let loadBalancerType: String
        
        /// 负载均衡实例的类型。1：通用的负载均衡实例，目前只支持传入1。
        public let forward: Int64?
        
        /// 负载均衡实例的名称，只在创建一个实例的时候才会生效。规则：1-60 个英文、汉字、数字、连接线“-”或下划线“_”。
        /// 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        public let loadBalancerName: String?
        
        /// 负载均衡后端目标设备所属的网络 ID，如vpc-12345678，可以通过 [DescribeVpcEx](https://cloud.tencent.com/document/product/215/1372) 接口获取。 不填此参数则默认为DefaultVPC。创建内网负载均衡实例时，此参数必填。
        public let vpcId: String?
        
        /// 在私有网络内购买内网负载均衡实例的情况下，必须指定子网 ID，内网负载均衡实例的 VIP 将从这个子网中产生。创建内网负载均衡实例时，此参数必填。
        public let subnetId: String?
        
        /// 负载均衡实例所属的项目 ID，可以通过 [DescribeProject](https://cloud.tencent.com/document/product/378/4400) 接口获取。不填此参数则视为默认项目。
        public let projectId: Int64?
        
        /// 仅适用于公网负载均衡。IP版本，可取值：IPV4、IPV6、IPv6FullChain，默认值 IPV4。说明：取值为IPV6表示为IPV6 NAT64版本；取值为IPv6FullChain，表示为IPv6版本。
        public let addressIPVersion: String?
        
        /// 创建负载均衡的个数，默认值 1。
        public let number: UInt64?
        
        /// 仅适用于公网负载均衡。设置跨可用区容灾时的主可用区ID，例如 100001 或 ap-guangzhou-1
        /// 注：主可用区是需要承载流量的可用区，备可用区默认不承载流量，主可用区不可用时才使用备可用区，平台将为您自动选择最佳备可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主可用区的列表。
        public let masterZoneId: String?
        
        /// 仅适用于公网负载均衡。可用区ID，指定可用区以创建负载均衡实例。如：ap-guangzhou-1。
        public let zoneId: String?
        
        /// 仅适用于公网负载均衡。负载均衡的网络计费模式。
        public let internetAccessible: InternetAccessible
        
        /// 仅适用于公网负载均衡。CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通，如果不指定本参数，则默认使用BGP。可通过 DescribeSingleIsp 接口查询一个地域所支持的Isp。如果指定运营商，则网络计费式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。
        public let vipIsp: String?
        
        /// 购买负载均衡的同时，给负载均衡打上标签，最大支持20个标签键值对。
        public let tags: [TagInfo]?
        
        /// 指定VIP申请负载均衡。指定此参数后：
        /// <ul><li>若创建共享型集群的公网负载均衡实例，则上述的VpcId选填，若实例是IPv6类型的，则SubnetId必填；若是IPv4、IPv6 NAT64类型，则SubnetId不填。</li>
        /// <li>若创建独占型集群的公网负载均衡实例，则上述的VpcId选填，若实例是IPv6类型的，则SubnetId必填；若是IPv4、IPv6 NAT64类型，则SubnetId不填。
        /// </li></ul>
        public let vip: String?
        
        /// 带宽包ID，指定此参数时，网络计费方式（InternetAccessible.InternetChargeType）只支持按带宽包计费（BANDWIDTH_PACKAGE）。
        public let bandwidthPackageId: String?
        
        /// 独占集群信息。若创建独占集群负载均衡实例，则此参数必填。
        public let exclusiveCluster: ExclusiveCluster
        
        /// 创建性能容量型 CLB 实例。
        /// <ul><li>若需要创建性能容量型 CLB 实例，则此参数必填，且取值为：SLA，表示创建按量计费模式下的默认性能保障规格的性能容量型实例。</li>
        /// <li>若需要创建共享型 CLB 实例，则无需填写此参数。</li></ul>
        public let slaType: String?
        
        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?
        
        /// 是否支持绑定跨地域/跨Vpc绑定IP的功能。
        public let snatPro: Bool?
        
        /// 开启绑定跨地域/跨Vpc绑定IP的功能后，创建SnatIp。
        public let snatIps: [SnatIp]?
        
        /// Stgw独占集群的标签。
        public let clusterTag: String?
        
        /// 仅适用于公网负载均衡。设置跨可用区容灾时的备可用区ID，例如 100001 或 ap-guangzhou-1
        /// 注：备可用区是主可用区故障后，需要承载流量的可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主/备可用区的列表。
        public let slaveZoneId: String?
        
        /// EIP 的唯一 ID，形如：eip-11112222，仅适用于内网负载均衡绑定EIP。
        public let eipAddressId: String?
        
        /// Target是否放通来自CLB的流量。开启放通（true）：只验证CLB上的安全组；不开启放通（false）：需同时验证CLB和后端实例上的安全组。
        public let loadBalancerPassToTarget: Bool?
        
        public init (loadBalancerType: String, forward: Int64?, loadBalancerName: String?, vpcId: String?, subnetId: String?, projectId: Int64?, addressIPVersion: String?, number: UInt64?, masterZoneId: String?, zoneId: String?, internetAccessible: InternetAccessible, vipIsp: String?, tags: [TagInfo]?, vip: String?, bandwidthPackageId: String?, exclusiveCluster: ExclusiveCluster, slaType: String?, clientToken: String?, snatPro: Bool?, snatIps: [SnatIp]?, clusterTag: String?, slaveZoneId: String?, eipAddressId: String?, loadBalancerPassToTarget: Bool?) {
            self.loadBalancerType = loadBalancerType
            self.forward = forward
            self.loadBalancerName = loadBalancerName
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.projectId = projectId
            self.addressIPVersion = addressIPVersion
            self.number = number
            self.masterZoneId = masterZoneId
            self.zoneId = zoneId
            self.internetAccessible = internetAccessible
            self.vipIsp = vipIsp
            self.tags = tags
            self.vip = vip
            self.bandwidthPackageId = bandwidthPackageId
            self.exclusiveCluster = exclusiveCluster
            self.slaType = slaType
            self.clientToken = clientToken
            self.snatPro = snatPro
            self.snatIps = snatIps
            self.clusterTag = clusterTag
            self.slaveZoneId = slaveZoneId
            self.eipAddressId = eipAddressId
            self.loadBalancerPassToTarget = loadBalancerPassToTarget
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerType = "LoadBalancerType"
            case forward = "Forward"
            case loadBalancerName = "LoadBalancerName"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case addressIPVersion = "AddressIPVersion"
            case number = "Number"
            case masterZoneId = "MasterZoneId"
            case zoneId = "ZoneId"
            case internetAccessible = "InternetAccessible"
            case vipIsp = "VipIsp"
            case tags = "Tags"
            case vip = "Vip"
            case bandwidthPackageId = "BandwidthPackageId"
            case exclusiveCluster = "ExclusiveCluster"
            case slaType = "SlaType"
            case clientToken = "ClientToken"
            case snatPro = "SnatPro"
            case snatIps = "SnatIps"
            case clusterTag = "ClusterTag"
            case slaveZoneId = "SlaveZoneId"
            case eipAddressId = "EipAddressId"
            case loadBalancerPassToTarget = "LoadBalancerPassToTarget"
        }
    }
    
    /// CreateLoadBalancer返回参数结构体
    public struct CreateLoadBalancerResponse: TCResponseModel {
        /// 由负载均衡实例唯一 ID 组成的数组。
        /// 存在某些场景，如创建出现延迟时，此字段可能返回为空；此时可以根据接口返回的RequestId或DealName参数，通过DescribeTaskStatus接口查询创建的资源ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerIds: [String]?
        
        /// 订单号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }
}
