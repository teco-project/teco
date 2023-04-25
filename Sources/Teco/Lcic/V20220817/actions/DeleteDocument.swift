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

extension Lcic {
    /// DeleteDocument请求参数结构体
    public struct DeleteDocumentRequest: TCRequestModel {
        /// 文档ID。
        public let documentId: String

        public init(documentId: String) {
            self.documentId = documentId
        }

        enum CodingKeys: String, CodingKey {
            case documentId = "DocumentId"
        }
    }

    /// DeleteDocument返回参数结构体
    public struct DeleteDocumentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除文档
    @inlinable @discardableResult
    public func deleteDocument(_ input: DeleteDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDocumentResponse> {
        self.client.execute(action: "DeleteDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除文档
    @inlinable @discardableResult
    public func deleteDocument(_ input: DeleteDocumentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDocumentResponse {
        try await self.client.execute(action: "DeleteDocument", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除文档
    @inlinable @discardableResult
    public func deleteDocument(documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDocumentResponse> {
        self.deleteDocument(.init(documentId: documentId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除文档
    @inlinable @discardableResult
    public func deleteDocument(documentId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDocumentResponse {
        try await self.deleteDocument(.init(documentId: documentId), region: region, logger: logger, on: eventLoop)
    }
}
