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

extension Cwp {
    /// 导出篡改事件列表
    ///
    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(_ input: ExportWebPageEventListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportWebPageEventListResponse > {
        self.client.execute(action: "ExportWebPageEventList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 导出篡改事件列表
    ///
    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(_ input: ExportWebPageEventListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportWebPageEventListResponse {
        try await self.client.execute(action: "ExportWebPageEventList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ExportWebPageEventList请求参数结构体
    public struct ExportWebPageEventListRequest: TCRequestModel {
        /// 过滤条件
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>EventType - String - 是否必填：否 - 事件类型</li>
        /// <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        public let filters: [AssetFilters]?
        
        /// 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        public let by: String?
        
        /// 排序方式，0降序，1升序，默认为0
        public let order: UInt64?
        
        public init (filters: [AssetFilters]?, by: String?, order: UInt64?) {
            self.filters = filters
            self.by = by
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }
    
    /// ExportWebPageEventList返回参数结构体
    public struct ExportWebPageEventListResponse: TCResponseModel {
        /// 任务id 可通过 ExportTasks接口下载
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}