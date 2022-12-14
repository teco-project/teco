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
    /// ExportVirusList请求参数结构体
    public struct ExportVirusListRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>FileName - String - 是否必填：否 - 文件名称</li>
        /// <li>FilePath - String - 是否必填：否 - 文件路径</li>
        /// <li>VirusName - String - 是否必填：否 - 病毒名称</li>
        /// <li>ContainerName- String - 是否必填：是 - 容器名称</li>
        /// <li>ContainerId- string - 是否必填：否 - 容器id</li>
        /// <li>ImageName- string - 是否必填：否 - 镜像名称</li>
        /// <li>ImageId- string - 是否必填：否 - 镜像id</li>
        /// <li>IsRealTime- int - 是否必填：否 - 过滤是否实时监控数据</li>
        /// <li>TaskId- string - 是否必填：否 - 任务ID</li>
        /// <li>TimeRange - string -是否必填: 否 - 时间范围筛选 ["2022-03-31 16:55:00", "2022-03-31 17:00:00"]</li>
        /// <li>ContainerNetStatus - String -是否必填: 否 -  容器网络状态筛选 NORMAL ISOLATED ISOLATING RESTORING RESTORE_FAILED</li>
        /// <li>ContainerStatus - string -是否必填: 否 - 容器状态 RUNNING PAUSED STOPPED CREATED DESTROYED RESTARTING REMOVING</li>
        /// <li>AutoIsolateMode - string -是否必填: 否 - 隔离方式 MANUAL AUTO</li>
        /// <li>MD5 - string -是否必填: 否 - md5 </li>
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        /// 导出字段
        public let exportField: [String]?

        public init(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil) {
            self.filters = filters
            self.order = order
            self.by = by
            self.exportField = exportField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case order = "Order"
            case by = "By"
            case exportField = "ExportField"
        }
    }

    /// ExportVirusList返回参数结构体
    public struct ExportVirusListResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 运行时文件查杀事件列表导出
    @inlinable
    public func exportVirusList(_ input: ExportVirusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportVirusListResponse > {
        self.client.execute(action: "ExportVirusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时文件查杀事件列表导出
    @inlinable
    public func exportVirusList(_ input: ExportVirusListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVirusListResponse {
        try await self.client.execute(action: "ExportVirusList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时文件查杀事件列表导出
    @inlinable
    public func exportVirusList(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportVirusListResponse > {
        self.exportVirusList(ExportVirusListRequest(filters: filters, order: order, by: by, exportField: exportField), logger: logger, on: eventLoop)
    }

    /// 运行时文件查杀事件列表导出
    @inlinable
    public func exportVirusList(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVirusListResponse {
        try await self.exportVirusList(ExportVirusListRequest(filters: filters, order: order, by: by, exportField: exportField), logger: logger, on: eventLoop)
    }
}
