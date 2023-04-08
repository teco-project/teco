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

extension Omics {
    /// ImportTableFile请求参数结构体
    public struct ImportTableFileRequest: TCRequestModel {
        /// 表格关联的项目ID。
        public let projectId: String

        /// 表格名称，支持20个字符内的英文字符、数字和下划线。
        public let name: String

        /// 表格文件Cos对象路径。
        public let cosUri: String

        /// 表格文件中每列的数据类型，支持的类型包括：Int、String、File、Array[File]
        public let dataType: [String]

        /// 表格描述。
        public let description: String?

        public init(projectId: String, name: String, cosUri: String, dataType: [String], description: String? = nil) {
            self.projectId = projectId
            self.name = name
            self.cosUri = cosUri
            self.dataType = dataType
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case name = "Name"
            case cosUri = "CosUri"
            case dataType = "DataType"
            case description = "Description"
        }
    }

    /// ImportTableFile返回参数结构体
    public struct ImportTableFileResponse: TCResponseModel {
        /// 表格ID。
        public let tableId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableId = "TableId"
            case requestId = "RequestId"
        }
    }

    /// 导入表格文件
    ///
    /// 导入表格文件。
    @inlinable
    public func importTableFile(_ input: ImportTableFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportTableFileResponse> {
        self.client.execute(action: "ImportTableFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入表格文件
    ///
    /// 导入表格文件。
    @inlinable
    public func importTableFile(_ input: ImportTableFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportTableFileResponse {
        try await self.client.execute(action: "ImportTableFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入表格文件
    ///
    /// 导入表格文件。
    @inlinable
    public func importTableFile(projectId: String, name: String, cosUri: String, dataType: [String], description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportTableFileResponse> {
        self.importTableFile(.init(projectId: projectId, name: name, cosUri: cosUri, dataType: dataType, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 导入表格文件
    ///
    /// 导入表格文件。
    @inlinable
    public func importTableFile(projectId: String, name: String, cosUri: String, dataType: [String], description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportTableFileResponse {
        try await self.importTableFile(.init(projectId: projectId, name: name, cosUri: cosUri, dataType: dataType, description: description), region: region, logger: logger, on: eventLoop)
    }
}
