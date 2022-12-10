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

extension Apigateway {
    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(_ input: DescribeApiAppBindApisStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiAppBindApisStatusResponse > {
        self.client.execute(action: "DescribeApiAppBindApisStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询应用绑定的Api列表
    ///
    /// 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。
    @inlinable
    public func describeApiAppBindApisStatus(_ input: DescribeApiAppBindApisStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppBindApisStatusResponse {
        try await self.client.execute(action: "DescribeApiAppBindApisStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApiAppBindApisStatus请求参数结构体
    public struct DescribeApiAppBindApisStatusRequest: TCRequestModel {
        /// 应用ID
        public let apiAppId: String
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        /// 过滤条件。支持ApiId、ApiName、ServiceId、Environment 、KeyWord（ 可以匹配name或者ID）。
        public let filters: [Filter]?
        
        public init (apiAppId: String, limit: Int64?, offset: Int64?, filters: [Filter]?) {
            self.apiAppId = apiAppId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case apiAppId = "ApiAppId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeApiAppBindApisStatus返回参数结构体
    public struct DescribeApiAppBindApisStatusResponse: TCResponseModel {
        /// 应用绑定的Api列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiAppApiInfos
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}