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

extension Waf {
    /// DescribeAccessExports请求参数结构体
    public struct DescribeAccessExportsRequest: TCRequestModel {
        /// 客户要查询的日志主题ID，每个客户都有对应的一个主题
        public let topicId: String
        
        /// 分页的偏移量，默认值为0
        public let offset: Int64?
        
        /// 分页单页限制数目，默认值为20，最大值100
        public let limit: Int64?
        
        public init (topicId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.topicId = topicId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeAccessExports返回参数结构体
    public struct DescribeAccessExportsResponse: TCResponseModel {
        /// 日志导出ID。
        public let totalCount: Int64
        
        /// 日志导出列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exports: [ExportAccessInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case exports = "Exports"
            case requestId = "RequestId"
        }
    }
    
    /// 获取访问日志导出列表
    ///
    /// 本接口用于获取访问日志导出列表
    @inlinable
    public func describeAccessExports(_ input: DescribeAccessExportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccessExportsResponse > {
        self.client.execute(action: "DescribeAccessExports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取访问日志导出列表
    ///
    /// 本接口用于获取访问日志导出列表
    @inlinable
    public func describeAccessExports(_ input: DescribeAccessExportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessExportsResponse {
        try await self.client.execute(action: "DescribeAccessExports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
