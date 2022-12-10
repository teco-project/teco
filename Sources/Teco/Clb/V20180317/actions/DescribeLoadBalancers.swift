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
    /// 查询负载均衡实例列表
    ///
    /// 查询一个地域的负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoadBalancersResponse > {
        self.client.execute(action: "DescribeLoadBalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询负载均衡实例列表
    ///
    /// 查询一个地域的负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersResponse {
        try await self.client.execute(action: "DescribeLoadBalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLoadBalancers请求参数结构体
    public struct DescribeLoadBalancersRequest: TCRequestModel {
        /// 负载均衡实例ID。实例ID数量上限为20个。
        public let loadBalancerIds: [String]?
        
        /// 负载均衡实例的网络类型：
        /// OPEN：公网属性， INTERNAL：内网属性。
        public let loadBalancerType: String?
        
        /// 负载均衡实例的类型。1：通用的负载均衡实例，0：传统型负载均衡实例。如果不传此参数，则查询所有类型的负载均衡实例。
        public let forward: Int64?
        
        /// 负载均衡实例的名称。
        public let loadBalancerName: String?
        
        /// 腾讯云为负载均衡实例分配的域名，本参数仅对传统型公网负载均衡才有意义。
        public let domain: String?
        
        /// 负载均衡实例的 VIP 地址，支持多个。
        public let loadBalancerVips: [String]?
        
        /// 负载均衡绑定的后端服务的外网 IP，只支持查询云服务器的公网 IP。
        public let backendPublicIps: [String]?
        
        /// 负载均衡绑定的后端服务的内网 IP，只支持查询云服务器的内网 IP。
        public let backendPrivateIps: [String]?
        
        /// 数据偏移量，默认为0。
        public let offset: Int64?
        
        /// 返回负载均衡实例的数量，默认为20，最大值为100。
        public let limit: Int64?
        
        /// 排序参数，支持以下字段：LoadBalancerName，CreateTime，Domain，LoadBalancerType。
        public let orderBy: String?
        
        /// 1：倒序，0：顺序，默认按照创建时间倒序。
        public let orderType: Int64?
        
        /// 搜索字段，模糊匹配名称、域名、VIP。
        public let searchKey: String?
        
        /// 负载均衡实例所属的项目 ID，可以通过 DescribeProject 接口获取。
        public let projectId: Int64?
        
        /// 负载均衡是否绑定后端服务，0：没有绑定后端服务，1：绑定后端服务，-1：查询全部。
        public let withRs: Int64?
        
        /// 负载均衡实例所属私有网络唯一ID，如 vpc-bhqkbhdx，
        /// 基础网络可传入'0'。
        public let vpcId: String?
        
        /// 安全组ID，如 sg-m1cc****。
        public let securityGroup: String?
        
        /// 主可用区ID，如 ："100001" （对应的是广州一区）。
        public let masterZone: String?
        
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。<br/>`Filter.Name`和`Filter.Values`皆为必填项。详细的过滤条件如下：
        /// <li> charge-type - String - 是否必填：否 - （过滤条件）按照 CLB 的实例计费模式过滤，包括"PREPAID","POSTPAID_BY_HOUR"。</li>
        /// <li> internet-charge-type - String - 是否必填：否 - （过滤条件）按照 CLB 的网络计费模式过滤，包括"BANDWIDTH_PREPAID","TRAFFIC_POSTPAID_BY_HOUR","BANDWIDTH_POSTPAID_BY_HOUR","BANDWIDTH_PACKAGE"。</li>
        /// <li> master-zone-id - String - 是否必填：否 - （过滤条件）按照 CLB 的主可用区ID过滤，如 ："100001" （对应的是广州一区）。</li>
        /// <li> tag-key - String - 是否必填：否 - （过滤条件）按照 CLB 标签的键过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 - （过滤条件）按照CLB标签键值对进行过滤，tag-key使用具体的标签键进行替换。</li>
        /// <li> function-name - String - 是否必填：否 - （过滤条件）按照 CLB 后端绑定的SCF云函数的函数名称过滤。</li>
        /// <li> function-name - String - 是否必填：否 - （过滤条件）按照 CLB 后端绑定的SCF云函数的函数名称过滤。</li>
        /// <li> vip-isp - String - 是否必填：否 - （过滤条件）按照 CLB VIP的运营商类型过滤，如："BGP","INTERNAL","CMCC","CTCC","CUCC"等。</li>
        /// <li> sla-type - String - 是否必填：否 - （过滤条件）按照 CLB 的性能容量型规格过滤，包括"clb.c2.medium","clb.c3.small","clb.c3.medium","clb.c4.small","clb.c4.medium","clb.c4.large","clb.c4.xlarge"。</li>
        public let filters: [Filter]?
        
        public init (loadBalancerIds: [String]?, loadBalancerType: String?, forward: Int64?, loadBalancerName: String?, domain: String?, loadBalancerVips: [String]?, backendPublicIps: [String]?, backendPrivateIps: [String]?, offset: Int64?, limit: Int64?, orderBy: String?, orderType: Int64?, searchKey: String?, projectId: Int64?, withRs: Int64?, vpcId: String?, securityGroup: String?, masterZone: String?, filters: [Filter]?) {
            self.loadBalancerIds = loadBalancerIds
            self.loadBalancerType = loadBalancerType
            self.forward = forward
            self.loadBalancerName = loadBalancerName
            self.domain = domain
            self.loadBalancerVips = loadBalancerVips
            self.backendPublicIps = backendPublicIps
            self.backendPrivateIps = backendPrivateIps
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderType = orderType
            self.searchKey = searchKey
            self.projectId = projectId
            self.withRs = withRs
            self.vpcId = vpcId
            self.securityGroup = securityGroup
            self.masterZone = masterZone
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case loadBalancerType = "LoadBalancerType"
            case forward = "Forward"
            case loadBalancerName = "LoadBalancerName"
            case domain = "Domain"
            case loadBalancerVips = "LoadBalancerVips"
            case backendPublicIps = "BackendPublicIps"
            case backendPrivateIps = "BackendPrivateIps"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case searchKey = "SearchKey"
            case projectId = "ProjectId"
            case withRs = "WithRs"
            case vpcId = "VpcId"
            case securityGroup = "SecurityGroup"
            case masterZone = "MasterZone"
            case filters = "Filters"
        }
    }
    
    /// DescribeLoadBalancers返回参数结构体
    public struct DescribeLoadBalancersResponse: TCResponseModel {
        /// 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        public let totalCount: UInt64
        
        /// 返回的负载均衡实例数组。
        public let loadBalancerSet: [LoadBalancer]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loadBalancerSet = "LoadBalancerSet"
            case requestId = "RequestId"
        }
    }
}
