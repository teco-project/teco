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

import TecoCore

extension Tcaplusdb {
    /// VerifyIdlFiles请求参数结构体
    public struct VerifyIdlFilesRequest: TCRequestModel {
        /// 待创建表格的集群ID
        public let clusterId: String

        /// 待创建表格的表格组ID
        public let tableGroupId: String?

        /// 曾经上传过的IDL文件信息列表，与NewIdlFiles至少有一者
        public let existingIdlFiles: [IdlFileInfo]?

        /// 待上传的IDL文件信息列表，与ExistingIdlFiles至少有一者
        public let newIdlFiles: [IdlFileInfo]?

        public init(clusterId: String, tableGroupId: String? = nil, existingIdlFiles: [IdlFileInfo]? = nil, newIdlFiles: [IdlFileInfo]? = nil) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
            self.existingIdlFiles = existingIdlFiles
            self.newIdlFiles = newIdlFiles
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
            case existingIdlFiles = "ExistingIdlFiles"
            case newIdlFiles = "NewIdlFiles"
        }
    }

    /// VerifyIdlFiles返回参数结构体
    public struct VerifyIdlFilesResponse: TCResponseModel {
        /// 本次上传校验所有的IDL文件信息列表
        public let idlFiles: [IdlFileInfo]

        /// 读取IDL描述文件后解析出的合法表数量，不包含已经创建的表
        public let totalCount: UInt64

        /// 读取IDL描述文件后解析出的合法表列表，不包含已经创建的表
        public let tableInfos: [ParsedTableInfoNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case idlFiles = "IdlFiles"
            case totalCount = "TotalCount"
            case tableInfos = "TableInfos"
            case requestId = "RequestId"
        }
    }

    /// 上传并校验创建表格文件
    ///
    /// 上传并校验创建表格文件，返回校验合法的表格定义
    @inlinable
    public func verifyIdlFiles(_ input: VerifyIdlFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyIdlFilesResponse> {
        self.client.execute(action: "VerifyIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传并校验创建表格文件
    ///
    /// 上传并校验创建表格文件，返回校验合法的表格定义
    @inlinable
    public func verifyIdlFiles(_ input: VerifyIdlFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyIdlFilesResponse {
        try await self.client.execute(action: "VerifyIdlFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传并校验创建表格文件
    ///
    /// 上传并校验创建表格文件，返回校验合法的表格定义
    @inlinable
    public func verifyIdlFiles(clusterId: String, tableGroupId: String? = nil, existingIdlFiles: [IdlFileInfo]? = nil, newIdlFiles: [IdlFileInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyIdlFilesResponse> {
        self.verifyIdlFiles(.init(clusterId: clusterId, tableGroupId: tableGroupId, existingIdlFiles: existingIdlFiles, newIdlFiles: newIdlFiles), region: region, logger: logger, on: eventLoop)
    }

    /// 上传并校验创建表格文件
    ///
    /// 上传并校验创建表格文件，返回校验合法的表格定义
    @inlinable
    public func verifyIdlFiles(clusterId: String, tableGroupId: String? = nil, existingIdlFiles: [IdlFileInfo]? = nil, newIdlFiles: [IdlFileInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyIdlFilesResponse {
        try await self.verifyIdlFiles(.init(clusterId: clusterId, tableGroupId: tableGroupId, existingIdlFiles: existingIdlFiles, newIdlFiles: newIdlFiles), region: region, logger: logger, on: eventLoop)
    }
}
