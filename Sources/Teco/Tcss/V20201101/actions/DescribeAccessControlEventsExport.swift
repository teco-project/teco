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

extension Tcss {
    /// 运行时访问控制事件列表导出
    ///
    /// 查询运行时访问控制事件列表导出
    @inlinable
    public func describeAccessControlEventsExport(_ input: DescribeAccessControlEventsExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccessControlEventsExportResponse > {
        self.client.execute(action: "DescribeAccessControlEventsExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时访问控制事件列表导出
    ///
    /// 查询运行时访问控制事件列表导出
    @inlinable
    public func describeAccessControlEventsExport(_ input: DescribeAccessControlEventsExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessControlEventsExportResponse {
        try await self.client.execute(action: "DescribeAccessControlEventsExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAccessControlEventsExport请求参数结构体
    public struct DescribeAccessControlEventsExportRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?
        
        /// 升序降序,asc desc
        public let order: String?
        
        /// 排序字段
        public let by: String?
        
        /// 导出字段
        public let exportField: [String]?
        
        public init (limit: UInt64?, offset: UInt64?, filters: [RunTimeFilters]?, order: String?, by: String?, exportField: [String]?) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
            self.exportField = exportField
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
            case exportField = "ExportField"
        }
    }
    
    /// DescribeAccessControlEventsExport返回参数结构体
    public struct DescribeAccessControlEventsExportResponse: TCResponseModel {
        /// execle下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?
        
        /// 任务id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }
}
