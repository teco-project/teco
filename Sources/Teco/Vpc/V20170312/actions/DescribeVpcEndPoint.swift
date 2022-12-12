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

extension Vpc {
    /// DescribeVpcEndPoint请求参数结构体
    public struct DescribeVpcEndPointRequest: TCRequestModel {
        /// 过滤条件。
        /// <li> end-point-service-id- String - （过滤条件）终端节点服务ID。</li>
        /// <li>end-point-name - String - （过滤条件）终端节点实例名称。</li>
        /// <li> end-point-id- String - （过滤条件）终端节点实例ID。</li>
        /// <li> vpc-id- String - （过滤条件）VPC实例ID。</li>
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?
        
        /// 终端节点ID列表。
        public let endPointId: [String]?
        
        public init (filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointId: [String]? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.endPointId = endPointId
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case endPointId = "EndPointId"
        }
    }
    
    /// DescribeVpcEndPoint返回参数结构体
    public struct DescribeVpcEndPointResponse: TCResponseModel {
        /// 终端节点对象。
        public let endPointSet: [EndPoint]
        
        /// 符合查询条件的终端节点个数。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case endPointSet = "EndPointSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询终端节点列表
    ///
    /// 查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(_ input: DescribeVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcEndPointResponse > {
        self.client.execute(action: "DescribeVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询终端节点列表
    ///
    /// 查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(_ input: DescribeVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointResponse {
        try await self.client.execute(action: "DescribeVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
