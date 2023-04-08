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

import Logging
import NIOCore
import TecoCore

extension Bma {
    /// CreateCRRightFile请求参数结构体
    public struct CreateCRRightFileRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 权属文件列表
        public let fileList: [File]

        public init(workId: Int64, fileList: [File]) {
            self.workId = workId
            self.fileList = fileList
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case fileList = "FileList"
        }
    }

    /// CreateCRRightFile返回参数结构体
    public struct CreateCRRightFileResponse: TCResponseModel {
        /// 权属文件Id，按提交顺序排序
        public let fileIds: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case requestId = "RequestId"
        }
    }

    /// 权属文件添加
    @inlinable
    public func createCRRightFile(_ input: CreateCRRightFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRRightFileResponse> {
        self.client.execute(action: "CreateCRRightFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 权属文件添加
    @inlinable
    public func createCRRightFile(_ input: CreateCRRightFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRRightFileResponse {
        try await self.client.execute(action: "CreateCRRightFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 权属文件添加
    @inlinable
    public func createCRRightFile(workId: Int64, fileList: [File], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRRightFileResponse> {
        self.createCRRightFile(.init(workId: workId, fileList: fileList), region: region, logger: logger, on: eventLoop)
    }

    /// 权属文件添加
    @inlinable
    public func createCRRightFile(workId: Int64, fileList: [File], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRRightFileResponse {
        try await self.createCRRightFile(.init(workId: workId, fileList: fileList), region: region, logger: logger, on: eventLoop)
    }
}
