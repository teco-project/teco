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

extension Cwp {
    /// ExportBaselineList请求参数结构体
    public struct ExportBaselineListRequest: TCRequestModel {
        /// 过滤条件：
        /// <li>StrategyId- Uint64 - 基线策略id</li>
        /// <li>Status - Uint64 - 事件状态：0-未通过，1-忽略，3-通过，5-检测中</li>
        /// <li>BaselineName  - String - 基线名称</li>
        /// <li>AliasName- String - 服务器名称/服务器ip</li>
        /// <li>Uuid- String - 主机uuid</li>
        public let filters: [Filters]?
        
        /// 已废弃
        public let ifDetail: UInt64?
        
        public init (filters: [Filters]? = nil, ifDetail: UInt64? = nil) {
            self.filters = filters
            self.ifDetail = ifDetail
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case ifDetail = "IfDetail"
        }
    }
    
    /// ExportBaselineList返回参数结构体
    public struct ExportBaselineListResponse: TCResponseModel {
        /// 导出文件下载地址（已弃用）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?
        
        /// 导出文件Id 可通过ExportTasks接口下载
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 导出基线列表
    @inlinable
    public func exportBaselineList(_ input: ExportBaselineListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportBaselineListResponse > {
        self.client.execute(action: "ExportBaselineList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 导出基线列表
    @inlinable
    public func exportBaselineList(_ input: ExportBaselineListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineListResponse {
        try await self.client.execute(action: "ExportBaselineList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
