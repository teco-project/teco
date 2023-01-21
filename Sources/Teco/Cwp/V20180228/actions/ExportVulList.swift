//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
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
    /// ExportVulList请求参数结构体
    public struct ExportVulListRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>VulCategory - int - 是否必填：否 - 漏洞分类筛选1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞</li>
        /// <li>IfEmergency - String - 是否必填：否 - 是否为应急漏洞，查询应急漏洞传:yes</li>
        /// <li>Status - String - 是否必填：是 - 漏洞状态筛选，0: 待处理 1:忽略  3:已修复  5:检测中， 控制台仅处理0,1,3,5四种状态</li>
        /// <li>Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示</li>
        /// <li>VulName- String - 是否必填：否 - 漏洞名称搜索</li>
        public let filters: [Filter]?

        /// 是否导出详情,1是 0不是
        public let ifDetail: UInt64?

        public init(filters: [Filter]? = nil, ifDetail: UInt64? = nil) {
            self.filters = filters
            self.ifDetail = ifDetail
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case ifDetail = "IfDetail"
        }
    }

    /// ExportVulList返回参数结构体
    public struct ExportVulListResponse: TCResponseModel {
        /// 导出的文件下载url（已弃用！）
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

    /// 漏洞管理-导出漏洞列表
    @inlinable
    public func exportVulList(_ input: ExportVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulListResponse> {
        self.client.execute(action: "ExportVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞管理-导出漏洞列表
    @inlinable
    public func exportVulList(_ input: ExportVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulListResponse {
        try await self.client.execute(action: "ExportVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞管理-导出漏洞列表
    @inlinable
    public func exportVulList(filters: [Filter]? = nil, ifDetail: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulListResponse> {
        self.exportVulList(ExportVulListRequest(filters: filters, ifDetail: ifDetail), region: region, logger: logger, on: eventLoop)
    }

    /// 漏洞管理-导出漏洞列表
    @inlinable
    public func exportVulList(filters: [Filter]? = nil, ifDetail: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulListResponse {
        try await self.exportVulList(ExportVulListRequest(filters: filters, ifDetail: ifDetail), region: region, logger: logger, on: eventLoop)
    }
}
