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

extension Trp {
    /// 查询二维码列表
    ///
    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(_ input: DescribeTraceCodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTraceCodesResponse > {
        self.client.execute(action: "DescribeTraceCodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询二维码列表
    ///
    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(_ input: DescribeTraceCodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceCodesResponse {
        try await self.client.execute(action: "DescribeTraceCodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTraceCodes请求参数结构体
    public struct DescribeTraceCodesRequest: TCRequestModel {
        /// 搜索关键字 码标识，或者批次ID
        public let keyword: String?
        
        /// 条数
        public let pageNumber: UInt64?
        
        /// 页码
        public let pageSize: UInt64?
        
        /// 批次ID，弃用
        public let batchId: String?
        
        /// 企业ID
        public let corpId: UInt64?
        
        public init (keyword: String?, pageNumber: UInt64?, pageSize: UInt64?, batchId: String?, corpId: UInt64?) {
            self.keyword = keyword
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.batchId = batchId
            self.corpId = corpId
        }
        
        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case batchId = "BatchId"
            case corpId = "CorpId"
        }
    }
    
    /// DescribeTraceCodes返回参数结构体
    public struct DescribeTraceCodesResponse: TCResponseModel {
        /// 标识列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceCodes: [TraceCode]?
        
        /// 条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case traceCodes = "TraceCodes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}