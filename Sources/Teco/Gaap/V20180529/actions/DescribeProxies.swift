//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gaap {
    /// 查询通道实例列表
    ///
    /// 本接口（DescribeProxies）用于查询通道实例列表。
    @inlinable
    public func describeProxies(_ input: DescribeProxiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxiesResponse > {
        self.client.execute(action: "DescribeProxies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询通道实例列表
    ///
    /// 本接口（DescribeProxies）用于查询通道实例列表。
    @inlinable
    public func describeProxies(_ input: DescribeProxiesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxiesResponse {
        try await self.client.execute(action: "DescribeProxies", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProxies请求参数结构体
    public struct DescribeProxiesRequest: TCRequestModel {
        /// （旧参数，请切换到ProxyIds）按照一个或者多个实例ID查询。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        public let instanceIds: [String]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?
        
        /// 过滤条件。   
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定InstanceIds和Filters。 
        /// ProjectId - String - 是否必填：否 -（过滤条件）按照项目ID过滤。   
        /// AccessRegion - String - 是否必填：否 - （过滤条件）按照接入地域过滤。    
        /// RealServerRegion - String - 是否必填：否 - （过滤条件）按照源站地域过滤。
        /// GroupId - String - 是否必填：否 - （过滤条件）按照通道组ID过滤。
        /// IPAddressVersion - String - 是否必填：否 - （过滤条件）按照IP版本过滤。
        /// PackageType - String - 是否必填：否 - （过滤条件）按照通道套餐类型过滤。
        public let filters: [Filter]?
        
        /// （新参数，替代InstanceIds）按照一个或者多个实例ID查询。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        public let proxyIds: [String]?
        
        /// 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        /// 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，通道会被拉取出来。
        public let tagSet: [TagPair]?
        
        /// 当该字段为1时，仅拉取非通道组的通道，
        /// 当该字段为0时，仅拉取通道组的通道，
        /// 不存在该字段时，拉取所有通道，包括独立通道和通道组通道。
        public let independent: Int64?
        
        /// 输出通道列表的排列顺序。取值范围：
        /// asc：升序排列；
        /// desc：降序排列。
        /// 默认为降序。
        public let order: String?
        
        /// 通道列表排序的依据字段。取值范围：
        /// create_time：依据通道的创建时间排序；
        /// proxy_id：依据通道的ID排序；
        /// bandwidth：依据通道带宽上限排序；
        /// concurrent_connections：依据通道并发排序；
        /// 默认按通道创建时间排序。
        public let orderField: String?
        
        public init (instanceIds: [String]?, offset: UInt64?, limit: UInt64?, filters: [Filter]?, proxyIds: [String]?, tagSet: [TagPair]?, independent: Int64?, order: String?, orderField: String?) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.proxyIds = proxyIds
            self.tagSet = tagSet
            self.independent = independent
            self.order = order
            self.orderField = orderField
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case proxyIds = "ProxyIds"
            case tagSet = "TagSet"
            case independent = "Independent"
            case order = "Order"
            case orderField = "OrderField"
        }
    }
    
    /// DescribeProxies返回参数结构体
    public struct DescribeProxiesResponse: TCResponseModel {
        /// 通道个数。
        public let totalCount: Int64
        
        /// （旧参数，请切换到ProxySet）通道实例信息列表。
        public let instanceSet: [ProxyInfo]
        
        /// （新参数）通道实例信息列表。
        public let proxySet: [ProxyInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case proxySet = "ProxySet"
            case requestId = "RequestId"
        }
    }
}