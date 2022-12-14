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

extension Ciam {
    /// CreateFileExportUserJob请求参数结构体
    public struct CreateFileExportUserJobRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String

        /// 导出的数据类型
        /// <li> **NDJSON** </li>  New-line Delimited JSON
        /// <li> **CSV** </li>  Comma-Separated Values
        public let format: String?

        /// Key可选值为condition、userGroupId
        /// <li> **condition** </li>	Values = 查询条件，用户ID，用户名称，手机或邮箱
        /// <li> **userGroupId** </li>	Values = 用户组ID
        public let filters: [Filter]?

        /// 导出用户包含的属性和映射名称，为空时包含所有的属性
        public let exportPropertyMaps: [ExportPropertyMap]?

        public init(userStoreId: String, format: String? = nil, filters: [Filter]? = nil, exportPropertyMaps: [ExportPropertyMap]? = nil) {
            self.userStoreId = userStoreId
            self.format = format
            self.filters = filters
            self.exportPropertyMaps = exportPropertyMaps
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case format = "Format"
            case filters = "Filters"
            case exportPropertyMaps = "ExportPropertyMaps"
        }
    }

    /// CreateFileExportUserJob返回参数结构体
    public struct CreateFileExportUserJobResponse: TCResponseModel {
        /// 数据流任务
        public let job: Job

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case requestId = "RequestId"
        }
    }

    /// 新建文件导出用户任务
    @inlinable
    public func createFileExportUserJob(_ input: CreateFileExportUserJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFileExportUserJobResponse > {
        self.client.execute(action: "CreateFileExportUserJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建文件导出用户任务
    @inlinable
    public func createFileExportUserJob(_ input: CreateFileExportUserJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileExportUserJobResponse {
        try await self.client.execute(action: "CreateFileExportUserJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建文件导出用户任务
    @inlinable
    public func createFileExportUserJob(userStoreId: String, format: String? = nil, filters: [Filter]? = nil, exportPropertyMaps: [ExportPropertyMap]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFileExportUserJobResponse > {
        self.createFileExportUserJob(CreateFileExportUserJobRequest(userStoreId: userStoreId, format: format, filters: filters, exportPropertyMaps: exportPropertyMaps), logger: logger, on: eventLoop)
    }

    /// 新建文件导出用户任务
    @inlinable
    public func createFileExportUserJob(userStoreId: String, format: String? = nil, filters: [Filter]? = nil, exportPropertyMaps: [ExportPropertyMap]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileExportUserJobResponse {
        try await self.createFileExportUserJob(CreateFileExportUserJobRequest(userStoreId: userStoreId, format: format, filters: filters, exportPropertyMaps: exportPropertyMaps), logger: logger, on: eventLoop)
    }
}
