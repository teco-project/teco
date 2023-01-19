//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ExportLicenseDetail请求参数结构体
    public struct ExportLicenseDetailRequest: TCRequestModel {
        /// 多个条件筛选时 LicenseStatus,DeadlineStatus,ResourceId,Keywords 取交集
        /// <li> LicenseType  授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月</li>
        /// <li>ResourceId 资源ID</li>
        public let filters: [Filters]?

        /// 是否导出全部授权详情
        public let isHistory: Bool?

        /// 标签筛选,平台标签能力,这里传入 标签键,标签值作为一个对象
        public let tags: [Tags]?

        /// 导出月份, 该参数仅在IsHistory 时可选.
        public let exportMonth: String?

        public init(filters: [Filters]? = nil, isHistory: Bool? = nil, tags: [Tags]? = nil, exportMonth: String? = nil) {
            self.filters = filters
            self.isHistory = isHistory
            self.tags = tags
            self.exportMonth = exportMonth
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case isHistory = "IsHistory"
            case tags = "Tags"
            case exportMonth = "ExportMonth"
        }
    }

    /// ExportLicenseDetail返回参数结构体
    public struct ExportLicenseDetailResponse: TCResponseModel {
        /// 下载地址,该字段废弃
        public let downloadUrl: String

        /// 任务ID,可通过任务ID去查下载任务
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出授权详情
    ///
    /// 导出授权列表对应的绑定信息
    @inlinable
    public func exportLicenseDetail(_ input: ExportLicenseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportLicenseDetailResponse> {
        self.client.execute(action: "ExportLicenseDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出授权详情
    ///
    /// 导出授权列表对应的绑定信息
    @inlinable
    public func exportLicenseDetail(_ input: ExportLicenseDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportLicenseDetailResponse {
        try await self.client.execute(action: "ExportLicenseDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出授权详情
    ///
    /// 导出授权列表对应的绑定信息
    @inlinable
    public func exportLicenseDetail(filters: [Filters]? = nil, isHistory: Bool? = nil, tags: [Tags]? = nil, exportMonth: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportLicenseDetailResponse> {
        self.exportLicenseDetail(ExportLicenseDetailRequest(filters: filters, isHistory: isHistory, tags: tags, exportMonth: exportMonth), region: region, logger: logger, on: eventLoop)
    }

    /// 导出授权详情
    ///
    /// 导出授权列表对应的绑定信息
    @inlinable
    public func exportLicenseDetail(filters: [Filters]? = nil, isHistory: Bool? = nil, tags: [Tags]? = nil, exportMonth: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportLicenseDetailResponse {
        try await self.exportLicenseDetail(ExportLicenseDetailRequest(filters: filters, isHistory: isHistory, tags: tags, exportMonth: exportMonth), region: region, logger: logger, on: eventLoop)
    }
}
