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

extension Tione {
    /// CreatePresignedNotebookInstanceUrl请求参数结构体
    public struct CreatePresignedNotebookInstanceUrlRequest: TCRequestModel {
        /// Notebook实例名称
        /// 规则：“^\[a-zA-Z0-9\](-\*\[a-zA-Z0-9\])\*$”
        public let notebookInstanceName: String

        /// session有效时间，秒，取值范围[1800, 43200]
        public let sessionExpirationDurationInSeconds: Int64?

        public init(notebookInstanceName: String, sessionExpirationDurationInSeconds: Int64? = nil) {
            self.notebookInstanceName = notebookInstanceName
            self.sessionExpirationDurationInSeconds = sessionExpirationDurationInSeconds
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case sessionExpirationDurationInSeconds = "SessionExpirationDurationInSeconds"
        }
    }

    /// CreatePresignedNotebookInstanceUrl返回参数结构体
    public struct CreatePresignedNotebookInstanceUrlResponse: TCResponseModel {
        /// 授权url
        public let authorizedUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authorizedUrl = "AuthorizedUrl"
            case requestId = "RequestId"
        }
    }

    /// 创建Notebook授权Url
    @inlinable
    public func createPresignedNotebookInstanceUrl(_ input: CreatePresignedNotebookInstanceUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePresignedNotebookInstanceUrlResponse> {
        self.client.execute(action: "CreatePresignedNotebookInstanceUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Notebook授权Url
    @inlinable
    public func createPresignedNotebookInstanceUrl(_ input: CreatePresignedNotebookInstanceUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePresignedNotebookInstanceUrlResponse {
        try await self.client.execute(action: "CreatePresignedNotebookInstanceUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Notebook授权Url
    @inlinable
    public func createPresignedNotebookInstanceUrl(notebookInstanceName: String, sessionExpirationDurationInSeconds: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePresignedNotebookInstanceUrlResponse> {
        self.createPresignedNotebookInstanceUrl(.init(notebookInstanceName: notebookInstanceName, sessionExpirationDurationInSeconds: sessionExpirationDurationInSeconds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Notebook授权Url
    @inlinable
    public func createPresignedNotebookInstanceUrl(notebookInstanceName: String, sessionExpirationDurationInSeconds: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePresignedNotebookInstanceUrlResponse {
        try await self.createPresignedNotebookInstanceUrl(.init(notebookInstanceName: notebookInstanceName, sessionExpirationDurationInSeconds: sessionExpirationDurationInSeconds), region: region, logger: logger, on: eventLoop)
    }
}
