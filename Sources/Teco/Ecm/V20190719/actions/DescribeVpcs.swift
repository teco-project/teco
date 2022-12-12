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

extension Ecm {
    /// DescribeVpcs请求参数结构体
    public struct DescribeVpcsRequest: TCRequestModel {
        /// VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        public let vpcIds: [String]?
        
        /// 过滤条件，参数不支持同时指定VpcIds和Filters。
        /// vpc-name - String - VPC实例名称，只支持单值的模糊查询。
        /// vpc-id - String - VPC实例ID形如：vpc-f49l6u0z。
        /// cidr-block - String - vpc的cidr，只支持单值的模糊查询。
        /// region - String - vpc的region。
        /// tag-key - String -是否必填：否- 按照标签键进行过滤。
        /// tag:tag-key - String - 是否必填：否 - 按照标签键值对进行过滤。
        public let filters: [Filter]?
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 返回数量
        public let limit: UInt64?
        
        /// 地域
        public let ecmRegion: String?
        
        /// 排序方式：time时间倒序, default按照网络规划排序
        public let sort: String?
        
        public init (vpcIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil, sort: String? = nil) {
            self.vpcIds = vpcIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.ecmRegion = ecmRegion
            self.sort = sort
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcIds = "VpcIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case ecmRegion = "EcmRegion"
            case sort = "Sort"
        }
    }
    
    /// DescribeVpcs返回参数结构体
    public struct DescribeVpcsResponse: TCResponseModel {
        /// 符合条件的对象数。
        public let totalCount: UInt64
        
        /// 私有网络对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcSet: [VpcInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcSet = "VpcSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询VPC列表
    ///
    /// 查询私有网络列表
    @inlinable
    public func describeVpcs(_ input: DescribeVpcsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcsResponse > {
        self.client.execute(action: "DescribeVpcs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询VPC列表
    ///
    /// 查询私有网络列表
    @inlinable
    public func describeVpcs(_ input: DescribeVpcsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcsResponse {
        try await self.client.execute(action: "DescribeVpcs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
