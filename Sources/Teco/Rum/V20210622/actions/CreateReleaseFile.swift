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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Rum {
    /// CreateReleaseFile请求参数结构体
    public struct CreateReleaseFileRequest: TCRequestModel {
        /// 项目 id
        public let projectID: Int64

        /// 文件信息列表
        public let files: [ReleaseFile]

        public init(projectID: Int64, files: [ReleaseFile]) {
            self.projectID = projectID
            self.files = files
        }

        enum CodingKeys: String, CodingKey {
            case projectID = "ProjectID"
            case files = "Files"
        }
    }

    /// CreateReleaseFile返回参数结构体
    public struct CreateReleaseFileResponse: TCResponseModel {
        /// 调用结果
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 创建发布文件记录
    ///
    /// 创建对应项目的文件记录
    @inlinable
    public func createReleaseFile(_ input: CreateReleaseFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReleaseFileResponse> {
        self.client.execute(action: "CreateReleaseFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建发布文件记录
    ///
    /// 创建对应项目的文件记录
    @inlinable
    public func createReleaseFile(_ input: CreateReleaseFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReleaseFileResponse {
        try await self.client.execute(action: "CreateReleaseFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建发布文件记录
    ///
    /// 创建对应项目的文件记录
    @inlinable
    public func createReleaseFile(projectID: Int64, files: [ReleaseFile], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReleaseFileResponse> {
        self.createReleaseFile(.init(projectID: projectID, files: files), region: region, logger: logger, on: eventLoop)
    }

    /// 创建发布文件记录
    ///
    /// 创建对应项目的文件记录
    @inlinable
    public func createReleaseFile(projectID: Int64, files: [ReleaseFile], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReleaseFileResponse {
        try await self.createReleaseFile(.init(projectID: projectID, files: files), region: region, logger: logger, on: eventLoop)
    }
}
