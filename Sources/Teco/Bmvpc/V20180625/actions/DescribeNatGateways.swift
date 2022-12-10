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

extension Bmvpc {
    /// 获取NAT网关列表
    ///
    /// 获取NAT网关信息，包括NAT网关 ID、网关名称、私有网络、网关并发连接上限、绑定EIP列表等
    @inlinable
    public func describeNatGateways(_ input: DescribeNatGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNatGatewaysResponse > {
        self.client.execute(action: "DescribeNatGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取NAT网关列表
    ///
    /// 获取NAT网关信息，包括NAT网关 ID、网关名称、私有网络、网关并发连接上限、绑定EIP列表等
    @inlinable
    public func describeNatGateways(_ input: DescribeNatGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatGatewaysResponse {
        try await self.client.execute(action: "DescribeNatGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNatGateways请求参数结构体
    public struct DescribeNatGatewaysRequest: TCRequestModel {
        /// NAT网关ID，例如：nat-kdm476mp
        public let natId: String?
        
        /// NAT名称
        public let natName: String?
        
        /// 搜索字段
        public let searchKey: String?
        
        /// 私有网络ID，例如：vpc-kd7d06of
        public let vpcId: String?
        
        /// 起始值
        public let offset: UInt64?
        
        /// 偏移值，默认值为 20
        public let limit: UInt64?
        
        /// NAT所在可用区，形如：ap-guangzhou-2。
        public let zone: String?
        
        /// 排序字段, 支持"CreateTime"排序
        public let orderField: String?
        
        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?
        
        public init (natId: String?, natName: String?, searchKey: String?, vpcId: String?, offset: UInt64?, limit: UInt64?, zone: String?, orderField: String?, orderDirection: String?) {
            self.natId = natId
            self.natName = natName
            self.searchKey = searchKey
            self.vpcId = vpcId
            self.offset = offset
            self.limit = limit
            self.zone = zone
            self.orderField = orderField
            self.orderDirection = orderDirection
        }
        
        enum CodingKeys: String, CodingKey {
            case natId = "NatId"
            case natName = "NatName"
            case searchKey = "SearchKey"
            case vpcId = "VpcId"
            case offset = "Offset"
            case limit = "Limit"
            case zone = "Zone"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }
    }
    
    /// DescribeNatGateways返回参数结构体
    public struct DescribeNatGatewaysResponse: TCResponseModel {
        /// NAT网关信息列表
        public let natGatewayInfoSet: [NatGatewayInfo]
        
        /// 总数目
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case natGatewayInfoSet = "NatGatewayInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}