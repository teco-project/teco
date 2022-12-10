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
    /// 运行时异常进程列表导出
    ///
    /// 查询运行时异常进程事件列表信息导出
    @inlinable
    public func describeAbnormalProcessEventsExport(_ input: DescribeAbnormalProcessEventsExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAbnormalProcessEventsExportResponse > {
        self.client.execute(action: "DescribeAbnormalProcessEventsExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时异常进程列表导出
    ///
    /// 查询运行时异常进程事件列表信息导出
    @inlinable
    public func describeAbnormalProcessEventsExport(_ input: DescribeAbnormalProcessEventsExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAbnormalProcessEventsExportResponse {
        try await self.client.execute(action: "DescribeAbnormalProcessEventsExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAbnormalProcessEventsExport请求参数结构体
    public struct DescribeAbnormalProcessEventsExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]
        
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
        
        public init (exportField: [String], limit: UInt64?, offset: UInt64?, filters: [RunTimeFilters]?, order: String?, by: String?) {
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeAbnormalProcessEventsExport返回参数结构体
    public struct DescribeAbnormalProcessEventsExportResponse: TCResponseModel {
        /// execle下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }
}
